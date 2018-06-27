from django.shortcuts import render
from django.contrib.auth.models import User
from django.contrib.auth import authenticate

# Create your views here.


def main_login(request):
    return render(request, 'session_app/login.html')


def check(request):
    username = request.POST['username']
    password = request.POST['password']


    user = authenticate(username=username, password=password)
    if user is not None:
        return render(request, 'session_app/result.html', {'mes': 'Success!'})
    else:
        return render(request, 'session_app/result.html', {'mes': 'Login failed!'})



    #     if user.is_active:
    #         login(request, user)
    #     # Redirect to a success page.
    #     else:
    #     # Return a 'disabled account' error message
    #     ...
    # else:
# Return an 'invalid login' error message.
