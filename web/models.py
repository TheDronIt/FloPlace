from django.db import models

class Category(models.Model):
	class Meta:
		verbose_name = 'Категории'
		verbose_name_plural = 'Категории'
	Name = models.CharField(verbose_name="Название", max_length=50)
	Image = models.ImageField(verbose_name="Изображение", upload_to='category/')

	def __str__(self):
		return str(self.Name)


class Flowers(models.Model):
	class Meta:
		verbose_name = 'Цветы'
		verbose_name_plural = 'Цветы'

	Additionally_list = [
		("Популярно", "Популярно")
	]
	
	Name = models.CharField(verbose_name="Название", max_length=50)
	Image = models.ImageField(verbose_name="Изображение", upload_to='flowers/')
	Category = models.ForeignKey(Category, on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Категория")
	Components = models.TextField(blank=True, verbose_name="Состав")
	BuildTime = models.CharField(verbose_name="Время сборки", max_length=50)
	About = models.TextField(blank=True, verbose_name="Описание")
	Additionally =  models.CharField(max_length=50, choices=Additionally_list, blank=True, verbose_name='Дополнительно')
	Price = models.IntegerField(verbose_name="Цена")

	def __str__(self):
		return str(self.Name)


class Basket(models.Model):
	class Meta:
		verbose_name = 'Корзина пользователя (системное)'
		verbose_name_plural = 'Корзина пользователя (системное)'

	session_key = models.CharField(max_length=120)
	сategory_id = models.CharField(max_length=120)
	product_id = models.CharField(max_length=120)
	product_value = models.IntegerField()

	def __str__(self):
		return str(self.id)


class Order(models.Model):
	class Meta:
		verbose_name = 'Заказы'
		verbose_name_plural = 'Заказы'

	Status_list = [
		("Обрабатывается", "Обрабатывается"),
		("Доставляется", "Доставляется"),
		("Готово к выдаче", "Готово к выдаче"),
		("Выдано", "Выдано")
	]
	Delivery_list = [
		("Самовывоз", "Самовывоз"),
		("Доставка", "Доставка")
	]
	Paymant_list = [
		("Наличный расчет", "Наличный расчет"),
		("Перевод", "Перевод")
	]
	Code = models.CharField(max_length=120, verbose_name='Номер заказа')
	Name = models.CharField(max_length=120, verbose_name='Имя')
	Phone = models.CharField(max_length=120, verbose_name='Номер телефона')
	Email = models.CharField(max_length=120, verbose_name='Почта')
	Order = models.TextField(verbose_name='Заказ')
	Delivery = models.CharField(max_length=50, choices=Delivery_list, verbose_name='Тип доставки')
	Address = models.CharField(max_length=120, verbose_name='Адрес')
	Paymant = models.CharField(max_length=50, choices=Paymant_list, verbose_name='Оплата')
	Price = models.IntegerField(verbose_name='Итоговая цена')
	Status = models.CharField(max_length=50, choices=Status_list, verbose_name='Статус заказа')

	def __str__(self):
		return str(self.Code)+" | "+str(self.Status)


class Reviews(models.Model):
	class Meta:
		verbose_name = 'Отзывы'
		verbose_name_plural = 'Отзывы'
	
	Image = models.ImageField(verbose_name="Изображение", upload_to='reviews/')

	def __str__(self):
		return str(self.id)
