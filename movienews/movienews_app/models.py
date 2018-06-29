from django.db import models

# Create your models here.


class MovieModel(models.Model):
    id = models.IntegerField(primary_key=True)
    title = models.CharField(max_length=64, null=True, blank=True)
    image = models.ImageField(null=True, blank=True)
    genres = models.ManyToManyField('GenreModel')
    directors = models.ManyToManyField('DirectorModel')
    actors = models.ManyToManyField('ActorModel')
    date = models.DateField(null=True, blank=True)
    country = models.CharField(max_length=32, null=True, blank=True)
    duration = models.IntegerField(null=True, blank=True)
    rating = models.FloatField(default=0.0)
    summary = models.TextField(null=True, blank=True)


class GenreModel(models.Model):
    id = models.IntegerField(primary_key=True)
    title = models.CharField(max_length=64)


class DirectorModel(models.Model):
    GENDER_CHOICES = (
                         (0, 'not set'),
                         (1, 'Female'),
                         (2, 'Male')
    )

    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=64, default="No data.")
    image = models.CharField(max_length=256, default="No data.")
    bio = models.TextField(default="No data.")
    gender = models.IntegerField(choices=GENDER_CHOICES, default=0)
    birthday = models.CharField(max_length=32, default="No data.")
    deathday = models.CharField(max_length=32, default="No data.")


class ActorModel(models.Model):
    GENDER_CHOICES = (
                         (0, 'not set'),
                         (1, 'Female'),
                         (2, 'Male')
    )

    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=64, default="No data.")
    image = models.CharField(max_length=256, default="No data.")
    bio = models.TextField(default="No data.")
    gender = models.IntegerField(choices=GENDER_CHOICES, default=0)
    birthday = models.CharField(max_length=32, default="No data.")
    deathday = models.CharField(max_length=32, default="No data.")


class UserModel(models.Model):
    id = models.IntegerField(primary_key=True)
    login = models.CharField(max_length=32)
    password = models.CharField(max_length=32)
    bio = models.CharField(max_length=128)
    genres = models.ManyToManyField(GenreModel)
