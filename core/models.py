from django.db import models
from django.contrib.auth.models import User


# Creating database structure and relations

class Location(models.Model):
    LOCATION_CHOICES = (
        ('Not defined', 'Not defined'),
        ('Floor 1', 'Floor 1'),
        ('Floor 2', 'Floor 2'),
        ('Floor 3', 'Floor 3'),
    )
    location_id = models.AutoField(primary_key=True)
    location = models.CharField(max_length=16, choices=LOCATION_CHOICES, null=False, unique=True)
    comment = models.CharField(max_length=128, null=True, blank=True)

    def __str__(self):
        return self.location


class Receiver(models.Model):
    receiver_id = models.AutoField(primary_key=True)
    receiver_dev_id = models.CharField(max_length=16, null=False, unique=True, default='')
    receiver_location = models.ForeignKey('Location', on_delete=models.SET_NULL, null=True)

    def __str__(self):
        return self.receiver_location


class SecurityGroup(models.Model):
    security_group_id = models.AutoField(primary_key=True)
    security_group_name = models.CharField(max_length=64, null=False, unique=True, default='')
    access_level = models.ManyToManyField(Location)

    def __str__(self):
        return self.security_group_name


class Employee(models.Model):
    YES_NO_CHOICES = (
        ('No', 'No'),
        ('Yes', 'Yes'),
    )
    login = models.OneToOneField(User, on_delete=models.CASCADE, default='')
    staff_id = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=512, null=False)
    last_name = models.CharField(max_length=512, null=False)
    email = models.EmailField(max_length=254, null=False, unique=True)
    phone = models.CharField(max_length=15, null=True, blank=True, default='')
    is_active = models.CharField(max_length=8, choices=YES_NO_CHOICES, default='No')
    date_joined = models.DateTimeField(auto_now_add=True, null=True)
    security_group = models.ManyToManyField(SecurityGroup, blank=True)
    nfc_dev_id = models.CharField(max_length=254, null=False, default='')

    def __str__(self):
        return '%s %s' % (self.first_name, self.last_name)
