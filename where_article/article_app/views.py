# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render, redirect
from django.views.generic import TemplateView, ListView
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login
from .models import UserModel, Article


class MainView(ListView):
    model = Article

    def get_template_names(self):
        print('user auth: {}'.format(self.request.user.is_authenticated))
        if not self.request.user.is_authenticated:
            return 'article_app/main.html'
        elif self.request.user.is_staff:
            return 'article_app/main_staff.html'
        else:
            return 'article_app/main_logged.html'


def index(request):
    return render(request, 'article_app/main.html')


class LogInView(TemplateView):

    template_name = "article_app/login.html"

    def post(self, request, *args, **kwargs):
        name = request.POST.get('inputNickname')
        password = request.POST.get('inputPassword')

        user = authenticate(username=name, password=password)
        if user is not None:
            login(request, user)

        # if user is not None:
        #     if user.is_staff:
        #         return render(request, 'article_app/main_staff.html')
        #     else:
        #         return render(request, 'article_app/main_logged.html')
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


