#! /usr/bin/python
#Author: Nicholas Graca

import socket

host = 'csec380-core.csec.rit.edu'
port = 82

#Create Socket
socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
socket.connect((host, port))

#Create Request
p = 'POST / HTTP/1.1\r\nHost: ' + host + ':' + str(port) + '\r\n\r\n'   #Create Request
socket.sendall(p)
response = socket.recv(1024)    #recieve info from web server
socket.close()
print(response)
