# Generated by Django 2.1.3 on 2018-11-07 08:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0041_auto_20181107_2113'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='employee',
            name='security_group',
        ),
        migrations.AddField(
            model_name='employee',
            name='security_group',
            field=models.ManyToManyField(blank=True, to='core.SecurityGroup'),
        ),
    ]
