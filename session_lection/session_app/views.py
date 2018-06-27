from django.shortcuts import render
from django.contrib.auth.models import User
from django.contrib.auth import authenticate
from session_app import forms
from django.contrib.auth.decorators import login_required
from session_app import models
from django.http import HttpResponse


# Create your views here.


def get_tasks(request):
    tasks = models.TaskModel.objects.all()
    return HttpResponse("OK")


def main_login(request):
    tasks = models.TaskModel.objects.all()
    form = forms.LoginForm()
    return render(request, 'session_app/login.html', {'form': form, 'tasks': tasks})


def check(request):
    if request.method == 'POST':
        form = forms.LoginForm(request.POST)
        if form.is_valid():
            username = request.POST['username']
            password = request.POST['password']

            user = authenticate(username=username, password=password)

            if user is not None:
                return render(request, 'session_app/result.html', {'mes': 'Success!'})
            else:
                return render(request, 'session_app/result.html', {'mes': 'Login failed!'})

    # username = request.POST['username']
    # password = request.POST['password']
    #
    # user = authenticate(username=username, password=password)
    # if user is not None:
    #     return render(request, 'session_app/result.html', {'mes': 'Success!'})
    # else:
    #     return render(request, 'session_app/result.html', {'mes': 'Login failed!'})
