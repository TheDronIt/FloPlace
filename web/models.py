from django.db import models

class Category(models.Model):
	class Meta:
		verbose_name = 'Категории'
		verbose_name_plural = 'Категории'
	Name = models.CharField(verbose_name="Название", max_length=50)
	Image = models.ImageField(verbose_name="Постер", upload_to='category/')

	def __str__(self):
		return str(self.Name)


class Flowers(models.Model):
	class Meta:
		verbose_name = 'Цветы'
		verbose_name_plural = 'Цветы'

	Name = models.CharField(verbose_name="Название", max_length=50)
	Image = models.ImageField(verbose_name="Постер", upload_to='flowers/')
	Category = models.ForeignKey(Category, on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Категория")
	Components = models.TextField(blank=True, verbose_name="Состав")
	BuildTime = models.CharField(verbose_name="Время сборки", max_length=50)
	About = models.TextField(blank=True, verbose_name="Описание")
	Price = models.IntegerField(verbose_name="Цена")

	def __str__(self):
		return str(self.Name)