from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect, HttpResponse, JsonResponse
from django.core.mail import send_mail
from .models import *
from django.template.loader import get_template
import random
import uuid
from yookassa import Configuration, Payment
from django.views.decorators.csrf import csrf_exempt
import json

Configuration.account_id = 860268
Configuration.secret_key = "test_SgoBIO7txIDy-CU-jHhgyo5CTmZqjeijgqM_81xAyQU"

def index(request):
	ContactUsForm(request)
	data = {
		'BasketPrice': BasetPrice(request),
		'CategoryMenuList': CategoryMenuList(),
		'Popular': Popular(),
		'Reviews': ReviewsList()
	}
	return render(request, 'page/index.html', data)

def catalog(request):
	category = Category.objects.all()
	data = {
		'category': category,
		'CategoryMenuList': CategoryMenuList(),
		'BasketPrice': BasetPrice(request)
	}
	return render(request, 'page/catalog.html', data)

def ProductCatalog(request, id):
	
	category_id = id
	AddToCard(request)
				
	CategoryName = Category.objects.get(id=id)
	flowers = Flowers.objects.filter(Category=CategoryName)
	
	data = {
		'CategoryName': CategoryName,
		'Flowers': flowers,
		'BasketPrice': BasetPrice(request),
		'CategoryMenuList': CategoryMenuList(),
		'Product_in_basket': Product_in_basket(request)
	}
	return render(request, 'page/productcatalog.html',data)

def Product(request, id):
	AddToCard(request)
	Product = Flowers.objects.get(id=id)
	data = {
		'Product': Product,
		'CategoryMenuList': CategoryMenuList(),
		'BasketPrice': BasetPrice(request),
		'Product_in_basket': Product_in_basket(request),
		'Popular': Popular()
	}
	return render(request, 'page/product.html', data)

def BasketPage(request):
	#Продукты корзины
	BasketProduct = Basket.objects.filter(session_key=session_key(request)).order_by('id')#.product_id
	Product = []
	for product in BasketProduct:
	
		AboutProduct = Flowers.objects.get(id=int(product.product_id))
		Product.append(
					dict(
						name=AboutProduct.Name,
						link="/product/"+str(AboutProduct.id),
						image=AboutProduct.Image.url,
						product_id=product.product_id,
						product_value=product.product_value,
						price=AboutProduct.Price,
						full_price=AboutProduct.Price * product.product_value,
					))


	if request.method == "GET":
		if 'code' in request.GET:
			GetCode = request.GET['code']
			data = {
				'Code': GetCode,
				'CategoryMenuList': CategoryMenuList(),
				'BasketPrice': BasetPrice(request)
			}
			return render(request, 'page/thankspage.html', data)


	#Кнопки
	if request.method == "POST":
		if request.POST['button']:
			button = request.POST['button']
			if button == "+" or button == "-" or button == "✖":

				product_id = request.POST['product_id']

				basket_product_value = Basket.objects.filter(session_key=session_key(request)).get(product_id=product_id)
				if button == "+":
					Basket.objects.filter(session_key=session_key(request)).filter(product_id=product_id).update(product_value = int(basket_product_value.product_value)+1)
				elif button == "-":
					Basket.objects.filter(session_key=session_key(request)).filter(product_id=product_id).update(product_value = int(basket_product_value.product_value)-1)
					basket_product_value = Basket.objects.filter(session_key=session_key(request)).get(product_id=product_id)
					if basket_product_value.product_value < 1:
						Basket.objects.filter(session_key=session_key(request)).filter(product_id=product_id).delete()
				elif button == "✖":
					Basket.objects.filter(session_key=session_key(request)).filter(product_id=product_id).delete()
				return HttpResponseRedirect("/basket")

			elif button == "Оформить":
				ProductsInBusket = Basket.objects.filter(session_key=session_key(request))
				if len(ProductsInBusket) > 0:
					Name = request.POST['Name']
					Phone = request.POST['Phone']
					Email = request.POST['Email']
					CodeNumber = Code(request)
					return_url = "https://floplace.ru/basket?code="+str(CodeNumber)

					if request.POST['payment'] == "2":
						payment = Payment.create({
							"amount": {
								"value": BasetPrice(request),
								"currency": "RUB"
							},
							"confirmation": {
								"type": "redirect",
								"return_url": return_url
							},
							"capture": True,
							"description": CodeNumber
						}, uuid.uuid4())
						
						OnlinePaymentTempDB = OnlinePaymentTemp(
							Code=CodeNumber,
							Session_key=session_key(request),
							Status="Не оплачено",
							Name=Name,
							Phone=Phone,
							Email=Email,
							FullPrice=BasetPrice(request)
							)
						OnlinePaymentTempDB.save()

						return HttpResponseRedirect(payment.confirmation.confirmation_url)


					elif request.POST['payment'] == "1":
	
						Address = ""
						Delivery = ""
						if request.POST['Delivery_type'] == "1":
							Delivery = "Самовывоз"
						elif request.POST['Delivery_type'] == "2":
							Delivery = "Доставка"
						if request.POST['Delivery_type'] == "2":
							Street = "-"
							House = "-"
							Door = "-"
							Comment = "-"
							Entrance = "-"
							Floor = "-"
							if request.POST['Street']:
								Street = "Ул. "+str(request.POST['Street'])
							if request.POST['House']:
								House = "Дом "+str(request.POST['House'])
							if request.POST['Door']:
								Door = "Кв. "+str(request.POST['Door'])
							if request.POST['Comment']:
								Comment = "Сообщение: "+str(request.POST['Comment'])
							if request.POST['Entrance']:
								Entrance = "Под. "+str(request.POST['Entrance'])
							if request.POST['Floor']:
								Floor = "Эт. "+str(request.POST['Floor'])
							Address = Street +" "+House+", "+Door+", "+Entrance+", "+Floor+", "+Comment
						Paymant = ""
						if request.POST['payment'] == "1":
							Paymant = "Наличный расчет"
						elif request.POST['payment'] == "2":
							Paymant = "Перевод"


						db_Order = ""
						number = 1
						for product in Product:
							db_Order = str(db_Order) + str(number) + ") " + str(product['name']) + " | Кол-во: " + str(product['product_value']) + " | За один: " + str(product['price']) + " | Цена: " + str(product['full_price']) + "\n"
							number = number + 1
						db_Order

						orderdb = Order(
								Code=CodeNumber,
								Name=Name,
								Phone=Phone,
								Email=Email,
								Order=db_Order,
								Delivery=Delivery,
								Address=Address,
								Paymant=Paymant,
								Price=BasetPrice(request),
								Status="Обрабатывается"
								)

						orderdb.save()
						Basket.objects.filter(session_key=session_key(request)).delete()

						'''
						mail_to_admin = send_mail(
							'FloPlace | Поступление заказа | '+str(Name),
							'Имя: '+str(Name)+'\nТелефон: '+str(Phone)+'\nПочта: '+str(Email)+'\nПолучение товра: '+str(Delivery)+'\nАдрес: '+str(Address)+'\nЗаказ: \n'+str(db_Order),
							'supvportk@gmail.com',
							['supvportk@gmail.com'],
							fail_silently=False,
						)
						mail = send_mail(
							'FloPlace | Информация по заказу',
							'Код вашего заказа: '+str(CodeNumber)+'\nВы можете узнать состояние вашего заказа, написав нам в инстаграм https://instagram.com/floplace_spb или по номеру +7(924) 170-10-00\n\nСпособ доставки: '+Delivery,
							'supvportk@gmail.com',
							[str(Email)],
							fail_silently=False,
						)
						'''

				data = {
					'Code': CodeNumber,
					'CategoryMenuList': CategoryMenuList(),
					'BasketPrice': BasetPrice(request)
				}
				return render(request, 'page/thankspage.html', data)
		

	data = {
		'Product': Product,
		'CategoryMenuList': CategoryMenuList(),
		'BasketPrice': BasetPrice(request)
	}
	return render(request, 'page/basket.html', data)


def Contacts(request):
	ContactUsForm(request)
	StaffList = Staff.objects.all()
	data = {
		'StaffList': StaffList,
		'CategoryMenuList': CategoryMenuList(),
		'BasketPrice': BasetPrice(request)
	}
	return render(request, 'page/contacts.html', data) 


def PaymentPage(request):
	data = {
		'CategoryMenuList': CategoryMenuList(),
		'CategoryMenuList': CategoryMenuList(),
		'BasketPrice': BasetPrice(request)
	}
	return render(request, 'page/payment.html', data) 

@csrf_exempt
def YookassaPayment(request):
	print("\n\n\n")
	yookassa_json = json.loads(request.body)
	payment_id = yookassa_json['object']['id']

	if yookassa_json['event'] == "payment.waiting_for_capture":
		Payment.capture(payment_id)
	if yookassa_json['event'] == "payment.canceled":
		Code = yookassa_json['object']['description']
		OnlinePaymentTemp.objects.get(Code=Code).delete()
	if yookassa_json['event'] == "payment.succeeded":
		Code = yookassa_json['object']['description']
		OnlinePaymentTemp.objects.filter(Code=Code).update(Status="Оплачено")
		onlinepaymenttemp = OnlinePaymentTemp.objects.get(Code=Code)
		
		session_key = onlinepaymenttemp.Session_key
		Name = onlinepaymenttemp.Name
		Phone = onlinepaymenttemp.Phone
		Email = onlinepaymenttemp.Email
		Price = onlinepaymenttemp.FullPrice

		Delivery = "Самовывоз"
		Paymant = "Перевод"
		Address = ""
		db_Order = ""
		number = 1


		BasketProduct = Basket.objects.filter(session_key=session_key).order_by('id')#.product_id
		Product = []
		for product in BasketProduct:
		
			AboutProduct = Flowers.objects.get(id=int(product.product_id))
			Product.append(
						dict(
							name=AboutProduct.Name,
							link="/product/"+str(AboutProduct.id),
							image=AboutProduct.Image.url,
							product_id=product.product_id,
							product_value=product.product_value,
							price=AboutProduct.Price,
							full_price=AboutProduct.Price * product.product_value,
						))

		for product in Product:
			db_Order = str(db_Order) + str(number) + ") " + str(product['name']) + " | Кол-во: " + str(product['product_value']) + " | За один: " + str(product['price']) + " | Цена: " + str(product['full_price']) + "\n"
			number = number + 1
		db_Order

		orderdb = Order(
				Code=Code, 	
				Name=Name, 
				Phone=Phone, 
				Email=Email, 
				Order=db_Order, 
				Delivery=Delivery, 
				Address=Address, 
				Paymant=Paymant, 
				Price=Price, 
				Status="Оплачен" 
				)

		orderdb.save()
		Basket.objects.filter(session_key=session_key).delete()

		'''
		mail_to_admin = send_mail(
			'FloPlace | Поступление заказа | '+str(Name),
			'Имя: '+str(Name)+'\nТелефон: '+str(Phone)+'\nПочта: '+str(Email)+'\nПолучение товра: '+str(Delivery)+'\nАдрес: '+str(Address)+'\nЗаказ: \n'+str(db_Order),
			'supvportk@gmail.com',
			['supvportk@gmail.com'],
			fail_silently=False,
		)
		mail = send_mail(
			'FloPlace | Информация по заказу',
			'Код вашего заказа: '+str(Code)+'\nВы можете узнать состояние вашего заказа, написав нам в инстаграм https://instagram.com/floplace_spb или по номеру +7(924) 170-10-00\n\nСпособ доставки: '+Delivery,
			'supvportk@gmail.com',
			[str(Email)],
			fail_silently=False,
		)
		'''


	return render(request, 'page/yookassapayment.html') 


def UserAgreement(request):
	data = {
		'BasketPrice': BasetPrice(request),
		'CategoryMenuList': CategoryMenuList(),
	}
	return render(request, 'page/other/UserAgreement.html', data)






def session_key(request):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()
	return session_key;

def BasetPrice(request):
	basket = Basket.objects.filter(session_key=session_key(request))
	Price = 0
	for basket in basket:
		Price = (Flowers.objects.get(id=basket.product_id).Price * basket.product_value) + Price
	return Price

def Product_in_basket(request):
	product_in_basket = []
	basket = Basket.objects.filter(session_key=session_key(request))
	for product in basket:
		product_in_basket.append(int(product.product_id))
	return product_in_basket

def AddToCard(request):
	if request.method == "POST":
		if request.POST['button']:
			if request.POST['button'] == "Добавлено":
				return redirect("/basket")
			elif request.POST['button'] == "В корзину":
				ProductId = request.POST['id']
				AboutProduct = Flowers.objects.get(id=ProductId)
				product_in_basket = Basket.objects.filter(session_key=session_key(request)).filter(product_id=ProductId)
				if product_in_basket:
					return redirect("/basket")
				else:
					db = Basket(session_key = session_key(request), сategory_id = AboutProduct.Category.id, product_id = ProductId, product_value = 1)
					db.save()
					return redirect("/catalog/"+str(ProductId))


def Popular():
	PopularProduct = Flowers.objects.filter(Additionally="Популярно")
	PopularList = []
	if len(PopularProduct) > 0:
		if len(PopularProduct) > 3 :
			while len(PopularList) < 3:
				Choice = random.choice(PopularProduct)
				if not Choice in PopularList:
					PopularList.append(Choice)
		elif len(PopularProduct) <= 3:
			for PopularProduct_el in PopularProduct:
				PopularList.append(PopularProduct_el)

	return PopularList

def Code(request):
	unique_code = 0
	while unique_code == 0:
		if request.POST['Delivery_type'] == "1":
			Delivery_code_word = "P"
		elif request.POST['Delivery_type'] == "2":
			Delivery_code_word = "D"
		else:
			Delivery_code_word = "ERROR"
		code = [Delivery_code_word]
		
		for i in range(10): 
			code.append(str(random.randint(0,9)))
		order_number = "".join(code)

		if not Order.objects.filter(Code=order_number):
			unique_code = 1

	return order_number


def ReviewsList():
	review = Reviews.objects.all()
	reviewlist = []
	if len(review) > 0:
		if len(review) > 6:
			while len(reviewlist) < 6:
				Choice = random.choice(review)
				if not Choice in reviewlist:
					reviewlist.append(Choice)
		elif len(review) <= 6:
			for review_el in review:
				reviewlist.append(review_el)
	return reviewlist


def CategoryMenuList():
	CategoryMenu = Category.objects.filter(ShowInMenu="Отображать")[:6]
	return CategoryMenu

def ContactUsForm(request):
	if request.method == "POST":
		if request.POST['button']:
			if request.POST['button'] == "Отправить":
				db = ContactUs(
					Name=request.POST['Name'],
					Phone=request.POST['Phone'],
					Email=request.POST['Email'],
					Message=request.POST['Additionally']
				)
				db.save()
				return redirect("/index")