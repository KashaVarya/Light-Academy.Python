from django.shortcuts import render, redirect
import urllib.parse
from .models import UrlObject
from django.views.generic import ListView, DetailView, RedirectView, View
from .forms import UrlForm


# Create your views here.


class UrlObjectListView(ListView):
    model = UrlObject

    def get_context_data(self, **kwargs):
        # Получаем базовую реализацию контекста
        context = super(UrlObjectListView, self).get_context_data(**kwargs)
        # Добавляем новую переменную к контексту и инициализируем ее некоторым значением
        error = None
        if 'error' in self.request.session:
            error = self.request.session['error']
            del self.request.session['error']
        context['error'] = error
        context['form'] = UrlForm(initial={'full_url': ''})
        return context

    def get_queryset(self):
        return UrlObject.objects.order_by('-click_count')[:5]  # Получить 5 самых популярных ссылок


class UrlObjectDetailView(DetailView):
    model = UrlObject

    def get_object(self, queryset=None):
        pk = self.kwargs.get(self.pk_url_kwarg, None)
        return UrlObject.objects.filter(short_url=pk).get()


class UrlObjectRedirectView(RedirectView):
    def get_redirect_url(self, *args, **kwargs):
        pk = kwargs['pk']
        cur_url = UrlObject.objects.get(short_url=pk)
        cur_url.click_count += 1
        cur_url.save()
        return cur_url.full_url


class SaveUrlView(View):
    def post(self, request):
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
            request.session['error'] = error
            return redirect('/shortly/')
        else:
            cur_url = UrlObject(full_url=url, short_url="")
            cur_url.short_url = short(str(cur_url.id))
            cur_url.save()

            return redirect('/shortly/%s+' % cur_url.short_url)


def is_valid_url(url):
    parts = urllib.parse.urlparse(url)
    return parts.scheme in ('http', 'https')


def short(str_id):
    num = 0
    for symbol in str_id:
        num += ord(symbol)

    return num % 2048
