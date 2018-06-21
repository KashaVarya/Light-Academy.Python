from django.shortcuts import render, redirect
import urllib.parse
from .models import UrlObject
from django.views.generic import ListView, DetailView


# Create your views here.


class UrlObjectListView(ListView):
    model = UrlObject

    def get_context_data(self, **kwargs):
        # Получаем базовую реализацию контекста
        context = super(UrlObjectListView, self).get_context_data(**kwargs)
        # Добавляем новую переменную к контексту и инициализируем ее некоторым значением
        context['error'] = None
        context['url'] = ''
        return context

    def get_queryset(self):
        return UrlObject.objects.order_by('-click_count')[:5]  # Получить 5 самых популярных ссылок


class UrlObjectDetailView(DetailView):
    model = UrlObject

    def get_object(self, queryset=None):
        pk = self.kwargs.get(self.pk_url_kwarg, None)
        return UrlObject.objects.filter(short_url=pk).get()


def new_url(request):
    if request.method == 'POST':
        url = request.POST.get('url')

        try:
            f_url = UrlObject.objects.get(full_url=url)
            return redirect('/shortly/%s+' % f_url.short_url)
        except UrlObject.DoesNotExist:
            pass

        try:
            s_url = UrlObject.objects.get(short_url=url)
            return redirect('/shortly/%s+' % s_url.short_url)
        except UrlObject.DoesNotExist:
            pass

        if not is_valid_url(url):
            error = 'Please enter a valid URL'
        else:
            cur_url = UrlObject(full_url=url, short_url="")
            cur_url.short_url = short(str(cur_url.id))
            cur_url.save()

            return redirect('/shortly/%s+' % cur_url.short_url)

    return redirect('/shortly/')


def follow_short_link(request, short_id):
    try:
        cur_url = UrlObject.objects.get(short_url=short_id)
        cur_url.click_count += 1
        cur_url.save()
        return redirect(cur_url.full_url)
    except UrlObject.DoesNotExist:
        print("Not Found")


def is_valid_url(url):
    parts = urllib.parse.urlparse(url)
    return parts.scheme in ('http', 'https')


def short(str_id):
    num = 0
    for symbol in str_id:
        num += ord(symbol)

    return num % 2048
