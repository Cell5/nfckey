# Generated by Django 2.1.3 on 2018-11-07 08:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0038_auto_20181107_2059'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='securitygroup',
            name='access_level',
        ),
        migrations.AddField(
            model_name='securitygroup',
            name='access_level',
            field=models.ManyToManyField(to='core.Location'),
        ),
    ]
