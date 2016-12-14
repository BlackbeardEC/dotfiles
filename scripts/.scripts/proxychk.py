#!/usr/bin/env python

import os
import urllib2
import socket

def is_bad_proxy(pip):    
    try:
        proxy_handler = urllib2.ProxyHandler({'http': pip})
        opener = urllib2.build_opener(proxy_handler)
        opener.addheaders = [('User-agent', 'Mozilla/5.0')]
        urllib2.install_opener(opener)
        req=urllib2.Request('http://www.example.com')  # change the URL to test here
        sock=urllib2.urlopen(req)
    except urllib2.HTTPError, e:
        print 'Error code: ', e.code
        return e.code
    except Exception, detail:
        print "ERROR:", detail
        return True
    return False

def main():
    socket.setdefaulttimeout(120)

    for currentProxy in open("proxies"):
        if is_bad_proxy(currentProxy):
            os.write(2, "-"+currentProxy)
        else:
            os.write(2, "+"+currentProxy)
            os.write(1, currentProxy)

if __name__ == '__main__':
    main()