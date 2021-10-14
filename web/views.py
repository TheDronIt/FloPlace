from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect, HttpResponse, JsonResponse
from .models import *
from django.template.loader import get_template
import random

def index(request):
	return render(request, 'page/index.html')

def catalog(request):
	category = Category.objects.all()
	print(category)
	data = {
		'category': category
	}
	return render(request, 'page/catalog.html',data)

def ProductCatalog(request, id):
	CategoryName = Category.objects.get(id=id)
	flowers = Flowers.objects.filter(Category=CategoryName)
	print(flowers)
	data = {
		'CategoryName': CategoryName,
		'Flowers': flowers
	}
	return render(request, 'page/productcatalog.html',data)