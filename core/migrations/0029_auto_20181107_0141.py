# Generated by Django 2.1.3 on 2018-11-06 12:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0028_auto_20181107_0141'),
    ]

    operations = [
        migrations.AlterField(
            model_name='receiver',
            name='receiver_dev_id',
            field=models.CharField(default='', max_length=16, unique=True),
        ),
    ]
