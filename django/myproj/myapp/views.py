from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Task
from .forms import TaskForm


# Create your views here.


def index(request):
    tasks = Task.objects.all()
    return render(request, 'myapp/index.html', {'tasks': tasks, 'form': TaskForm})


def create_task(request):
    if request.method == 'POST':
        # task = Task(text=request.POST.get('text'), checked=bool(request.POST.get('checked', False)))
        form = TaskForm(request.POST)
        if form.is_valid():
            Task.objects.create(
                text=form.cleaned_data['text'],
                checked=form.cleaned_data.get('checked', False)
            )
            return redirect('/tasks')
        return redirect('/tasks')
    # task.save()
    return redirect('/tasks')


def detail(request, pk):
    try:
        task = Task.objects.get(id=pk)
    except Task.DoesNotExist:
        print("Error")
    return render(request, 'myapp/detail.html', {'task': task})
