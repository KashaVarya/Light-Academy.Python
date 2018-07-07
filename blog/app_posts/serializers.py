from rest_framework import serializers
from .models import Post


class MySerializers(serializers.Serializer):
    id = serializers.IntegerField()
    status = serializers.ChoiceField(choices=Post.STATUSES)
    category = serializers.IntegerField(source='category_id')
    user = serializers.IntegerField(source='user_id')
    title = serializers.CharField(max_length=255)
    content = serializers.CharField(max_length=1024)
    created_on = serializers.DateTimeField()
    updated_on = serializers.DateTimeField()
