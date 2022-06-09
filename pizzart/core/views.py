from ast import Return
from multiprocessing import Manager
from sqlite3 import Cursor
from warnings import catch_warnings
from django.http import HttpResponse
from django.shortcuts import redirect, render
from django.views.generic import TemplateView
from core.models import Massas, Bordas, Pedidos, PizzaSabor, Sabores, Pizzas, Status,Teste
from django.db import connection, transaction


#class IndexPageViwer(TemplateView):
#    template_name='index.html'


def index(request):

    massa = Massas.objects.all()
    bordas= Bordas.objects.all()
    sabor = Sabores.objects.all()
    pizza = Pizzas.objects.all()
    return render (request,'index.html',{
        'massa':massa,
        'borda':bordas,
        'sabor':sabor,
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

def delete_pedido(request, pedido):
    Pedidos.objects.filter(id=pedido).delete()
    return redirect("/painel")





def edit (request, pedido):
    #eu sei que estou repetindo muito codigo, mas assim que possivel vou refatorar
    edit_status=Status.objects.all()
    edit_borda=Bordas.objects.all()
    edit_massa=Massas.objects.all()
    edit_sabor=Sabores.objects.all()
    numero=str(pedido)
    query="SELECT pedidos.id, sabores.nome FROM pedidos JOIN pizzas ON pizzas_id = pizzas.id JOIN pizza_sabor ON pizzas.id=pizza JOIN sabores ON pizza_sabor.sabor=sabores.id where pedidos.id="+numero
    pedidos = Pedidos.objects.raw(query)
    return render(request,'edit_request.html',{
        'back_pedido':pedidos,
        'back_status':edit_status,
        'back_borda':edit_borda,
        'back_massa':edit_massa,
        'back_sabor':edit_sabor

    })
def submit_edit(request,pedido):
    front_massa=request.POST.get("edit_massa")
    front_status=request.POST.get("edit_status")
    front_borda=request.POST.get("edit_borda")
    front_sabor=request.POST.get("edit_sabor")
    

    #qry="UPDATE pizzas JOIN pedidos ON pedidos.pizzas_id = pizzas.id  SET pizzas.borda_id = 2 WHERE pedidos.id=69"
    if request.POST:
        
        #teste=Pedidos.objects.get(id=pedido,pizzas__borda_id=2)
       #teste=Pedidos.objects.raw(qry).upda
       #teste.update()
       #Manager.raw(teste).save()
        # cursor = connection.cursor()
        # obj_pedido=Pedidos.objects.filter(id=pedido)
        # obj_pedido.update(status=front_status)

        #cursor.execute("UPDATE pizzas JOIN pedidos ON pedidos.pizzas_id = pizzas.id  SET pizzas.borda_id = %s WHERE pedidos.id=%s",[front_borda,pedido])
        #transaction.commit()
        
        #cursor = connection.cursor()
        #cursor = connection.cursor()
        idpizza=Pizzas.objects.raw("SELECT pedidos.id,pedidos.pizzas_id FROM pedidos WHERE id="+str(pedido))
        for idpizza in idpizza:
            endid=idpizza.pizzas_id 
        
        try:
            PizzaSabor.objects.filter(pizza=endid).update(sabor=front_sabor)
        except:
            pass    
        try:
            borda=Pizzas.objects.filter(id=endid).update(borda_id=front_borda)
        except:
            pass   
        try:
            borda=Pizzas.objects.filter(id=endid).update(massa_id=front_massa)
        except:
            pass
        try:
            Status=Pedidos.objects.filter(id=pedido).update(status=front_status)
        except:
            pass    
        #borda.

        #transaction.commit()
        #print("cheguei aqui")       


    # Operação de modificação de dado - commit obrigatório
        #cursor.execute("UPDATE pizzas JOIN pedidos ON pedidos.pizzas_id = pizzas.id  SET pizzas.borda_id = %s WHERE pedidos.id=%s",[front_borda,pedido])
        #transaction.commit()

        #return HttpResponse(borda)

    return redirect("/painel")