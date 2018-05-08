#!/usr/bin/python3
#Import the tax rate as well as the range applied:
Limit_1=18200
Limit_2=37000
Limit_3=87000
Limit_4=180000

Rate_1=0
Rate_2=0.19
Rate_3=0.325
Rate_4=0.37
Rate_5=0.45

Extra_1=3572
Extra_2=19822
Extra_3=54532
#Read the amount of tax payable:
income=int(input('Enter your income: '))

#Compute the amount of tax payable and the income after tax:
if income<Limit_1:
   tax=Rate_1*income
   incomeaftertax=income-tax
elif income<Limit_2:
   tax=(income-Limit_1)*Rate_2
   incomeaftertax=income-tax
elif income<Limit_3:
   tax=(income-Limit_2)*Rate_3+Extra_1
   incomeaftertax=income-tax
elif income<Limit_4:
   tax=(income-Limit_3)*Rate_4+Extra_2
   incomeaftertax=income-tax
else:
   tax=(income-Limit_4)*Rate_5+Extra_3
   incomeaftertax=income-tax
#Print the rresult out:
print('Your tax is ',tax)
print('Your income after tax is ',incomeaftertax)


