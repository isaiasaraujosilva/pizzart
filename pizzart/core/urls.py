from django.urls import path
from . import views
app_name = 'core'
urlpatterns = [
    path('', views.index,name="pedidos"),
    path('painel',views.dashboard,name="dashboard"),
    path('Submit', views.submit_event,name="submit")
   
]