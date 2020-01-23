#! /usr/bin/env python2
#Author: Nicholas Graca

import socket

host =  'csec380-core.csec.rit.edu'
port = 82

socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
socket.connect((host, port))

#Create Request
p = 'POST /getSecure HTTP/1.1\r\nHost: ' + host + '\r\n\r\n'
socket.sendall(p)
#recieve token from web server
response = socket.recv(1024)
response = response.strip('"')      #Clean response to just get token
response = response.split()
token = response[-1]

#Create Request with token
p = 'POST /getFlag2 HTTP/1.1\r\nHost: ' + host + '\r\n' 
p = p + 'Content-Type: application/x-www-form-urlencoded\r\n' 
p = p + 'Content-Length: ' + str(len(token) + 6) + '\r\n\r\n' 
p = p + 'token=' + token
socket.sendall(p)
#recieve info from web server
response = socket.recv(1024)
socket.close()
print(response)
