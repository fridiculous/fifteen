from django.conf.urls import patterns, url

from counter import views

urlpatterns = patterns('',
	url(r'^$', views.example, name='example'),
	)