import os, django, sys
from django.conf import settings
from celery import Celery
from warehouse.settings import BASE_DIR

sys.path.append(os.path.join(BASE_DIR, 'warehouse'))


os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'warehouse.settings')
app = Celery('warehouse')
app.config_from_object('warehouse.celeryconfig')
django.setup()


# Load task modules from all registered Django app configs.
app.autodiscover_tasks(settings.INSTALLED_APPS)
