from django.test import TestCase
from django.urls import reverse
from django.contrib.auth.models import User, Permission
from django.contrib.auth.hashers import make_password
from django.contrib.contenttypes.models import ContentType
from article_app.models import Category, Article, UserModel


class MainViewTest(TestCase):

    @classmethod
    def setUpTestData(self):
        not_staff = User.objects.create(username='not_staff',
                                        password=make_password('not_staff'),
                                        is_staff=False
                                        )
        staff = User.objects.create(username='staff',
                                    password=make_password('staff'),
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

    def test_redirect(self):
        response = self.client.get(reverse('home'))
        self.assertRedirects(response, '/' + Category.objects.get(id=1).name)

    def test_view_not_logged_in_uses_correct_template(self):
        response = self.client.get(reverse('main', args=[Category.objects.get(id=1).name]))
        self.assertTemplateUsed(response, 'article_app/main.html')

    def test_view_user_logged_in(self):
        login = self.client.login(username='not_staff', password='not_staff')
        response = self.client.get(reverse('main', args=[Category.objects.get(id=1).name]))
        # Check our user is logged in
        self.assertEqual(str(response.context['user']), 'not_staff')

    def test_view_logged_in_uses_correct_template(self):
        login = self.client.login(username='not_staff', password='not_staff')
        response = self.client.get(reverse('main', args=[Category.objects.get(id=1).name]))
        # Check we used correct template
        self.assertTemplateUsed(response, 'article_app/main_logged.html')

    def test_view_staff_uses_correct_template(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.get(reverse('main', args=[Category.objects.get(id=1).name]))
        # Check we used correct template
        self.assertTemplateUsed(response, 'article_app/main_staff.html')


class LogInViewTest(TestCase):

    @classmethod
    def setUpTestData(self):
        not_staff = User.objects.create(username='not_staff',
                                        password=make_password('not_staff'),
                                        is_staff=False
                                        )
        staff = User.objects.create(username='staff',
                                    password=make_password('staff'),
                                    is_staff=True
                                    )

    def test_view_url_exists_at_desired_location(self):
        response = self.client.get('/login')
        self.assertEqual(response.status_code, 200)

    def test_view_url_accessible_by_name(self):
        response = self.client.get(reverse('login'))
        self.assertEqual(response.status_code, 200)

    def test_view_using_correct_template(self):
        response = self.client.get(reverse('login'))
        self.assertTemplateUsed(response, 'article_app/login.html')

    def test_view_redirect(self):
        response = self.client.post(reverse('login'),
                                    {'inputNickname': 'not_staff', 'inputPassword': 'not_staff'},
                                    follow=True
                                    )
        self.assertRedirects(response, '/' + Category.objects.get(id=1).name)

    def test_view_successful_user_login(self):
        response = self.client.post(reverse('login'),
                                    {'inputNickname': 'not_staff', 'inputPassword': 'not_staff'},
                                    follow=True
                                    )
        self.assertTemplateUsed(response, 'article_app/main_logged.html')

    def test_view_successful_staff_login(self):
        response = self.client.post(reverse('login'),
                                    {'inputNickname': 'staff', 'inputPassword': 'staff'},
                                    follow=True
                                    )
        self.assertTemplateUsed(response, 'article_app/main_staff.html')


class SignUpViewTest(TestCase):

    def test_view_url_exists_at_desired_location(self):
        response = self.client.get('/signup')
        self.assertEqual(response.status_code, 200)

    def test_view_url_accessible_by_name(self):
        response = self.client.get(reverse('signup'))
        self.assertEqual(response.status_code, 200)

    def test_view_using_correct_template(self):
        response = self.client.get(reverse('signup'))
        self.assertTemplateUsed(response, 'article_app/signup.html')

    def test_view_redirect(self):
        response = self.client.post(reverse('signup'),
                                    {'inputNickname': 'varya',
                                     'inputPassword': 'varya',
                                     'inputRepeatPassword': 'varya'},
                                    follow=True)
        self.assertRedirects(response, '/' + Category.objects.get(id=1).name)

    def test_view_successful_signup(self):
        response = self.client.post(reverse('signup'),
                                    {'inputNickname': 'varya',
                                     'inputEmail': 'varya@gmail.com',
                                     'inputPassword': 'varya',
                                     'inputRepeatPassword': 'varya'},
                                    follow=True)
        self.assertTrue(isinstance(UserModel.objects.get(user=User.objects.get(username='varya')), UserModel))

    def test_view_signup_failed_password(self):
        response = self.client.post(reverse('signup'),
                                    {'inputNickname': 'varya',
                                     'inputEmail': 'varya@gmail.com',
                                     'inputPassword': 'varya',
                                     'inputRepeatPassword': 'fail'},
                                    follow=True)
        with self.assertRaises(User.DoesNotExist):
            user = UserModel.objects.get(user=User.objects.get(username='varya'))


class LogOutViewTest(TestCase):

    @classmethod
    def setUpTestData(self):
        not_staff = User.objects.create(username='not_staff',
                                        password=make_password('not_staff'),
                                        is_staff=False
                                        )

    def test_view_url_exists_at_desired_location(self):
        response = self.client.get('/logout')
        self.assertEqual(response.status_code, 302)

    def test_view_location(self):
        response = self.client.get('/logout')
        self.assertEqual(response['Location'], '/')

    def test_view_url_accessible_by_name(self):
        response = self.client.get(reverse('logout'))
        self.assertEqual(response.status_code, 302)

    def test_view_logout(self):
        login = self.client.login(username='not_staff', password='not_staff')
        response = self.client.get(reverse('add_article'))
        self.assertEqual(response.status_code, 200)

        self.client.logout()
        response = self.client.get(reverse('add_article'))
        self.assertRedirects(response, '/login?next=/add_article')


class AddArticleViewTest(TestCase):

    @classmethod
    def setUpTestData(self):
        not_staff = User.objects.create(username='not_staff',
                                        password=make_password('not_staff'),
                                        is_staff=False
                                        )

    def test_view_url_exists_at_desired_location(self):
        login = self.client.login(username='not_staff', password='not_staff')
        response = self.client.get('/add_article')
        self.assertEqual(response.status_code, 200)

    def test_view_url_accessible_by_name(self):
        login = self.client.login(username='not_staff', password='not_staff')
        response = self.client.get(reverse('add_article'))
        self.assertEqual(response.status_code, 200)

    def test_view_using_correct_template(self):
        login = self.client.login(username='not_staff', password='not_staff')
        response = self.client.get(reverse('add_article'))
        self.assertTemplateUsed(response, 'article_app/add_article.html')

    def test_view_redirect(self):
        login = self.client.login(username='not_staff', password='not_staff')
        response = self.client.post(reverse('add_article'),
                                    {'category': Category.objects.get(id=1).name,
                                     'inputTitle': 'Title',
                                     'inputContent': 'Content'},
                                    follow=True)
        self.assertRedirects(response, '/' + Category.objects.get(id=1).name)

    def test_view_login_required(self):
        response = self.client.get('/add_article')
        self.assertRedirects(response, '/login?next=/add_article')

    def test_view_successful_add(self):
        login = self.client.login(username='not_staff', password='not_staff')
        response = self.client.post(reverse('add_article'),
                                    {'category': Category.objects.get(id=1).name,
                                     'inputTitle': 'Title',
                                     'inputContent': 'Content'},
                                    follow=True)
        self.assertTrue(isinstance(Article.objects.get(title='Title'), Article))

    def test_view_add_failed_not_logged(self):
        response = self.client.post(reverse('add_article'),
                                    {'category': Category.objects.get(id=1).name,
                                     'inputTitle': 'Title',
                                     'inputContent': 'Content'},
                                    follow=True)
        with self.assertRaises(Article.DoesNotExist):
            article = Article.objects.get(title='Title')


class AddCategoryViewTest(TestCase):

    @classmethod
    def setUpTestData(self):
        staff = User.objects.create(username='staff',
                                    password=make_password('staff'),
                                    is_staff=True
                                    )
        content_type = ContentType.objects.get_for_model(User)
        permission = Permission.objects.get(codename='can_add_category')
        staff.user_permissions.add(permission)

        no_perm = User.objects.create(username='no_perm',
                                      password=make_password('no_perm'),
                                      is_staff=True
                                      )

    def test_view_url_exists_at_desired_location(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.get('/add_category')
        self.assertEqual(response.status_code, 200)

    def test_view_url_accessible_by_name(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.get(reverse('add_category'))
        self.assertEqual(response.status_code, 200)

    def test_view_using_correct_template(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.get(reverse('add_category'))
        self.assertTemplateUsed(response, 'article_app/add_category.html')

    def test_view_redirect(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.post(reverse('add_category'),
                                    {'inputName': 'Name',
                                     'inputDescription': 'Description'},
                                    follow=True)
        self.assertRedirects(response, '/' + Category.objects.get(id=1).name)

    def test_view_login_required(self):
        response = self.client.get('/add_category')
        self.assertRedirects(response, '/login?next=/add_category')

    def test_view_user_has_perm(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.get(reverse('add_category'))
        self.assertTrue(response.context['user'].has_perm('auth.can_add_category'))

    def test_view_user_has_not_perm(self):
        login = self.client.login(username='no_perm', password='no_perm')
        response = self.client.get(reverse('add_category'))
        with self.assertRaises(TypeError):
            perm = response.context['user'].has_perm('auth.can_add_category')

    def test_view_successful_add(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.post(reverse('add_category'),
                                    {'inputName': 'Name',
                                     'inputDescription': 'Description'},
                                    follow=True)
        self.assertTrue(isinstance(Category.objects.get(name='Name'), Category))

    def test_view_add_failed_not_logged(self):
        response = self.client.post(reverse('add_category'),
                                    {'inputName': 'Name',
                                     'inputDescription': 'Description'},
                                    follow=True)
        with self.assertRaises(Category.DoesNotExist):
            category = Category.objects.get(name='Name')

    def test_view_add_failed_no_perm(self):
        login = self.client.login(username='no_perm', password='no_perm')
        response = self.client.post(reverse('add_category'),
                                    {'inputName': 'Name',
                                     'inputDescription': 'Description'},
                                    follow=True)
        with self.assertRaises(Category.DoesNotExist):
            category = Category.objects.get(name='Name')


class ReviewViewTest(TestCase):

    @classmethod
    def setUpTestData(self):
        staff = User.objects.create(username='staff',
                                    password=make_password('staff'),
                                    is_staff=True
                                    )
        content_type = ContentType.objects.get_for_model(User)
        permission = Permission.objects.get(codename='can_review')
        staff.user_permissions.add(permission)

        no_perm = User.objects.create(username='no_perm',
                                      password=make_password('no_perm'),
                                      is_staff=True
                                      )

        article = Article.objects.create(category=Category.objects.get(id=1),
                                         title='Title',
                                         content='Content',
                                         user=staff
                                         )

    def test_view_url_exists_at_desired_location(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.get('/review')
        self.assertEqual(response.status_code, 200)

    def test_view_url_accessible_by_name(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.get(reverse('review'))
        self.assertEqual(response.status_code, 200)

    def test_view_using_correct_template(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.get(reverse('review'))
        self.assertTemplateUsed(response, 'article_app/review.html')

    def test_view_redirect(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.post(reverse('review'),
                                    {'title': 'Title'},
                                    follow=True)
        self.assertRedirects(response, '/review')

    def test_view_login_required(self):
        response = self.client.get('/review')
        self.assertRedirects(response, '/login?next=/review')

    def test_view_user_has_perm(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.get(reverse('review'))
        self.assertTrue(response.context['user'].has_perm('auth.can_review'))

    def test_view_user_has_not_perm(self):
        login = self.client.login(username='no_perm', password='no_perm')
        response = self.client.get(reverse('review'))
        with self.assertRaises(TypeError):
            perm = response.context['user'].has_perm('auth.can_review')

    def test_view_successful_accept(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.post(reverse('review'),
                                    {'title': 'Title'},
                                    follow=True)
        self.assertTrue(Article.objects.get(title='Title').status)

    def test_view_accept_failed_not_logged(self):
        response = self.client.post(reverse('review'),
                                    {'title': 'Title'},
                                    follow=True)
        self.assertFalse(Article.objects.get(title='Title').status)

    def test_view_add_failed_no_perm(self):
        login = self.client.login(username='no_perm', password='no_perm')
        response = self.client.post(reverse('review'),
                                    {'title': 'Title'},
                                    follow=True)
        self.assertFalse(Article.objects.get(title='Title').status)


class DeclineViewTest(TestCase):

    @classmethod
    def setUpTestData(self):
        staff = User.objects.create(username='staff',
                                    password=make_password('staff'),
                                    is_staff=True
                                    )
        content_type = ContentType.objects.get_for_model(User)
        permission = Permission.objects.get(codename='can_decline')
        staff.user_permissions.add(permission)

        no_perm = User.objects.create(username='no_perm',
                                      password=make_password('no_perm'),
                                      is_staff=True
                                      )

        article = Article.objects.create(category=Category.objects.get(id=1),
                                         title='Title',
                                         content='Content',
                                         user=staff
                                         )

    def test_view_url_exists_at_desired_location(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.get('/decline/' + str(Article.objects.filter(status=False)[0].id))
        self.assertEqual(response.status_code, 302)

    def test_view_location(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.get('/decline/' + str(Article.objects.filter(status=False)[0].id))
        self.assertEqual(response['Location'], '/review')

    def test_view_url_accessible_by_name(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.get(reverse('decline', args=[Article.objects.filter(status=False)[0].id]))
        self.assertEqual(response.status_code, 302)

    def test_view_login_required(self):
        response = self.client.get(reverse('decline', args=[Article.objects.filter(status=False)[0].id]))
        self.assertRedirects(response, '/login?next=/decline/' + str(Article.objects.filter(status=False)[0].id))

    def test_view_user_has_perm(self):
        login = self.client.login(username='staff', password='staff')
        response = self.client.get(
            reverse('decline', args=[Article.objects.filter(status=False)[0].id]),
            follow=True
        )
        self.assertTrue(response.context['user'].has_perm('auth.can_decline'))

    def test_view_user_has_not_perm(self):
        login = self.client.login(username='no_perm', password='no_perm')
        response = self.client.get(reverse('decline', args=[Article.objects.filter(status=False)[0].id]))
        with self.assertRaises(TypeError):
            perm = response.context['user'].has_perm('auth.can_decline')

    def test_view_successful_decline(self):
        login = self.client.login(username='staff', password='staff')
        article_id = Article.objects.filter(status=False)[0].id
        response = self.client.get(
            reverse('decline', args=[article_id]),
            follow=True
        )
        with self.assertRaises(Article.DoesNotExist):
            article = Article.objects.get(id=article_id)

    def test_view_decline_failed_not_logged(self):
        article_id = Article.objects.filter(status=False)[0].id
        response = self.client.get(
            reverse('decline', args=[article_id]),
            follow=True
        )
        self.assertFalse(Article.objects.get(id=article_id).status)

    def test_view_decline_failed_no_perm(self):
        login = self.client.login(username='no_perm', password='no_perm')
        article_id = Article.objects.filter(status=False)[0].id
        response = self.client.get(
            reverse('decline', args=[article_id]),
            follow=True
        )
        self.assertFalse(Article.objects.get(id=article_id).status)
