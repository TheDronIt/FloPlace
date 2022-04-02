from django.contrib import admin
from .models import *

admin.site.register(Category)
admin.site.register(Flowers)
admin.site.register(Basket)
admin.site.register(Order)
admin.site.register(Reviews)
admin.site.register(Staff)
admin.site.register(ContactUs)
admin.site.register(OnlinePaymentTemp)


'''
{
	'type': 'notification',
	'event': 'payment.succeeded',
	'object': {
		'id': '29ada429-000f-5000-9000-15915a84f8a4',
		'status': 'succeeded',
		'amount': {
			'value': '200.00',
			'currency': 'RUB'
		},
		'income_amount': {
			'value': '193.00',
			'currency': 'RUB'
		},
		'description': 'P0579275595',
		'recipient': {
			'account_id': '860268',
			'gateway_id': '1925252'
		},
		'payment_method': {
			'type': 'yoo_money',
			'id': '29ada429-000f-5000-9000-15915a84f8a4',
			'saved': False,
			'title': 'YooMoney wallet 410011758831136',
			'account_number': '410011758831136'
		},
		'captured_at': '2022-02-27T14:54:22.060Z',
		'created_at': '2022-02-27T14:53:29.143Z',
		'test': True,
		'refunded_amount': {
			'value': '0.00',
			'currency': 'RUB'
		},
		'paid': True,
		'refundable': True,
		'metadata': {
		}
	}
}

'''