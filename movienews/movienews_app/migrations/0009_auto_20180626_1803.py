# Generated by Django 2.0.6 on 2018-06-26 18:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('movienews_app', '0008_auto_20180626_1755'),
    ]

    operations = [
        migrations.AddField(
            model_name='actormodel',
            name='gender',
            field=models.IntegerField(choices=[(0, 'not set'), (1, 'Female'), (2, 'Male')], default=0),
        ),
        migrations.AddField(
            model_name='directormodel',
            name='gender',
            field=models.IntegerField(choices=[(0, 'not set'), (1, 'Female'), (2, 'Male')], default=0),
        ),
    ]
