# Generated by Django 2.1.3 on 2018-11-06 08:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='locations',
            name='location',
            field=models.CharField(choices=[('Not defined', ''), ('floor 1', 'Floor 1'), ('floor 2', 'Floor 2'), ('floor 3', 'Floor 3')], max_length=8),
        ),
    ]
