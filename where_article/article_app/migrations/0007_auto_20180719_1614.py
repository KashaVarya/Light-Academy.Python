# Generated by Django 2.0.7 on 2018-07-19 16:14

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('article_app', '0006_auto_20180706_2206'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='article',
            options={'ordering': ['id']},
        ),
        migrations.AlterModelOptions(
            name='category',
            options={'ordering': ['id']},
        ),
        migrations.AlterModelOptions(
            name='usermodel',
            options={'ordering': ['id']},
        ),
    ]