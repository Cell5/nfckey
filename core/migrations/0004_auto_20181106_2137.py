# Generated by Django 2.1.3 on 2018-11-06 08:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_auto_20181106_2136'),
    ]

    operations = [
        migrations.AlterField(
            model_name='locations',
            name='location_id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]
