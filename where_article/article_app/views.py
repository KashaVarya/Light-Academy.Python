# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render, redirect
from django.views.generic import TemplateView, ListView, RedirectView
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from .models import UserModel, Article, Category


class MainView(ListView):
    model = Article

    def get_template_names(self):

        # user = User.objects.get(username='varya')
        # print('!!', user.password)
        # print(user)

        if not self.request.user.is_authenticated:
            return 'article_app/main.html'
        elif self.request.user.is_staff:
            return 'article_app/main_staff.html'
        else:
            return 'article_app/main_logged.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        categories = Category.objects.all()
        category_selected = Category.objects.get(name=self.kwargs['category'])
        context['categories'] = categories
        context['category_selected'] = category_selected
        return context


class LogInView(TemplateView):

    template_name = "article_app/login.html"

    def post(self, request, *args, **kwargs):
        name = request.POST.get('inputNickname')
        password = request.POST.get('inputPassword')

        user = authenticate(username=name, password=password)
        if user is not None:
            login(request, user)

        return redirect('/')


class SignUpView(TemplateView):

    template_name = "article_app/signup.html"

    def post(self, request, *args, **kwargs):
        name = request.POST.get('inputNickname')
        email = request.POST.get('inputEmail')
        phone = request.POST.get('inputPhone', '')
        password = request.POST.get('inputPassword')
        repeat_password = request.POST.get('inputRepeatPassword')

        if password == repeat_password:
            user = User.objects.create_user(name, email, password, is_staff=False)
            user.save()

            user_tel = UserModel(user=user, telephone=phone)
            user_tel.save()

        return redirect('/')


class LogOutView(RedirectView):

    url = '/'

    def get_redirect_url(self, *args, **kwargs):
        logout(self.request)
        return super().get_redirect_url(*args, **kwargs)


class AddArticleView(TemplateView):

    template_name = 'article_app/add_article.html'

    def post(self, request, *args, **kwargs):
        category = Category.objects.get(name=request.POST.get('category'))
        title = request.POST.get('inputTitle')
        content = request.POST.get('inputContent')
        user = request.user

        article = Article(title=title,
                          content=content,
                          category=category,
                          user=user)
        article.save()
        return redirect('/')

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        categories = Category.objects.all()
        context['categories'] = categories
        return context


class AddCategoryView(TemplateView):

    template_name = 'article_app/add_category.html'

    def post(self, request, *args, **kwargs):

        name = request.POST.get('inputName')
        description = request.POST.get('inputDescription')

        category = Category(name=name,
                            description=description)
        category.save()
        return redirect('/')


def on_main_page(request):
    return redirect('/World')



