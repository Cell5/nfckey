# Generated by Django 2.1.3 on 2018-11-06 10:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0014_auto_20181106_2233'),
    ]

    operations = [
        migrations.CreateModel(
            name='SecurityGroup',
            fields=[
                ('security_group_id', models.AutoField(primary_key=True, serialize=False)),
                ('group_name', models.CharField(default='Default Group', max_length=64, unique=True)),
            ],
        ),
    ]
