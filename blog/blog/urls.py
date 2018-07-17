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
from app_posts import views as my_views
from rest_framework.routers import DefaultRouter
from rest_framework_swagger.views import get_swagger_view
from rest_framework.authtoken import views


schema_view = get_swagger_view(title='Pastebin API')

# Create a router and register our viewsets with it.
router = DefaultRouter()
router.register(r'posts', my_views.PostViewSet)
router.register(r'categories', my_views.CategoryViewSet)
router.register(r'users', my_views.UserViewSet)

# The API URLs are now determined automatically by the router.
urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^swagger$', schema_view),
    url(r'^$', my_views.main),
    url(r'^api-auth/', include('rest_framework.urls')),
    url(r'^', include(router.urls)),
    url(r'^i18n/', include('django.conf.urls.i18n')),
    url(r'^api-token-auth/', views.obtain_auth_token),
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
