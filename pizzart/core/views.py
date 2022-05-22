from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic import TemplateView
from core.models import Massas, Bordas, Sabores

#class IndexPageViwer(TemplateView):
#    template_name='index.html'

def index(request):
    massa = Massas.objects.all()
    borda= Bordas.objects.all()
    sabor = Sabores.objects.all()
    return render (request,'index.html',{
        'massa':massa,
        'borda':borda,
        'sabor':sabor,
    })

def submit_event(request):
    if request.method=="POST":
        
        return HttpResponse('show')