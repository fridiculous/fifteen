from django.shortcuts import render

# Create your views here.
def example(request):
	#model = Question
	#template_name = 'example.html'
	return render(request, 'example.html', {'bob': range(15) })