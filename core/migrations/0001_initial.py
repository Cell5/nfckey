# Generated by Django 2.1.3 on 2018-11-06 08:28

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Locations',
            fields=[
                ('location_id', models.AutoField(primary_key=True, serialize=False)),
                ('location', models.CharField(choices=[('Not defined', ''), ('floor 1', 'Floor 1'), ('floor 2', 'Floor 2'), ('floor 3', 'Floor 3')], default='', max_length=8)),
            ],
        ),
    ]