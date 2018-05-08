#!/usr/bin/python3
x=1
y=1

n=10

if n == 1:
   print(x)
elif n ==2:
   print(x)
   print(y)
else: 
   print(x)
   print(y)
   for i in range(3,n):
      z=x+y
      x=y
      y=z
      print(z)


