# Generated by Django 2.0.7 on 2018-07-23 16:32


from django.db import migrations
from django.contrib.auth.hashers import make_password


def add_users(apps, schema_editor):
    User = apps.get_model('auth', 'User')

    user1 = User(username='editor',
                 password=make_password('editor'),
                 email='editor@gmail.com',
                 is_staff=True)
    user1.save()

    user2 = User(username='user',
                 password=make_password('user'),
                 email='user@gmail.com',
                 is_staff=False)
    user2.save()


def add_categories(apps, schema_editor):
    Category = apps.get_model('blog', 'Category')

    cat1 = Category(name='World', description='All about the world')
    cat1.save()
    cat2 = Category(name='Design', description='All about design')
    cat2.save()
    cat3 = Category(name='Technology', description='All about technology')
    cat3.save()
    cat4 = Category(name='Love', description='All about love')
    cat4.save()
    cat5 = Category(name='Culture', description='All about culture')
    cat5.save()


def add_posts(apps, schema_editor):
    Post = apps.get_model('blog', 'Post')
    Category = apps.get_model('blog', 'Category')
    User = apps.get_model('auth', 'User')

    user1 = User.objects.get(username='editor')
    user2 = User.objects.get(username='user')

    art1 = Post(title='My world',
                   content='Return the context variable name that will be used to contain the list of data that this '
                           'view is manipulating. If object_list is a queryset of Django objects and context '
                           'object_name is not set, the context name will be the model_name of the model that '
                           'the queryset is composed from, with postfix appended. For example, the model Article '
                           'would have a context object named article_list.',
                   category=Category.objects.get(name='World'),
                   status=True,
                   user=user1)
    art1.save()

    art2 = Post(title='Your world',
                   content='Return a boolean specifying whether to display the page if no objects are available.'
                           ' If this method returns False and no objects are available, the view will raise a 404'
                           ' instead of displaying an empty page. By default, this is True.',
                   category=Category.objects.get(name='World'),
                   status=True,
                   user=user1)
    art2.save()

    art3 = Post(title='RobotoCake',
                   content='Cake is a form of sweet dessert that is typically baked. In its oldest forms, cakes'
                           ' were modifications of breads, but cakes now cover a wide range of preparations that'
                           ' can be simple or elaborate, and that share features with other desserts such as pastries,'
                           ' meringues, custards, and pies.',
                   category=Category.objects.get(name='Design'),
                   status=True,
                   user=user2)
    art3.save()

    art4 = Post(title='Echo cake',
                   content='Cake is often served as a celebratory dish on ceremonial occasions, such as weddings,'
                           ' anniversaries, and birthdays. There are countless cake recipes; some are bread-like,'
                           ' some are rich and elaborate, and many are centuries old. Cake making is no longer'
                           ' a complicated procedure; while at one time considerable labor went into cake making'
                           ' (particularly the whisking of egg foams), baking equipment and directions have been'
                           ' simplified so that even the most amateur cook may bake a cake.',
                   category=Category.objects.get(name='Design'),
                   status=True,
                   user=user1)
    art4.save()

    art5 = Post(title='What is technology?',
                   content='Technology ("science of craft", from Greek τέχνη, techne, "art, skill, cunning of hand";'
                           ' and -λογία, -logia) is first robustly defined by Jacob Bigelow in 1829 as: '
                           '"...principles, processes, and nomenclatures of the more conspicuous arts, particularly'
                           ' those which involve applications of science, and which may be considered useful, by'
                           ' promoting the benefit of society, together with the emolument of'
                           ' those who pursue them".',
                   category=Category.objects.get(name='Technology'),
                   status=True,
                   user=user1)
    art5.save()

    art6 = Post(title='What is love?',
                   content='Love encompasses a variety of different emotional and mental states, typically strongly'
                           ' and positively experienced, ranging from the most sublime virtue or good habit, '
                           'the deepest interpersonal affection and to the simplest pleasure.',
                   category=Category.objects.get(name='Love'),
                   status=True,
                   user=user1)
    art6.save()

    art7 = Post(title='Wiki love',
                   content='Love encompasses a variety of different emotional and mental states, typically strongly'
                           ' and positively experienced, ranging from the most sublime virtue or good habit, '
                           'the deepest interpersonal affection and to the simplest pleasure.',
                   category=Category.objects.get(name='Love'),
                   user=user1)
    art7.save()

    art8 = Post(title='Echo cake2',
                   content='Cake is often served as a celebratory dish on ceremonial occasions, such as weddings,'
                           ' anniversaries, and birthdays. There are countless cake recipes; some are bread-like,'
                           ' some are rich and elaborate, and many are centuries old. Cake making is no longer'
                           ' a complicated procedure; while at one time considerable labor went into cake making'
                           ' (particularly the whisking of egg foams), baking equipment and directions have been'
                           ' simplified so that even the most amateur cook may bake a cake.',
                   category=Category.objects.get(name='Design'),
                   user=user1)
    art8.save()


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_category_post'),
    ]

    operations = [
        migrations.RunPython(add_users),
        migrations.RunPython(add_categories),
        migrations.RunPython(add_posts),
    ]
