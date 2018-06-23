from django.db import models

# Create your models here.


class MovieModel(models.Model):
    id = models.AutoField()
    title = models.CharField(max_length=64)
    image = models.ImageField()
    genres = models.ManyToManyField('GenreModel')
    directors = models.ManyToManyField('DirectorModel')
    actors = models.ManyToManyField('ActorModel')
    date = models.DateField()
    country = models.CharField(max_length=32)
    duration = models.TimeField()
    rating = models.FloatField()
    summary = models.TextField()


class GenreModel(models.Model):
    id = models.AutoField()
    title = models.CharField(max_length=64)
    summary = models.TextField()
    users = models.ManyToManyField('UserModel')


class DirectorModel(models.Model):
    id = models.AutoField()
    last_name = models.CharField(max_length=32)
    first_name = models.CharField(max_length=32)
    middle_name = models.CharField(max_length=32, null=True, blank=True)
    image = models.ImageField()
    bio = models.TextField()
    movies = models.ManyToManyField(MovieModel)


class ActorModel(models.Model):
    id = models.AutoField()
    last_name = models.CharField(max_length=32)
    first_name = models.CharField(max_length=32)
    middle_name = models.CharField(max_length=32, null=True, blank=True)
    image = models.ImageField()
    bio = models.TextField()
    movies = models.ManyToManyField(MovieModel)


class ReviewModel(models.Model):
    id = models.AutoField()
    text = models.TextField()
    user = models.ForeignKey('UserModel', on_delete=models.SET_NULL, null=True, blank=True)
    movie = models.ForeignKey(MovieModel, on_delete=models.SET_NULL, null=True, blank=True)


class UserModel(models.Model):
    id = models.AutoField()
    login = models.CharField()
    password = models.CharField()
    image = models.ImageField()
    bio = models.TextField()
    genres = models.ManyToManyField(GenreModel)
