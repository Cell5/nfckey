# Generated by Django 2.1.3 on 2018-11-06 09:19

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0008_receivers_receiver_location'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Locations',
            new_name='Location',
        ),
    ]
