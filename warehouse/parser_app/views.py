from django.views.generic import TemplateView


class IndexView(TemplateView):
    template_name = 'parser_app/index.html'
