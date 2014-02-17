#!/usr/bin/env python
import os
import SimpleHTTPServer
import SocketServer
 
DIR=os.path.dirname(os.path.realpath(__file__))

# Simple web server with caching disabled (useful for development)
class MyHTTPRequestHandler(SimpleHTTPServer.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_my_headers()
        SimpleHTTPServer.SimpleHTTPRequestHandler.end_headers(self)
 
    def send_my_headers(self):
        self.send_header("Cache-Control", "no-cache, no-store, must-revalidate")
        self.send_header("Pragma", "no-cache")
        self.send_header("Expires", "0")
 
 
if __name__ == '__main__':
    os.chdir(DIR)
    port = 1234
    httpd = SocketServer.TCPServer(("", port), MyHTTPRequestHandler)
    print "Open http://localhost:%s in your web browser" % port
    httpd.serve_forever()
