from django.http import HttpResponse
from django.shortcuts import render, get_object_or_404
from models import Item

list_items: list = [i for i in range(0, 10)]


def index(request):
    return HttpResponse(f"Hello, world.{list_items}"
                        f"\n You're at the polls index.")

