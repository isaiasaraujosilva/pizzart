from django.contrib import admin
from core.models import Pedidos, Massas, Bordas, Sabores, Pizzas

# Register your models here.
admin.site.register(Massas)
admin.site.register(Pedidos)
admin.site.register(Bordas)
admin.site.register(Sabores)
admin.site.register(Pizzas)