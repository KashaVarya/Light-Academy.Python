from django.db import models
import uuid

# Create your models here.


class Task(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4)  # change id
    text = models.CharField(max_length=64)
    checked = models.BooleanField()
    # null = may be 0, blank = may be empty, default = default value
    # checked = models.BooleanField(null=True, blank=True, default=False, verbose_name="Check", unique=True)


# class Meta:
    # verbose_name = "..."
    # verbose_name_plural = "..."
    # unique_together = ["text", "checked"]  # не может в базе быть у двух экземпляров одинаковые два поля

# from myapp.models import Task
# Task.objects.create(text='a', checked=True)
