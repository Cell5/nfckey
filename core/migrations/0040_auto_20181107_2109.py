# Generated by Django 2.1.3 on 2018-11-07 08:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0039_auto_20181107_2107'),
    ]

    operations = [
        migrations.AlterField(
            model_name='location',
            name='comment',
            field=models.CharField(blank=True, max_length=128, null=True),
        ),
    ]
