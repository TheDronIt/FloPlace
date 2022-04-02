from django.urls import include, path
from django.views.generic.base import TemplateView
from . import views

urlpatterns = [
    path('', views.index, name='home'),
    path('catalog/', views.catalog),
    path('catalog/<int:id>', views.ProductCatalog),
    path('product/<int:id>', views.Product),
    path('basket', views.BasketPage),
    path('contacts', views.Contacts),
    path('payment', views.PaymentPage),
    path('yookassa/payment', views.YookassaPayment),
    path('useragreement', views.UserAgreement),
    path('robots.txt', TemplateView.as_view(template_name="robots.txt", content_type="text/plain"))
    ]