from django.shortcuts import render
from rest_framework import generics
from .models import Post, Category
from .serializers import PostSerializer
from .serializers import CategorySerializer
from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticatedOrReadOnly


def main(request):
    return render(request, 'app_posts/index.html')


class PostList(generics.ListCreateAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
    # permission_classes = (IsAuthenticatedOrReadOnly,)


class PostDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
    # permission_classes = (IsAuthenticatedOrReadOnly,)


class CategoryViewSet(viewsets.ModelViewSet):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer
    permission_classes = (IsAuthenticatedOrReadOnly,)
    # pagination_class =
