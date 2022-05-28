from django.http import HttpResponse
from django.shortcuts import redirect, render
from django.views.generic import TemplateView
from core.models import Massas, Bordas, Pedidos, PizzaSabor, Sabores, Pizzas, Status,Teste


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
        pizza=Pizzas(borda_id=getBorda, massa_id=getMassa)
        pizza.save()
        ultimo_id=Pizzas.objects.latest('id').id
        #get_id_pizzas=Pizzas.objects.get(id=count_id)
        pizzasabor=PizzaSabor(pizza_id=ultimo_id,sabor_id=getSabor)
        pedido=Pedidos(pizzas_id=ultimo_id,status_id=1)
        pizzasabor.save()
        pedido.save()


        return redirect("/")
        #Pizzas.objects.(borda=getBorda,getMassa)
        #return redirect("/")


def dashboard(request):
    teste=["teste1","teste2","teste3"]
    massa=Massas.objects.all()
    #pedidos=Pedidos.objects.all()
    #pedido= Pedidos.objects.filter(pizzas)
    pedido = Pedidos.objects.prefetch_related('pizzas')
    PizSab= PizzaSabor.objects.prefetch_related('sabor')
    status=Status.objects.all()
    #borda=Bordas 
    # vetor = []
    # for vetor in pedido :
    #    print(vetor) #=Pedidos.objects.filter(id=vetor)  
    #return HttpResponse(pedido)
    return render(request,'dashboard.html',{
        'pedido':pedido,
        'pizzasabor':PizSab,
        'status':status
      

     })
    