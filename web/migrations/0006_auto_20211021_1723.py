# Generated by Django 3.1.6 on 2021-10-21 07:23

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0005_auto_20211021_1717'),
    ]

    operations = [
        migrations.RenameField(
            model_name='popular',
            old_name='Name',
            new_name='ProductName',
        ),
    ]
