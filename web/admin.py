from django.contrib import admin
from .models import *

admin.site.register(Category)
admin.site.register(Flowers)
admin.site.register(Basket)
admin.site.register(Order)
admin.site.register(Reviews)