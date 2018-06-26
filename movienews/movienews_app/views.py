from django.shortcuts import render
import tmdbsimple as tmdb
from . import models
from movienews import secret


# Create your views here.


def index(request):
    tmdb.API_KEY = secret.API_KEY

    return render(request, 'movienews_app/index.html', {'movies': u1})
