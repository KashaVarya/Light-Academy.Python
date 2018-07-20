from django.db import models
from django.contrib.auth.models import User


class UserModel(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    telephone = models.CharField(max_length=16)

    class Meta:
        ordering = ['id']


class Category(models.Model):
    name = models.CharField(max_length=24, unique=True)
    description = models.CharField(max_length=64)

    class Meta:
        ordering = ['id']


class Article(models.Model):
    title = models.CharField(max_length=64, unique=True)
    content = models.TextField()
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    status = models.BooleanField(default=False)

    class Meta:
        ordering = ['id']
