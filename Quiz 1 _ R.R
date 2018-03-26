# Question 1:
Fibonacci = function(n){
    x=c(1,1)
    while (length(x)<n){
        a = length(x)
        b = x[a] + x[a-1]
        x = c(x,b)
    }
    return(x)
}
Fibonacci(10)

#Question 3:
# Part a:
# Importing data
dataset = read.csv("PersonenSchaden.csv",header = T,na.strings = "?")

# Part b:
# Mean
mean(dataset$total)

# Variance
var(dataset$total)

# Standard deviation:
sd(dataset$total)

# The largest settled claim:
max(dataset$total,na.rm = TRUE)

# The smallest settled claim: 
min(dataset$total,na.rm = TRUE)

#Quantiles:
quantile(dataset$total)

# Part c: Plot histogram of the dollar value of the claims:
hist(dataset$total, 
     main="Histogram of Claim Amount",
     xlab="Claim amount", nclass = 100)

#Part d: Plot a histogram of the settlement delay:
attach(dataset)
View(dataset)
Settlement_delay <- finmonth - accmonth
hist(Settlement_delay,nclass = 100, main = "Settlement delay", 
     xlab = "Month", col="blue")

# Part e:

legrep_hist = hist(legrep,
                   freq = FALSE, plot = FALSE)
legrep_hist$counts = legrep_hist$counts/sum(legrep_hist$counts)
plot(legrep_hist, main =" Histogram of legal representation", 
     ylab = "Proportion of total claims", xlab = "legrep")
# Part f:
injurycode_hist = hist(rbind(inj1,inj2, inj3, inj4, inj5), freq = FALSE)
injurycode_hist$counts = injurycode_hist$counts/sum(h$counts)
plot(injurycode_hist, main ="Histogram of the proportion of various injury codes",
     xlab = "Injury code", ylab = "Proportion of total claim")

# Part h: 
a = log(total)
hist(a, main = "Histogram of the log dollar value of the claims",
     xlab = "log of total claim", nclass = 100)

# Part i:
#1
plot(op_time,total, 
     main = "Claim size against operational time", 
     xlab="Operational time", ylab="Claim size")
#2
plot(op_time,a,
     main = "Log of claim size against operational time",
     xlab="Operational time",
     ylab="Log of claim size")

# Part k:
plot(op_time,log(total),col=ifelse(legrep == 1,"green","red"))

