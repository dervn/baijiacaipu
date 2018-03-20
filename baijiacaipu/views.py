import datetime
from django.http import HttpRequest, HttpResponse, HttpResponseRedirect
from django.shortcuts import render_to_response

def index(arg):
    return HttpResponse("Hello World!")

def current_time(arg):
    now = datetime.datetime.now()
    html = "It's now %s." % now
    return HttpResponse(html)

def hours_ahead(arg, offset):
    try:
        offset = int(offset)
    except ValueError:
        raise Http404()
    #assert False
    dt = datetime.datetime.now() + datetime.timedelta(hours = offset)
    #html = "In %s hour(s), it will be %s" % (offset, dt)
    #t = Template("In {{ offset }} hour(s), it will be {{ dt }}")
    #t = get_template("time_plus.html")
    #html = t.render({"offset":offset, "dt": dt})
    #return HttpResponse(html)
    res = {
        "offset":offset,
        "dt": dt,
    }
    return render_to_response("time_plus.html", res)
