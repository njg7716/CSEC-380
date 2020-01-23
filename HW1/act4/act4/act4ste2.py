#!/usr/bin/env python3
#Author: Nicholas Graca njg7716@rit.edu
#This script is used to find open proxy servers given a range of IP Addresses

import sys
import requests
import ipaddress
from multiprocessing.dummy import Pool

site = 'https://csec.rit.edu'   #The end website that I want to go to
ports = [80, 8080]              #The ports to look for


def ProxyCheck(ip):
    p = ipaddress.IPv4Address(ip)
    for port in ports:          #Loop through the list of ports

        try:                    #If this isnt here and the request doesnt go through, the whole thing will fail
            r = requests.get(site, proxies={'http':'http://'+str(p)+':'+str(port)}, timeout=3)
            if r.status_code == 200 and ("Rochester Institute of Technology" in r.text):    #Check if the request was good
                                                                                            #Check if the site is what we want
                print("Proxy Server IP Address: " + str(p) + ' ' + "port: " + str(port))    #Show the Proxy address and port
        except:
            pass

if len(sys.argv) != 3:          #Make sure the user puts in an IP Range
    print('Please enter two valid ip addresses.')
    exit(1)
start = ipaddress.ip_address(sys.argv[1])
end = ipaddress.ip_address(sys.argv[2])
p = Pool(100)                   #The start of the threading magic
p.map(ProxyCheck, range(int(start), int(end) + 1))  #Without threading, it takes way too long to run
p.close()
p.join()                        #Clean up threads
