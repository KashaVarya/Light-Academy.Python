from rest_framework import serializers
from .models import Post, Category
from django.contrib.auth.models import User


class CategorySerializer(serializers.ModelSerializer):

    class Meta:
        model = Category
        fields = ('id',
                  'name',
                  'description',
                  'is_active',
                  )
        read_only_fields = ('id',)


class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = ('id',
                  'username',
                  )
        read_only_fields = ('id',)


class PostSerializer(serializers.HyperlinkedModelSerializer):

    # user = serializers.SlugRelatedField(queryset=User.objects.all(),
    #                                     slug_field='username')

    category = serializers.HyperlinkedRelatedField(view_name='category-detail',
                                                   queryset=Category.objects.all(),
                                                   )
    category_repr = CategorySerializer(source='category',
                                       read_only=True,
                                       )

    user = serializers.HyperlinkedRelatedField(view_name='user-detail',
                                               read_only=True,
                                               )
    user_repr = UserSerializer(source='user',
                               read_only=True,
                               )

    class Meta:
        model = Post
        fields = ('id',
                  'status',
                  'category',
                  'category_repr',
                  'user',
                  'user_repr',
                  'title',
                  'url',
                  'content',
                  'created_on',
                  'updated_on',
                  )
        read_only_fields = ('id',
                            'created_on',
                            'updated_on',
                            )
        extra_kwargs = {'title': {'required': True}}  # словарь
