from django.db import models
import uuid

# Create your models here.


class UrlObject(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4)
    full_url = models.CharField(max_length=250)
    short_url = models.CharField(max_length=100)
    click_count = models.IntegerField(default=0)
