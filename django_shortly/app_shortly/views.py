from django.shortcuts import render, redirect
import urllib.parse
from .models import Urls


# Create your views here.


def new_url(request):
    error = None
    url = ''
    if request.method == 'POST':
        url = request.POST.get('url')

        try:
            f_url = Urls.objects.get(full_url=url)
            return redirect('/shortly/%s+' % f_url.short_url)
        except Urls.DoesNotExist:
            pass

        try:
            s_url = Urls.objects.get(short_url=url)
            return redirect('/shortly/%s+' % s_url.short_url)
        except Urls.DoesNotExist:
            pass

        if not is_valid_url(url):
            error = 'Please enter a valid URL'
        else:
            cur_url = Urls(full_url=url, short_url="")
            cur_url.short_url = short(str(cur_url.id))
            cur_url.save()

            return redirect('/shortly/%s+' % cur_url.short_url)

    popular = Urls.objects.order_by('click_count').reverse()[:5]

    return render(request, 'app_shortly/new_url.html', {'error': error, 'url': url, 'popular': popular})


def follow_short_link(request, short_id):
    try:
        cur_url = Urls.objects.get(short_url=short_id)
        cur_url.click_count += 1
        cur_url.save()
        return redirect(cur_url.full_url)
    except Urls.DoesNotExist:
        print("Not Found")


def short_link_details(request, short_id):
    try:
        cur_url = Urls.objects.get(short_url=short_id)
        click_count = cur_url.click_count or 0
        return render(request, 'app_shortly/short_link_details.html', {'link_target': cur_url.full_url,
                                                                       'short_id': short_id,
                                                                       'click_count': click_count})
    except Urls.DoesNotExist:
        print("Not Found")


def is_valid_url(url):
    parts = urllib.parse.urlparse(url)
    return parts.scheme in ('http', 'https')


def short(str_id):
    num = 0
    for symbol in str_id:
        num += ord(symbol)

    return num % 2048



