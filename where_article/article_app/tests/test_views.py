from django.test import TestCase
from django.urls import reverse
from django.contrib.auth.models import User
from article_app.models import Category, Article, UserModel


class MainViewTest(TestCase):

    @classmethod
    def setUpTestData(self):
        not_staff = User.objects.create(username='not_staff',
                                        password='not_staff',
                                        is_staff=False
                                        )
        staff = User.objects.create(username='staff',
                                    password='staff',
                                    is_staff=True
                                    )

    def test_view_url_exists_at_desired_location(self):
        categories = Category.objects.all()
        for category in categories:
            response = self.client.get('/' + category.name)
            self.assertEqual(response.status_code, 200)

    def test_view_url_accessible_by_name(self):
        categories = Category.objects.all()
        for category in categories:
            response = self.client.get(reverse('main', args=[category.name]))
            self.assertEqual(response.status_code, 200)

    def test_view_not_logged_in_uses_correct_template(self):
        response = self.client.get(reverse('main', args=[Category.objects.get(id=1).name]))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'article_app/main.html')

    def test_view_logged_in_uses_correct_template(self):
        login = self.client.login(username='not_staff', password='not_staff')
        response = self.client.get(reverse('main', args=[Category.objects.get(id=1).name]))

        # Check our user is logged in
        self.assertEqual(str(response.context['user']), 'not_staff')
        # Check that we got a response "success"
        self.assertEqual(response.status_code, 200)

        # Check we used correct template
        self.assertTemplateUsed(response, 'article_app/main_logged.html')



