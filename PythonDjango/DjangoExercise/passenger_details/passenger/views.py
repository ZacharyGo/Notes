from django.shortcuts import render, get_object_or_404
 
# Create your views here.
from .models import Passenger
 
 
def views(request):
    passengers = Passenger.objects.all()
    return render(request,'passenger/home.html', {'passengers': passengers})
 
def detail(request, passenger_id):
    passenger = get_object_or_404(Passenger, pk = passenger_id)
    return render(request,'passenger/detail.html', {'passenger': passenger})