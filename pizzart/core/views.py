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
    # teste=["teste1","teste2","teste3"]
    # massa=Massas.objects.all()
    # #pedidos=Pedidos.objects.all()
    # #pedido= Pedidos.objects.filter(pizzas)
    #pedido = Pedidos.objects.prefetch_related()
    #PizSab= PizzaSabor.objects.prefetch_related()
    # p=PizSab
    st=Status.objects.all()
    #borda=Bordas 
    # vetor = []
    # for vetor in pedido :
    #    print(vetor) #=Pedidos.objects.filter(id=vetor)  
    #pedido = Pedidos.objects.raw('SELECT * FROM pedidos')
    #pizzasabor = PizzaSabor.objects.raw('SELECT pizza_sabor.sabor,pizzas.id FROM pizza_sabor JOIN pizzas ON pizza = pizzas.id;')
    query="SELECT pedidos.id, sabores.nome FROM pedidos JOIN pizzas ON pizzas_id = pizzas.id JOIN pizza_sabor ON pizzas.id=pizza JOIN sabores ON pizza_sabor.sabor=sabores.id"
    pedidos = Pedidos.objects.raw(query)
    return render(request,'dashboard.html',{
           'pedido':pedidos,
           'status':st,
           })