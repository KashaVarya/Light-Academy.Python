import warehouse.settings
from parser_app.models import ItemModel
from warehouse.celery import app


@app.task
def save_to_db(item):
    ItemModel.objects.get_or_create(
        title=item['title'],
        size=item['size'],
        brand=item['brand'],
        price=item['price'],
        image=item['image'],
        description=item['description']
    )
