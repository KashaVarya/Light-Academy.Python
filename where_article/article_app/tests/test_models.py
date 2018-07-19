from django.test import TestCase
from article_app.models import Category, Article, UserModel
from django.contrib.auth.models import User


class CategoryModelClass(TestCase):
    @classmethod
    def setUpTestData(cls):
        # Set up non-modified objects used by all test methods
        Category.objects.create(name='CatName',
                                description='CatDesc'
                                )

    def test_name_max_length(self):
        category = Category.objects.get(id=1)
        max_length = category._meta.get_field('name').max_length
        self.assertEquals(max_length, 24)

    def test_description_max_length(self):
        category = Category.objects.get(id=1)
        max_length = category._meta.get_field('description').max_length
        self.assertEquals(max_length, 64)


class ArticleModelClass(TestCase):
    @classmethod
    def setUpTestData(cls):
        # Set up non-modified objects used by all test methods
        user = User.objects.create(username='varya',
                                   password='varya',
                                   )
        category = Category.objects.create(name='CatName',
                                           description='CatDesc'
                                           )
        Article.objects.create(title='CatName',
                               content='CatDesc',
                               user=user,
                               category=category,
                               status=True
                               )

    def test_title_max_length(self):
        article = Article.objects.get(id=1)
        max_length = article._meta.get_field('title').max_length
        self.assertEquals(max_length, 64)


class UserModelClass(TestCase):
    @classmethod
    def setUpTestData(cls):
        # Set up non-modified objects used by all test methods
        user = User.objects.create(username='varya',
                                   password='varya',
                                   )
        UserModel.objects.create(user=user,
                                 telephone='0973025450'
                                 )

    def test_telephone_max_length(self):
        user = UserModel.objects.get(id=1)
        max_length = user._meta.get_field('telephone').max_length
        self.assertEquals(max_length, 16)
