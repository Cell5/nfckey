# Generated by Django 2.1.3 on 2018-11-06 13:25

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0031_auto_20181107_0223'),
    ]

    operations = [
        migrations.RenameField(
            model_name='employee',
            old_name='user',
            new_name='login',
        ),
    ]
