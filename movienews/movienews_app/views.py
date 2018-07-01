from django.shortcuts import render
import tmdbsimple as tmdb
from .models import MovieModel
from movienews import secret
from django.views.generic import TemplateView


# Create your views here.


def index(request):
    tmdb.API_KEY = secret.API_KEY

    return render(request, 'movienews_app/index.html')


class MovieView(TemplateView):
    template_name = 'movienews_app/movies.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['movies'] = MovieModel.objects.all()
        return context
