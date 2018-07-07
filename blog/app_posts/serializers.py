from rest_framework import serializers
from .models import Post


class CategorySerializer(serializers.Serializer):
    id = serializers.IntegerField(read_only=True)
    name = serializers.CharField(max_length=20)
    description = serializers.CharField(max_length=64, required=False)
    is_active = serializers.BooleanField(required=False)
    user = serializers.IntegerField(source='user_id', required=False, allow_null=True)


class PostSerializer(serializers.Serializer):
    id = serializers.IntegerField(read_only=True)
    status = serializers.ChoiceField(choices=Post.STATUSES, required=False)
    category = CategorySerializer(required=True)
    user = serializers.IntegerField(source='user_id', required=False)
    title = serializers.CharField(max_length=255, required=True)
    content = serializers.CharField(max_length=1024, required=True)
    created_on = serializers.DateTimeField(read_only=True)
    updated_on = serializers.DateTimeField(read_only=True)

    def create(self, validated_data):
        return Post.objects.create(**validated_data)

    def update(self, instance, validated_data):
        instance.status = validated_data.get('status', instance.status)
        instance.title = validated_data.get('title', instance.title)
        instance.content = validated_data.get('content', instance.content)
        instance.category = validated_data.get('category', instance.category)
        instance.category_id = validated_data['category']['id']
        instance.user = validated_data.get('user', instance.user)
        instance.save()
        return instance


# from app_posts.serializers import CategorySerializer, PostSerializer
# from app_posts.models import Post, Category
