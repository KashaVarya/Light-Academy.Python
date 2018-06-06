import pathlib
import yaml
import os


BASE_DIR = os.path.dirname(os.path.abspath(__file__))
config_path = os.path.join(BASE_DIR, 'config/db.config.yaml')

# BASE_DIR = pathlib.Path(__file__).parent.parent
# config_path = BASE_DIR / 'app_gif' / 'config' / 'db.config.yaml'


def get_config(path):
    with open(path) as f:
        config = yaml.load(f)
    return config


config = get_config(config_path)