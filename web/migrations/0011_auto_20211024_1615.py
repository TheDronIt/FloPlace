# Generated by Django 3.1.6 on 2021-10-24 06:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0010_order_paymant'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='Paymant',
            field=models.CharField(choices=[('Наличный расчет', 'Наличный расчет'), ('Перевод', 'Перевод')], max_length=50, verbose_name='Оплата'),
        ),
    ]
