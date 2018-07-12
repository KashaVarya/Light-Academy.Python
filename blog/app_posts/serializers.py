from rest_framework import serializers
from .models import Post, Category
from django.contrib.auth.models import User


class CategorySerializer(serializers.Serializer):
    id = serializers.IntegerField(read_only=True)
    name = serializers.CharField(max_length=20)
    description = serializers.CharField(max_length=64,
                                        required=False)
    is_active = serializers.BooleanField(required=True)
    user = serializers.IntegerField(source='user_id',
                                    required=False,
                                    allow_null=True)

    def create(self, validated_data):
        return Category.objects.create(**validated_data)

    def update(self, instance, validated_data):
        instance.name = validated_data.get('name',
                                           instance.name)
        instance.description = validated_data.get('description',
                                                  instance.description)
        instance.is_active = validated_data.get('is_active',
                                                instance.is_active)
        instance.user = validated_data.get('user',
                                           instance.user)
        instance.save()
        return instance


class PostSerializer(serializers.Serializer):
    id = serializers.IntegerField(read_only=True)
    status = serializers.ChoiceField(choices=Post.STATUSES,
                                     required=False)
    category = serializers.IntegerField(source='category_id',
                                        required=True)
    user = serializers.IntegerField(source='user_id',
                                    required=False)
    title = serializers.CharField(max_length=255,
                                  required=True)
    content = serializers.CharField(max_length=1024,
                                    required=True)
    created_on = serializers.DateTimeField(read_only=True)
    updated_on = serializers.DateTimeField(read_only=True)

    def create(self, validated_data):
        return Post.objects.create(**validated_data)

    def update(self, instance, validated_data):
        instance.status = validated_data.get('status', instance.status)
        instance.title = validated_data.get('title', instance.title)
        instance.content = validated_data.get('content', instance.content)
        instance.category = validated_data.get('category', instance.category)
        instance.user = validated_data.get('user', instance.user)
        instance.save()
        return instance


class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = ('id',
                  'username',
                  'first_name',
                  'last_name',
                  'email',
                  'is_staff',
                  'is_active')
