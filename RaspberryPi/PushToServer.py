#!/usr/bin/python

import sys, getopt
import socket

UDP_IP = "50.21.181.240"
UDP_PORT = 8042
MESSAGE = "666666666666666:V240,L0,S0:\n"

#print "UDP target IP:", UDP_IP
#print "UDP target port:", UDP_PORT
#print "message:", MESSAGE
 
def main(argv):
   jbid = ''
   params = ''
   s = ""
   try:
      opts, args = getopt.getopt(argv,"hi:p:",["ID=","Parameters="])
   except getopt.GetoptError:
      print 'test.py -i <ID> -p <Parameters>'
      sys.exit(2)
   for opt, arg in opts:
      if opt == '-h':
         print 'test.py -i <ID> -p <Parameters>'
         sys.exit()
      elif opt in ("-i", "--ID"):
         jbid = arg
      elif opt in ("-p", "--Parameters"):
         params = arg
   s = jbid
   s += ":"
   s += params
   s += ":\n"

#   print 'ID is: ', inputfile
#   print 'Parameters are: ', outputfile
#   print s
#   print MESSAGE
   
   sock = socket.socket(socket.AF_INET, # Internet
                         socket.SOCK_DGRAM) # UDP
   sock.sendto(s, (UDP_IP, UDP_PORT))
if __name__ == "__main__":
   main(sys.argv[1:])
