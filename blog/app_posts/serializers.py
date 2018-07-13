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
                  'user',
                  )
        read_only_fields = ('id',)


class PostSerializer(serializers.ModelSerializer):

    # user = serializers.SlugRelatedField(queryset=User.objects.all(),
    #                                     slug_field='username')
    # category_id = serializers.RelatedField(queryset=Category.objects.all(),
    #                                        write_only=True)
    # category_repr = CatSer(source='category_id',
    #                        read_only=True)

    user = serializers.ReadOnlyField(source='user.username')

    class Meta:
        model = Post
        fields = ('id',
                  'status',
                  'category',
                  'user',
                  'title',
                  'content',
                  'created_on',
                  'updated_on',
                  # 'category_id',
                  # 'category_repr'
                  )
        read_only_fields = ('id',
                            'created_on',
                            'updated_on',
                            )
        extra_kwargs = {'title': {'required': True}}  # словарь


class UserSerializer(serializers.HyperlinkedModelSerializer):
    posts = serializers.HyperlinkedRelatedField(many=True,
                                                view_name='post-detail',
                                                read_only=True,
                                                )

    class Meta:
        model = User
        fields = ('url',
                  'id',
                  'username',
                  'posts',
                  )
