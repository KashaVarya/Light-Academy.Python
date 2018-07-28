from asgiref.sync import async_to_sync
from channels.generic.websocket import WebsocketConsumer
import json


class PostConsumer(WebsocketConsumer):
    def connect(self):
        self.group_name = 'posts'

        # Join group
        async_to_sync(self.channel_layer.group_add)(
            self.group_name,
            self.channel_name
        )

        self.accept()

    def disconnect(self, close_code):
        # Leave group
        async_to_sync(self.channel_layer.group_discard)(
            self.group_name,
            self.channel_name
        )

    # Receive message from signal
    def new_post(self, event):
        post_id = event['post_id']

        # Send message to WebSocket
        self.send(text_data=json.dumps({
            'post_id': post_id
        }))
