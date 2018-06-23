from django.forms import ModelForm
from .models import UrlObject


class UrlForm(ModelForm):
    class Meta:
        model = UrlObject
        fields = ['full_url']
        labels = {'full_url': 'URL'}
