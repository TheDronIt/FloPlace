# Generated by Django 3.1.6 on 2021-10-24 06:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0009_auto_20211022_1952'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='Paymant',
            field=models.CharField(default=0, max_length=120, verbose_name='Оплата'),
            preserve_default=False,
        ),
    ]
