# Generated by Django 2.1.3 on 2018-11-06 09:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0011_auto_20181106_2223'),
    ]

    operations = [
        migrations.AlterField(
            model_name='location',
            name='location',
            field=models.CharField(choices=[('not defined', 'Not defined'), ('floor 1', 'Floor 1'), ('floor 2', 'Floor 2'), ('floor 3', 'Floor 3')], max_length=16, unique=True),
        ),
    ]
