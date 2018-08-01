from django.shortcuts import render
import tmdbsimple as tmdb
from .models import MovieModel
from movienews import secret
from django.views.generic import ListView


# Create your views here.


def index(request):
    tmdb.API_KEY = secret.API_KEY

    return render(request, 'movienews_app/index.html')


class MovieListView(ListView):
    model = MovieModel
    template_name = 'movienews_app/movies_list.html'

