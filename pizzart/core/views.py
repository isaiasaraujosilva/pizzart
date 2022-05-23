from django.http import HttpResponse
from django.shortcuts import redirect, render
from django.views.generic import TemplateView
from core.models import Massas, Bordas, Sabores, Pizzas,Teste


#class IndexPageViwer(TemplateView):
#    template_name='index.html'

def index(request):
    massa = Massas
    bord= Bordas
    sabor = Sabores
    pizza = Pizzas
    return render (request,'index.html',{
        'massa':massa.objects.all(),
        'borda':bord.objects.all(),
        'sabor':sabor.objects.all(),
    })

def submit_event(request):
    if request.POST:
        getMassa = request.POST.get('dough')
        getBorda = request.POST.get('edge')
        getSabor = request.POST.get('flavor')
        teste=Pizzas(borda_id=getBorda, massa_id=getMassa)


        teste.save()
        #Pizzas.objects.(borda=getBorda,getMassa)
        return redirect("/")