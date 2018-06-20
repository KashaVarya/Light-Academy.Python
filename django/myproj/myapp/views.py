from django.shortcuts import render, redirect
from .models import Task
from .forms import TaskForm, TaskModelForm

from django.views.generic import TemplateView, View, ListView, DetailView
from django.views.generic.edit import FormView, CreateView, UpdateView, DeleteView
# CreateView - task/add
# UpdateView - task/<pk>
# DeleteView - task/<pk>/delete
# success_url - урля, на которую перейдет после успешного выполнения


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


class TaskListView(ListView):
    model = Task

    # по умолчанию:
    # template_name = 'tasks/task_list.html'
    # {% for task in object.list %}

    paginate_by = 5

    def get_context_data(self, *, object_list=None, **kwargs):
        data = super().get_context_data()
        data['form'] = TaskForm()
        return data


# для одного объекта
class TaskDetailView(DetailView):
    model = Task

    def get_context_data(self):
        data = super().get_context_data()
        data['form'] = TaskForm()
        return data

    def get_object(self, queryset=None):
        queryset = super().get_queryset(self, request)


class TaskFormView(FormView):
    form_class = TaskForm

    def form_valid(self, form):
        pass


class TaskView(View):
    def get(self, request, *args, **kwargs):
        tasks = Task.objects.all()
        return render(request, 'myapp/index.html',
                      {'tasks': tasks, 'form': TaskModelForm(initial={'text': 'start_value'})})

    def post(self, request, pk=None):
            # task = Task(text=request.POST.get('text'), checked=bool(request.POST.get('checked', False)))
        form = TaskModelForm(request.POST)
        if form.is_valid():
            form.save()
            # Task.objects.create(
            #     text=form.cleaned_data['text'],
            #     checked=form.cleaned_data.get('checked', False)
            # )
            return redirect('/tasks')
        # task.save()
        tasks = Task.objects.all()
        return render(request, 'myapp/index.html',
                      {'tasks': tasks, 'form': form})
