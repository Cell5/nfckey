# Generated by Django 2.1.3 on 2018-11-06 14:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0032_auto_20181107_0225'),
    ]

    operations = [
        migrations.AddField(
            model_name='employee',
            name='phone',
            field=models.IntegerField(default='', max_length=10, null=True),
        ),
    ]