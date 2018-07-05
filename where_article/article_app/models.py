# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import User


# Create your models here.


class UserModel(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    telephone = models.CharField(max_length=16)


class Category(models.Model):
    name = models.CharField(max_length=24, unique=True)
    description = models.CharField(max_length=64)


class Article(models.Model):
    title = models.CharField(max_length=64)
    content = models.TextField()
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    status = models.BooleanField(default=False)
