from django.db import models


class ItemModel(models.Model):
    title = models.CharField(max_length=128)
    brand = models.CharField(max_length=128)
    price = models.CharField(max_length=32)
    description = models.TextField()
    size = models.TextField()
    image = models.TextField()
