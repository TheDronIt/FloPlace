# Generated by Django 4.0.1 on 2022-01-31 13:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0015_alter_basket_id_alter_category_id_alter_flowers_id_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='ContactUs',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Name', models.CharField(max_length=50, verbose_name='Имя')),
                ('Phone', models.CharField(max_length=50, verbose_name='Телефон')),
                ('Email', models.CharField(max_length=50, verbose_name='Email')),
                ('Message', models.TextField(blank=True, verbose_name='Сообщение')),
            ],
            options={
                'verbose_name': 'Заявки на связь',
                'verbose_name_plural': 'Заявки на связь',
            },
        ),
    ]
