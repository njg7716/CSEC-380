#! /usr/bin/env python2
#Author: Nicholas Graca

import socket
import urllib

host = 'csec380-core.csec.rit.edu'
port = 82

socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
socket.connect((host, port))

#Create Request to get Token
p = 'POST /getSecure HTTP/1.1\r\nHost: ' + host + '\r\n\r\n'
socket.sendall(p)
#recieve token from web server
response = socket.recv(1024)
response = response.strip('"')      #Parse for token
response = response.split()
token = response[-1]

#Create Request to get password
p = 'POST /createAccount HTTP/1.1\r\nHost: ' + host + '\r\n'
p = p + 'Accept: */*\r\n'
p = p + 'Accept-Language: en-US\r\n'
p = p + 'User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko\r\n'
p = p + 'Accept-Encoding: text/html\r\n'
p = p + 'Connection: keep-alive\r\n'
p = p + 'Content-Type: application/x-www-form-urlencoded\r\n'
p = p + 'Content-Length: ' + str(len(token) + 22) + '\r\n\r\n'
p = p + 'token=' + token
p = p + '&username=hacker'
socket.sendall(p)
#recieve password from web server
response = socket.recv(1024)
response = response.split()                 #Parse for password
password = response[-1]
password = urllib.quote_plus(password)      #URLEncode for special chars

#Create Request with Token, Username and Password
p = 'POST /login HTTP/1.1\r\nHost: ' + host + '\r\n'
p = p + 'Accept: */*\r\n'
p = p + 'Accept-Language: en-US\r\n'
p = p + 'User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko\r\n'
p = p + 'Accept-Encoding: text/html\r\n'
p = p + 'Connection: keep-alive\r\n'
p = p + 'Content-Type: application/x-www-form-urlencoded\r\n'
p = p + 'Content-Length: ' + str(len(token) + len(password) + 32) + '\r\n\r\n'
p = p + 'username=hacker'
p = p + '&token=' + token
p = p + '&password=' + password
socket.sendall(p)
#recieve Flag from web server
response = socket.recv(2048)
print(response)
socket.close()
