from django.shortcuts import render
import tmdbsimple as tmdb


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
    tmdb.API_KEY = '8306d5ff32c006e9287880bf96ec5779'

    movie = tmdb.Movies(603)
    response = movie.info()

    print(movie.title())
    movie.images()
    movie.release_dates()
    movie.




    genres = models.ManyToManyField('GenreModel')
    directors = models.ManyToManyField('DirectorModel')
    actors = models.ManyToManyField('ActorModel')


    country = models.CharField(max_length=32)
    duration = models.TimeField()
    rating = models.FloatField()
    summary = models.TextField()



>>> movie.budget
63000000
>>> response = movie.releases()
>>> for c in movie.countries:
...    if c['iso_3166_1'] == 'US':
...         print(c['certification'])
...
'R'



>>> search = tmdb.Search()
>>> response = search.movie(query='The Bourne')
>>> for s in search.results:
...     print(s['title'], s['id'], s['release_date'], s['popularity'])
...
The Bourne Ultimatum 2503 2007-08-03 55.2447062124256
The Bourne Supremacy 2502 2004-07-23 43.4553609681985
The Bourne Identity 2501 2002-06-06 38.5531563780592
The Bourne Legacy 49040 2012-08-10 9.90635210153143
The Bourne Identity 8677 1988-05-08 1.53988446573129
Bette Bourne: It Goes with the Shoes 179304  0.23

>> > search = tmdb.Search()
>> > response = search.movie(query='The Bourne')
>> > for s in search.results:
    ...
    print(s['title'], s['id'], s['release_date'], s['popularity'])
...
The
Bourne
Ultimatum
2503
2007 - 0
8 - 03
55.2447062124256
The
Bourne
Supremacy
2502
2004 - 07 - 23
43.4553609681985
The
Bourne
Identity
2501
2002 - 06 - 06
38.5531563780592
The
Bourne
Legacy
49040
2012 - 0
8 - 10
9.90635210153143
The
Bourne
Identity
8677
1988 - 05 - 0
8
1.53988446573129
Bette
Bourne: It
Goes
with the Shoes 179304  0.23


>> > response = tmdb.Movies(603).info()
>> > response['budget']
63000000