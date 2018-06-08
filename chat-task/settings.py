from os.path import isfile
from envparse import env


if isfile('.env'):
    env.read_envfile('.env')
