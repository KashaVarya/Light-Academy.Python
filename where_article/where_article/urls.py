"""where_article URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.contrib import admin
from article_app import views

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$', views.on_main_page, name='home'),
    url(r'^login$', views.LogInView.as_view(), name='login'),
    url(r'^signup$', views.SignUpView.as_view()),
    url(r'^logout$', views.LogOutView.as_view(), name='logout'),
    url(r'^add_article$', views.AddArticleView.as_view()),
    url(r'^add_category$', views.AddCategoryView.as_view()),
    url(r'^oauth/', include('social_django.urls', namespace='social')),
    url(r'^(?P<category>\w+)$', views.MainView.as_view()),
]
