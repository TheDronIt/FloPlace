# Generated by Django 4.0.1 on 2022-01-28 12:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0013_category_showinmenu'),
    ]

    operations = [
        migrations.CreateModel(
            name='Staff',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Name', models.CharField(max_length=50, verbose_name='Имя')),
                ('Image', models.ImageField(upload_to='staff/', verbose_name='Фотография')),
                ('Role', models.CharField(max_length=50, verbose_name='Должность')),
            ],
            options={
                'verbose_name': 'Персонал',
                'verbose_name_plural': 'Персонал',
            },
        ),
        migrations.AlterField(
            model_name='category',
            name='ShowInMenu',
            field=models.CharField(choices=[('Отображать', 'Отображать')], max_length=50, verbose_name='Отображение в меню'),
        ),
    ]
