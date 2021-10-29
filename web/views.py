from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect, HttpResponse, JsonResponse
from .models import *
from django.template.loader import get_template
import random

def index(request):
	data = {
		'BasketPrice': BasetPrice(request),
		'Popular': Popular(),
		'Reviews': ReviewsList()
	}
	return render(request, 'page/index.html', data)

def catalog(request):
	category = Category.objects.all()
	data = {
		'category': category,
		'BasketPrice': BasetPrice(request)
	}
	return render(request, 'page/catalog.html', data)

def ProductCatalog(request, id):
	product_id = id
	AddToCard(request, product_id)
				
	CategoryName = Category.objects.get(id=id)
	flowers = Flowers.objects.filter(Category=CategoryName)

	data = {
		'CategoryName': CategoryName,
		'Flowers': flowers,
		'BasketPrice': BasetPrice(request),
		'Product_in_basket': Product_in_basket(request)
	}
	return render(request, 'page/productcatalog.html',data)

def Product(request, id):
	AddToCard(request, id)
	Product = Flowers.objects.get(id=id)
	data = {
		'Product': Product,
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
							Street = request.POST['Street']
						if request.POST['House']:
							House = request.POST['House']
						if request.POST['Door']:
							Door = request.POST['Door']
						if request.POST['Comment']:
							Comment = request.POST['Comment']
						if request.POST['Entrance']:
							Entrance = request.POST['Entrance']
						if request.POST['Floor']:
							Floor = request.POST['Floor']
						Address = Street +" "+House+", "+Door+", "+Comment+", "+Entrance+", "+Floor
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
					CodeNumber = Code(request)
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
					data = {
						'Code': CodeNumber,
						'BasketPrice': BasetPrice(request)
					}
					return render(request, 'page/thankspage.html', data)

	data = {
		'Product': Product,
		'BasketPrice': BasetPrice(request)
	}
	return render(request, 'page/basket.html', data)


def Contacts(request):
	data = {
		'BasketPrice': BasetPrice(request)
	}
	return render(request, 'page/contacts.html', data) 







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

def AddToCard(request, id):
	ProductId = id
	if request.method == "POST":
		if request.POST['button']:
			if request.POST['button'] == "Добавлено":
				print("11111")
				return redirect("/basket")
			elif request.POST['button'] == "В корзину":
				AboutProduct = Flowers.objects.get(id=ProductId)
				product_in_basket = Basket.objects.filter(session_key=session_key(request)).filter(product_id=ProductId)
				print(product_in_basket)
				if product_in_basket:
					return redirect("/basket")
				else:
					db = Basket(session_key = session_key(request), сategory_id = AboutProduct.Category.id, product_id = ProductId, product_value = 1)
					db.save()
					return redirect("/catalog/"+str(ProductId))

def Popular():
	PopularProduct = Flowers.objects.filter(Additionally="Популярно")
	PopularList = []
	
	while len(PopularList) < 3:
		Choice = random.choice(PopularProduct)
		if not Choice in PopularList:
			PopularList.append(Choice)

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
	review = Reviews.objects.all()[:6]
	reviewlist = []

	while len(reviewlist) < 6:
		Choice = random.choice(review)
		if not Choice in reviewlist:
			reviewlist.append(Choice)

	return reviewlist