"""blog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import url, include
from django.contrib import admin
from django.conf.urls.i18n import i18n_patterns
from app_posts import views


urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^categories$', views.CategoryList.as_view()),
    url(r'^categories/(?P<pk>[0-9]+)$', views.CategoryDetail.as_view()),
    url(r'^posts$', views.PostList.as_view()),
    url(r'^posts/(?P<pk>[0-9]+)$', views.PostDetail.as_view()),
    url(r'^i18n/', include('django.conf.urls.i18n')),
    url(r'^$', views.main),
]


# urlpatterns += i18n_patterns(
#     url('posts/', include('posts.urls')),
# )


# from django.conf import settings
#
# if 'rosetta' in settings.INSTALLED_APPS:
#     urlpatterns += [
#         url(r'^rosetta/', include('rosetta.urls'))
#     ]
