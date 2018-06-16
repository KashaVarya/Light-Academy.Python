from django import forms
from myapp.models import Task


class TaskForm(forms.Form):
    text = forms.CharField(max_length=20)
    checked = forms.BooleanField(required=False)


class TaskModelForm(forms.ModelForm):
    class Meta:
        model = Task
        fields = ['text', 'checked']
        labels = {'text': 'label1_text'}
        help_text = {'text': 'help_text1'}
        error_messages = {'text': {'max_length': "error_max-length"}}
        widgets = {  # 'checked': forms.RadioSelect(),
                   'text': forms.Textarea()}

    # валидация
    def clean(self):
        text = self.data['text']
        if text == 'start_value':
            raise forms.ValidationError(
                {'text': "ValidationError"}
            )

    # валидация по тексту
    def clean_text(self):
        text = self.cleaned_data['text']
        if text == 'start_value_2':
            raise forms.ValidationError('Validation error')
