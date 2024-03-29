from django.shortcuts import redirect
from django.views.generic import TemplateView, ListView, RedirectView
from django.contrib.auth.models import User, Permission
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.mixins import LoginRequiredMixin, PermissionRequiredMixin
from .models import UserModel, Article, Category
from django.contrib.contenttypes.models import ContentType


class MainView(ListView):
    model = Article

    def get_template_names(self):
        if not self.request.user.is_authenticated:
            return 'article_app/main.html'
        elif self.request.user.is_staff:
            return 'article_app/main_staff.html'
        else:
            return 'article_app/main_logged.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        categories = Category.objects.all()
        category_selected = Category.objects.get(name=self.kwargs['category'])
        context['categories'] = categories
        context['category_selected'] = category_selected
        return context


class LogInView(TemplateView):

    template_name = "article_app/login.html"

    def post(self, request, *args, **kwargs):
        name = request.POST.get('inputNickname')
        password = request.POST.get('inputPassword')

        user = authenticate(username=name, password=password)
        if user is not None:
            login(request, user)

        return redirect('/')


class SignUpView(TemplateView):

    template_name = "article_app/signup.html"

    def post(self, request, *args, **kwargs):
        name = request.POST.get('inputNickname')
        email = request.POST.get('inputEmail')
        phone = request.POST.get('inputPhone', '')
        password = request.POST.get('inputPassword')
        repeat_password = request.POST.get('inputRepeatPassword')

        if password == repeat_password:
            user = User.objects.create_user(name, email, password, is_staff=False)
            user.save()

            user_tel = UserModel(user=user, telephone=phone)
            user_tel.save()

        return redirect('/')


class LogOutView(RedirectView):

    url = '/'

    def get_redirect_url(self, *args, **kwargs):
        logout(self.request)
        return super().get_redirect_url(*args, **kwargs)


class AddArticleView(LoginRequiredMixin, TemplateView):

    login_url = '/login'
    template_name = 'article_app/add_article.html'

    def post(self, request, *args, **kwargs):
        category = Category.objects.get(name=request.POST.get('category'))
        title = request.POST.get('inputTitle')
        content = request.POST.get('inputContent')
        user = request.user

        article = Article(title=title,
                          content=content,
                          category=category,
                          user=user)
        article.save()
        return redirect('/')

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        categories = Category.objects.all()
        context['categories'] = categories
        return context


class AddCategoryView(LoginRequiredMixin,
                      PermissionRequiredMixin,
                      TemplateView):
    login_url = '/login'
    permission_required = 'auth.can_add_category'
    template_name = 'article_app/add_category.html'

    def post(self, request, *args, **kwargs):

        name = request.POST.get('inputName')
        description = request.POST.get('inputDescription')

        category = Category(name=name,
                            description=description)
        category.save()
        return redirect('/')

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        categories = Category.objects.all()
        context['categories'] = categories
        return context


class ReviewView(LoginRequiredMixin,
                 PermissionRequiredMixin,
                 TemplateView):

    permission_required = 'auth.can_review'
    login_url = '/login'
    template_name = 'article_app/review.html'

    def post(self, request, *args, **kwargs):
        article = Article.objects.get(title=request.POST.get('title'))
        article.status = True
        article.save()
        return redirect('/review')

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        categories = Category.objects.all()
        context['categories'] = categories
        article = Article.objects.all().filter(status=False)
        if article:
            article = article[0]
            context['article'] = article
            context['empty'] = False
        else:
            context['empty'] = True
        return context


class DeclineView(LoginRequiredMixin,
                  PermissionRequiredMixin,
                  RedirectView):

    permission_required = 'auth.can_decline'
    login_url = '/login'
    url = '/review'

    def get_redirect_url(self, *args, **kwargs):
        id = kwargs.get('id')
        article = Article.objects.get(id=id)
        article.delete()
        return super().get_redirect_url(*args, **kwargs)


def on_main_page(request):
    return redirect('/' + Category.objects.get(id=1).name)
