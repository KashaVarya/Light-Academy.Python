from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Task
from .forms import TaskForm, TaskModelForm

from django.views.generic import TemplateView, View


# Create your views here.


def index(request):
    tasks = Task.objects.all()
    return render(request, 'myapp/index.html', {'tasks': tasks, 'form': TaskModelForm(initial={'text': 'start_value'})})


def create_task(request):
    if request.method == 'POST':
        # task = Task(text=request.POST.get('text'), checked=bool(request.POST.get('checked', False)))
        form = TaskModelForm(request.POST)
        if form.is_valid():
            form.save()
            # Task.objects.create(
            #     text=form.cleaned_data['text'],
            #     checked=form.cleaned_data.get('checked', False)
            # )
            return redirect('/tasks')
        return redirect('/tasks')
    # task.save()
    return redirect('/tasks')


def detail(request, pk):
    try:
        task = Task.objects.get(id=pk)
    except Task.DoesNotExist:
        print("Error")

    form = TaskModelForm(instance=task)

    if request.method == 'POST':
        if form.is_valid():
            form.save()
            redirect('tasks/{}'.format(task.pk))
        else:
            form = TaskModelForm()
    return render(request, 'myapp/detail.html', {'task': task, 'form': form})


class TaskView(View):
    def get(self, request, *args, **kwargs):
        tasks = Task.objects.all()
        return render(request, 'myapp/index.html',
                      {'tasks': tasks, 'form': TaskModelForm(initial={'text': 'start_value'})})

    def post(self, request, pk=None):
        if request.method == 'POST':
            # task = Task(text=request.POST.get('text'), checked=bool(request.POST.get('checked', False)))
            form = TaskModelForm(request.POST)
            if form.is_valid():
                form.save()
                # Task.objects.create(
                #     text=form.cleaned_data['text'],
                #     checked=form.cleaned_data.get('checked', False)
                # )
                return redirect('/tasks/')
            return redirect('/tasks/')
        # task.save()
        return redirect('/tasks/')
