import sys
import os
import django
from warehouse.settings import BASE_DIR
from parser_app.models import ItemModel
from warehouse.celery import app


sys.path.append(os.path.join(BASE_DIR, 'warehouse'))
os.environ['DJANGO_SETTINGS_MODULE'] = 'warehouse.settings'
django.setup()


@app.tasks
def save_to_db(item):
    item = ItemModel.objects.get_or_create(
        title=item['title'],
        brand=item['brand'],
        price=item['price'],
        description=item['description'],
        size=item['size'],
        image=item['image']
    )
    item.save()
