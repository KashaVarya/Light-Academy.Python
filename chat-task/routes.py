from chat.views import Chatlist, WebSoket
from auth.views import Login, SignIn, SignOut



routes = [
    ('GET', '/',        ChatList,  'main'),
    ('GET', '/ws',      WebSocket, 'chat'),
    ('*',   '/login',   Login,     'login'),
    ('*',   '/signin',  SignIn,    'signin'),
    ('*',   '/signout', SignOut,   'signout'),
]