from django.conf.urls import patterns, include, url
from django.contrib import admin

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'fifteen.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^$', include('counter.urls')),
    url(r'^admin/', include(admin.site.urls)),
)
