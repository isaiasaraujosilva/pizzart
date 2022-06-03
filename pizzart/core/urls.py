from django.urls import path
from . import views
app_name = 'core'
urlpatterns = [
    path('', views.index,name="pedidos"),
    path('painel',views.dashboard,name="dashboard"),
    path('Submit', views.submit_event,name="submit"),
    path('painel/edit/<int:pedido>/', views.edit,name="edit"),
    path('painel/delete/<int:pedido>',views.delete_pedido),
    #path('painel/edit/<int:pedido>/<str:massa>/<str:borda>/<str:sabor>/submit_edit',views.submit_edit, name=)   
]