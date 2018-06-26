from django.shortcuts import render
import tmdbsimple as tmdb
from . import models
from movienews import secret


# Create your views here.


# Ключ API (v3 auth)
# 8306d5ff32c006e9287880bf96ec5779
#
#
# Ключ доступа к API (v4 auth)
# eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4MzA2ZDVmZjMyYzAwNmU5Mjg3ODgwYmY5
#
#
# Пример API запроса
# https://api.themoviedb.org/3/movie/550?api_key=8306d5ff32c006e9287880bf96ec5779


def index(request):
    tmdb.API_KEY = secret.API_KEY

    actors = models.DirectorModel.objects.all()

    for actor in actors:
        act = tmdb.People(actor.id)
        respond = act.info()

        actor.bio = act.biography
        actor.gender = act.gender
        if act.birthday:
            actor.birthday = act.birthday
        if act.deathday:
            actor.deathday = act.deathday

        actor.save()

    return render(request, 'movienews_app/index.html', {'movies': actors})




# >>> movie.budget
# 63000000
# >>> response = movie.releases()
# >>> for c in movie.countries:
# ...    if c['iso_3166_1'] == 'US':
# ...         print(c['certification'])
# ...
# 'R'
#
#
#
# >>> search = tmdb.Search()
# >>> response = search.movie(query='The Bourne')
# >>> for s in search.results:
# ...     print(s['title'], s['id'], s['release_date'], s['popularity'])
# ...
# The Bourne Ultimatum 2503 2007-08-03 55.2447062124256
# The Bourne Supremacy 2502 2004-07-23 43.4553609681985
# The Bourne Identity 2501 2002-06-06 38.5531563780592
# The Bourne Legacy 49040 2012-08-10 9.90635210153143
# The Bourne Identity 8677 1988-05-08 1.53988446573129
# Bette Bourne: It Goes with the Shoes 179304  0.23
#
# >> > search = tmdb.Search()
# >> > response = search.movie(query='The Bourne')
# >> > for s in search.results:
#     ...
#     print(s['title'], s['id'], s['release_date'], s['popularity'])
# ...
# The
# Bourne
# Ultimatum
# 2503
# 2007 - 0
# 8 - 03
# 55.2447062124256
# The
# Bourne
# Supremacy
# 2502
# 2004 - 07 - 23
# 43.4553609681985
# The
# Bourne
# Identity
# 2501
# 2002 - 06 - 06
# 38.5531563780592
# The
# Bourne
# Legacy
# 49040
# 2012 - 0
# 8 - 10
# 9.90635210153143
# The
# Bourne
# Identity
# 8677
# 1988 - 05 - 0
# 8
# 1.53988446573129
# Bette
# Bourne: It
# Goes
# with the Shoes 179304  0.23
#
#
# >> > response = tmdb.Movies(603).info()
# >> > response['budget']
# 63000000