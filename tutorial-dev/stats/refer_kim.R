#ŽöŒº¿©Žë Á€ºžÅë°èÇÐ°ú ±èÀçÈñ ±³ŒöÀÇ "(RÀ» ÀÌ¿ëÇÑ)Åë°èÇÁ·Î±×·¡¹Ö ±âÃÊ"ÀÇ ÄÚµåžŠ µû¿Â °ÍÀÓ.

#ŽÜŒø°è»ê

2+3
2^3
1/2
3-2*1+4

#ÇÔŒöžŠ ÀÌ¿ëÇÑ °è»ê

sqrt(2)
sin(pi)
exp(1)
log(10, base=10)
log(10, base=2)
log(10)
abs(-2)
factorial(5)
choose(5, 2)

#ÇÒŽç

x.const_1 <- 3
x.const_1
x <- 3
x
x+4
e <- exp(1)
x <- 3
y <- 4
print(y)

rm(x); rm(y)

memory.size(max=TRUE)

#c()žŠ ÀÌ¿ëÇÏ¿© µ¥ÀÌÅÍ º€ÅÍ žžµé±â

k_score1 <- c(96, 80, 76, 96, 88, 75, 78, 89, 92, 70)
k_score2 <- c(67, 83, 96, 90, 85, 75, 82, 89, 92, 75)
score <- c(k_score1, k_score2)
score

#µ¥ÀÌÅÍÀÇ ÇüÅÂ

y <- c(1, 5, 3)
family <- c("kim", "lee", "chulsu", "younghee")
names(family) <- c("father", "motehr", "son", "daughter")
family

x <- c("Kim", 2, 3)
x

c(T, F, F, F, T, T, F)
x <- -3:3
x
w <- x<2
w
sum(w)

#µ¥ÀÌÅÍÀÇ ÇüÅÂ º¯È¯

fact <- c(1, 2, 3)
fact
fact1 <- as.factor(fact)
fact1

f.log <- as.logical(fact)
f.log
exp.fact <- factor(c("exp1", "ecp2"))
fact2 <- as.numeric(exp.fact)
fact2

#¹Ý¿Ãž²

a <- c(-2.456, 3.6789, 5.23445676)
ceiling(s)
floor(a)
trunc(a)
round(a)
aa <- round(a, digits=2)
aa

#±âÃÊÅë°è·®

k_score <- c(96, 80, 76, 96, 88, 75, 78, 89, 92, 70)
sum(k_score)
mean(k_score)
max(k_score)
min(k_score)
range(k_score)
var(k_score)
sd(k_score)
median(k_score)
rank(k_score)
length(k_score)

#apply()

x <- cbind(x1=3, x2=c(4:1, 2:8))
dimnames(x)[[1]] <- letters[1:11]
x

apply(x, 2, mean)
col.sums <- apply(x, 2, sum)
row.sums <- apply(x, 1, sum)
col.sums
row.sums

#aggregate()

library(MASS)
data(cabbages)
attach(cabbages)
cabbages
cabbages.mean <- aggregate(HeadWt, list(Cult, Date), FUN="mean")
names(cabbages.mean)
cabbages.mean

#ÇÊ¿äÇÑ µ¥ÀÌÅÍžž Œ±ÅÃÇÏ±â

cabbages1 <- cabbages[(cabbages$Date=="d16"), ]
cabbages1
cabbages2 <- cabbages[(cabbages$VitC >= 50), ]
cabbages2
cabbages3 <- cabbages[(cabbages$Date=="d16") & (cabbages$VitC >= 60), ]
cabbages3

#ŒøŒ­ÇÔŒö

id <- c(1, 2, 3, 4, 5)
a <- c(4, 9, 7, 2, 8)
da <- cbind(id, a)
da

a_s <- sort(a)
a_s

da_s <- da[order(a), ]
da_s

x <- c(11, 24, 24, 30, 30, 30)
rank(x)
order(x)

#±žÁ¶ÀûÀÎ µ¥ÀÌÅÍ žžµé±â
1:10
sqp(1, 10)
rev(1:10)
10:1
seq(1, 10, by=2)
seq(from=5, to=22, by=2)
rep(1, 10)
rep(1:3, 3)
rep(c(2, 3, 5), 4)
a <- rep(0, 12)
a

#µ¥ÀÌÅÍ º€ÅÍ ŽÙ·ç±â

x <- c(100, 120, 130, 124, 150, 167, 170, 163, 160, 155, 145, 157)
x[1]
x[9]
x[1:3]
x[c(6, 7, 9)]
names(x) <- seq(1, 12)
x
xm1 <- x[-1]
xm1
xm2 <- x[-c(1, 12)]
xm2
xx <- x[x!=150]
xx
xp <- x[x>=150]
xp

#º€ÅÍ¿Í Çà·ÄÀÇ ±âº»¿¬»ê

x <- c(1, 2, 3, 4, 5)
y <- c(-1, -2, -3, -4, -5)
x+y
t(x)%*%y
x%*%t(x)
x*y

temp <- c(x, y)
temp1 <- cbind(x, y)
temp2 <- rbind(x, y)
temp1*temp1
t(temp1)
t(temp1)%*%temp1
dim(temp1)

#¿ªÇà·Ä

a1 <- c(34.74, 15.66)
a2 <- c(15.66, 378.6)
s <- rbind(a1, a2)
s
library(MASS)
ginv(s)

#

eigen(s)
lambda <- eigen(s)
attributes(lambda)
lambda$values[1]
lambda$values[2]
lambda$vectors[1, ]
lambda$vectors[2, ]

#¹è¿­

g <- array(1:24, c(4, 3, 2))
g
g[1, , ]
g[, , 1]
g[, 1, ]
x <- array(1:120, c(5, 4, 3,2))

#for()žŠ ÀÌ¿ëÇÑ looping

for(i in 1:4)
print(i)

start <- 100
end <- 200
isum <- 0
for(i in start:end)
isum <- isum+i
print(isum)

x <- c(5, 6, 7, 8)
n <- length(x)
xx <- rep(0, n)
for(j in 1:4){
xx[j]=x[j]^2
print(xx[j])
}

transport <- c("bus", "subway", "car", "bike")
for(vehicle in transport){
print(vehicle)
}
##À§¿¡°Ç ¿Ö ÇÑ°ÅÁö? µµŽëÃŒ ÀÌÇØ°¡....

#whle()À» ÀÌ¿ëÇÑ looping

n <- 0
sum.sofar <- 0
while(sum.sofar <= 100){
n=n+1
sum.sofar=sum.sofar+n
}
print(n)
print(sum.sofar)

#repeat()žŠ ÀÌ¿ëÇÑ looping

n <- 0
sum.sofar <- 0
repeat{
n <- n+1
sum.sofar <- sum.sofar+n
if(sum.sofar > 100) 
break
}
print(n)
print(sum.sofar)

#if else

x <- c(1, -2, -3, 4, 5)
pos <- rep(0, 5)
for(i in 1:5){
if(x[i] > 0) pos[i]=1
else pos[i]=0
}
print(pos)

#°áÃø°ª

x <- c(1, 6, 2, NA)
is.na(x)
x[x>2]
mean(x)
mean(x, na.rm=TRUE)
xx <- na.omit(x)
xx
x
r <- rank(x)
r
r <- rank(x, na.rm=TRUE)
r

#µ¥ÀÌÅÍÇÁ·¹ÀÓ

data(ORchardSprays)
OrchardSprays

#³»ÀåµÈ µ¥ÀÌÅÍŒÂ ÀÐ±â

data(Orange)
Orange[1, ]

#µ¥ÀÌÅÍ ÆÄÀÏ ÀÐ±â¿Í °á°ú ÆÄÀÏ žžµé±â

zzz <- read.table(" /text.txt", header=TRUE)
attributes(zzz)
zzz$x
zzz$x[1]
zzz[[1]]
zzz[[3]]
x <- zzz$x
y <- zzz$y

zz1 <- read.csv(file=" /test.csv", header=TRUE, sep=",")
zz2 <- read.csv(" /test.csv", header=TRUE, sep=",")

#°á°ú ÆÄÀÏ žžµé±â

cat("data set example", "\n", "x=", zzz$x, "\n", "y=", zzz$y, 
file="testout.txt")
cat("This is result.", "\n", x, file=" /testout2.txt", append=TRUE)
cat("This is result.", "\n", x)
print(x)
mydf <- c(1, 2, 3)
write.table(mydf, " /mydf.csv", sep=",", row.naems=FALSE)
my <- c(4, 5, 6)
mm <- cbind(mydf, my)
write.table(mm, " /mydftest.csv", sep=",", row.names=FALSE)

#µ¥ÀÌÅÍŒÂ ÇÕÄ¡±â
##ÄÚµå ŒöÁ€ ÇÊ¿äÇÔ.
##"l"ÀÌ ¹¹Ÿß?! ŸÆ¹«·± Œ³žíÀÌ ŸøÀœ.

authors <- data.frame(
surname <- l(c("Tukey", "Venables", "Tierney", "Ripley", "McNeil")),
nationality <- c("US", "Australia", "US", "UK", "Australia"))
books <- data.frame(
name <- l(c("Tukey", "Venables", "Tierney", "Ripley", "McNeil")),
year <- (c(1976, 1995, 1996, 1998, 2000))
authors
books
d <- merge(authors, books, by.x="surname", by.y="name")
d

authors <- data.frame(
surname <- l(c("Tukey", "Venables", "Tierney", "Ripley", "McNeil")),
nationality <- c("US", "Australia", "US", "UK", "Australia")
)
books2 <- data.frame(
name <- l(c("Tukey", "Venables", "Tierney", "Ripley", "McNeil")),
year <- c(1976, 1995, 1996, 1998, 2000, 2008)
)
authors
books2
d2 <- merge(authors, books2, by.x="surname", by.y="name")
d2
d3 <- merge(authors, books2, by.x="surname", by.y="name", all=TRUE)
d3

#°ŽÃŒ °üž®

ls()

#°£ŽÜÇÑ ±×·¡ÇÁ

demo(graphics)
demo(persp)

plot(x, y)
plot(y~x)

x <- (0:20)*pi/10
y <- cos(x)
plot(x, y)
ysin <- sin(x)
plot(x, ysin)

par(mfrow <- c(2, 1))
x <- (0:20)*pi/10
y <- cos(x)
ysin <- sin(x)
plot(x, y); text(3, 0, "cos(x)")
plot(x, ysin); text(5, 0.5, "sin(x)")

##ŸÆ ÀÌ Ã¥ Ÿ²·¹±â³×... µÚÁö°Î³×...

x <- (0:20)*pi/10
y <- cos(x)
ysin <- sin(x)
ysin2 <- sin(x)^2
par(mfrow <- c(1, 2))
yy <- cbind(y, ysin, ysin2)
matplot(x, yy, tyhpe="pll", pch="*")
plot(x, y)
lines(x, ysin, type="p", pch="*")
lines(x, ysin2)

par(mfrow <- c(2, 2))
plot(x, y, type="p")
plot(x, y, type="l")
plot(x, y, type="b")
plot(x, y, type="p", pch=19, col="red")

plot(c(0, 7), c(1, 7), type="n", ylab" ", xlab=" ", axes=FALSE, main="line type")
for(i in 1:6){
lines(c(0, 7), c(i, i), lty=i)
axis(2, at=i, labels=paste("lty=", i), las=1)
}

op <- par(mfrow <- c(2, 2))
plot(x, y, type="b", main="cosine graph", sub="type=b")
plot(x, y, type="o", las=1, bty="u", sub="type=o")
plot(x, y, type="h", bty="7", sub="type=h")
plot(x, y, type="s", bty="n", sub="type=s")
par(op)

plot(x, y)
abline(a, b)
abline(h=y)
abline(v=x)
abline(lm.obj)

data(cars)
attach(cars)
mean(speed)
mean(dist)

par(mfrow <- c(2, 2))
plot(speed, dist, pch=1)
abline(v=15.4)
plot(speed, dist, pch=2)
abline(h=42.98)
plot(speed, dist, pch=3)
abline(-17, 4)
plot(speed, dist, pch=8)
abline(v=15.4)
abline(h=42.98)

#primates.csv
#animal bodywt brainwt
#potar monkey 10 115
#gorilla 207 406
#human 62 1320
#Rhesus monkey 6.8 179
#chimp 52.2 440

pr <- read.csv(" /primates.csv", header=TRUE)
attach(pr)
win.graph()
plot(x=bodywt, y=brainwt, pch="*", xlab="Bodyweight",
ylab="Brain weight, xlim=c(0, 250), ylim=c(0, 1400), sub="primates")

#ÀÏŽÜ ±×·¡ÇÈÀº œºÅµ... €»€»€»
#³­ ±×·¡ÇÈ œÃ·¯~~~

#Á€±ÔºÐÆ÷

rnorm(1, 100, 16)
rnorm(5, mean=280, sd=10)
pnorm(265.5393, mean=280, sd=10)
qnorm(0.05, mean=0, sd=1)
qnorm(0.95, mean=0, sd=1)
qnorm(0.975, mean=0, sd=1)
dnorm(0, mean=0, sd=1)

x <- rnorm(100)
hist(x, probability=TRUE, col=gray(0.9), main="normal mu=0. sigma=1")
curve(dnorm(x), add=T)

#tºÐÆ÷

dt(x, df=a)
pt(q, df=a)
qt(p, df=a)
rt(n, df=a)

#±ÕÀÏºÐÆ÷

dunif(x, min=0, max=1)
punif(q, min=0, max=1, lower.tail=TRUE)
qunif(p, min=0, max=1, lower.tail=TRUE)
runif(n, min=0, max=1)

#ÁöŒöºÐÆ÷

dexp(x, rate=1, log=FALSE)
pexp(q, rate=1, lower.tail=TRUE, log.p=FALSE)
qexp(p, rate=1, lower.tail=TRUE, log.p=FALSE)
rexp(n, rate=1)

par(mfrow <- c(2, 2))
x <- rt(1000, df=5)
y <- dt(x, df=5)
plot(x, y, sub="t-dist")
x <- rnorm(1000, 0, 1)
y <- dnorm(x, 0, 1)
plot(x, y, sub="standard normal dist")
x <- rexp(1000, rate=1)
y <- dexp(x, rate=1)
plot(x, y, sub="exponential dist")
x <- rpois(1000, lambda=3)
y <- dpois(x, lambda=3)
plot(x, y, sub="Poisson dist")

#º£ž£Ž©ÀÌ ºÐÆ÷¿Í ÀÌÇ×ºÐÆ÷

bin <- dbinom(0:5, size=10, prob=0.3)
bin
names(bin) <- 0:5
bin
x <- c(1, 6, 8)
pbinom(x, size=10, prob=0.2)
x <- c(0.2, 0.5, 0.8)
qbinom(x, size=10, prob=0.5)
rbinom(5, size=10, prob=0.3)

#Æ÷ŸÆŒÛºÐÆ÷

qpois(0.2, lambda=3)
ppois(1:4, lambda=3)
rpois(10, lambda=3)

plot(table(rpois(100, 3)), type="h", col="red", lwd=1o, main="rpois(100, lambda=3)")

#È÷œºÅä±×·¥À» ÀÌ¿ëÇÑ Á€±ÔŒº °ËÅä

par(mfrow <- c(2, 3))
x <- seq(6.5, 13.5, by=0.01)
for(i in 1:5){
y <- rnorm(50, mean=10, sd=1)
hist(y, prob=TRUE, xlim=c(6.5, 13.5), ylimc(0, 0.5))
lines(x, dnorm(x, 10, 1))
}

x <- rnorm(20)
hist(x)
qqnorm(x)
qqline(x)

x <- rnorm(10)
x
shapiro.test(x)

par(mfrow <- c(2, 2))
x <- rnorm(50)
qqnorm(x, sub="Normal")
qqline(x)
x <- runif(50, min=0, max=1)
qqnorm(x, sub="Uniform")
qqline(x)
x <- rexp(ro, rate=1)
qqnorm(x)
qqline(x, sub="Exponential")
x <- rpois(50, lambda=3)
qqnorm(x)
qqline(x, sub="Poisson")

#ÀÌÇ×ºÐÆ÷ÀÇ Á€±ÔºÐÆ÷ ±Ù»ç

m <- 100
n <- 5
p <- 0.5
try.n <- c(5, 10, 15, 30)
par(mfrow <- c(2, 2))
for(i in 1:4){
n=try.n[i]
res=rbinom(m, n, p)
hist(res, prob=TRUE)
curve(dnorm(x, n*p, sqrt(n*p*(1-p))), add=TRUE)
}

#ÁßœÉ±ØÇÑÁ€ž®¿Í žðÀÇœÇÇè

m <- 50
mx <- rep(0, m)
n.value <- c(5, 10, 15, 30, 50)
plot(0, 0, type="n", xlim=c(0, 1), ylim=c(0, 10), ylab="density",
xlab="mx", main="uniform mean to normal")
for(k in 1:length(n.value)){
n=n.value[k]
for(i in 1:m){
mx[i]=mean(runif(n, 0, 1))
}
lines(density(mx), lty=k, col=k)
}

plot(0, 0, type="n", xlim=c(0, 3), ylim=c(0, 3.7), ylab="density", xlab="mx", 
main="exponential to noraml")
for(k in 1:length(n.value)){
n=n.value[k]
for(i in 1:m){
mx[i]=mean(rexp(n, rate=1))
}
lines(density(mx), lty=k, col=k)
}

#ºÐÇÒÇ¥

res <- c("y", "n", "y", "y", "y", "n", "n", "y", "y", "y")
table(res)

#ž·Žë±×·¡ÇÁ

barplot(table(res), xlab="response", ylab="frequency")
barplot(table(res), xlab="response", ylab="frequency", horiz=T)

#ÆÄÀÌ±×ž²

pie(table(res), main="response")

#Á¡±×ž²

dotchart(table(res), main="dotchart")
sales <- c(50, 39, 47, 45)
names(sales) <- c("Amy", "John", "Jack", "Lisa")
dotchart(sales, xlab="Amount of sales", main="dotchart")

#ÁÙ±â-ÀÙ ±×ž²

x <- c(45, 86, 34, 98, 67, 78, 56, 45, 85, 75, 64, 75, 75, 75, 58, 45, 83, 74)
stem(x)
stem(x, scale=2)

#»óÀÚ±×ž²

boxplot(x, main="Box plot", sub="basketball game scores")
boxplot(x, horizontal=T, main="Box plot", sub="basketball game scores")

#È÷œºÅä±×·¥

hist(x)
hist(x, prob=TRUE, main="Histogram of scores with density line",
sub="basketball game scores")
lines(density(x))

#ÁßœÉ°æÇâ Ãøµµ: Æò±Õ, ÁßŸÓ°ª

mean(x)
median(x)

#ÆÛÁü°æÇâ Ãøµµ, ºÐ»ê, Ç¥ÁØÆíÂ÷, »çºÐÀ§Œö¹üÀ§

var(x)
sd(x)
IQR(x)
range(x)
quantile(x, c(0.1, 0.25, 0.5, 0.75, 0.9))
summary(x)

#Ç¥ÁØÈ­ Á¡Œö

y <- c(2, 5, 7, 9, 3)
scale(y)
yr <- round(scale(y), digits=2)
yr

mean(yr)
sd(yr)

#œÅ·Ú±ž°£

library(plotrix)
m <- 10
meany <- rep(0, m)
std <- rep(0, m)
n <- 30
for(i in 1:m){
y=rnorm(n)
meany[i]=mean(y)
std[i]=mean(y)
std[i]=sd(y)/sqrt(n)
}
par(mfrow <- c(1, 2))
plotCl(1:10, meany, std, main="confidence intervals")
abline(h=0)
plotCl(meany, 1:10, 2*std, pch=21, err="x",
main="Cl with horizontal bars")
abline(v=0)
plotCl(1:10, meany, @*std, lwd=2, col="red", scol="blue")

#¹üÁÖÇü µ¥ÀÌÅÍÀÇ ÀÌ¿øºÐÇÒÇ¥

matrix(c(54, 3, 7, 12), nc=2)
rbind(c(54, 7), c(3, 12))
cbind(c(54, 3), c(7, 12))

x <- matrix(c(54, 3, 7, 12), nc=2)
rownames(x) <- c("p.buckled", "p.unbuckled")
colnames(x) <- c("c.buckled", "c.unbuckled")
x

margin.table(x, 1)
margin.table(x, 2)
colSums(x)
rowSums(x)
addmargins(x)
prop.table(x)
par(mfrow <- c(1, 2))
barplot(x, main="child seat-belt usage")
barplot(x, main="child seat-belt usage", legend.text=T, beside=TRUE)

nico <- read.table(file=" /nocotin.csv", sep=",", header=T)
attach(nico)
y <- table(nicotin, stopsmoke)
prop.table(y)
detach(nico)

#»ó°ü°èŒö

#blood
#id machine expert
#1 68 72
#2 82 84
#3 94 89
#4 106 100
#5 92 97
#6 80 88
#7 76 84
#8 74 70
#9 110 103
#10 93 84
#11 86 86
#12 65 63
#13 74 69
#14 84 87
#15 100 93

blood <- read.table(" /blood.txt", header=TRUE)
attach(blood)
rowMeans(blood[, 2:3])
colMeans(blood[, 2:3])
cor(machine, expert)
plot(machine, expert, main="blood pressure measurement")
par(mfrow <- c(1, 2))
boxplot(machine, expert, names=c("machine", "expert"))
plot(density(machine), ylim=c(0, 0.04), main="density plots")
lines(density(expert), lty=2)
cor(machine, expert, method="spearman")
cor.test(machine, expert)

x <- machine
y <- expert
zones <- matrix(c(2, 0, 1, 3), ncol=2, byrow=TRUE)
layout(zones, widths=c(2/3, 1/3), heights=c(1/3, 2/3))
xhist <- hist(x, plot=FALSE)
yhist <- hist(y, plot=FALSE)
top <- max(c(xhist$counts, yhist$counts))
xrange <- c(min(x), max(x))
yrange <- c(min(y), max(y))
par(mar <- c(6, 6, 1, 1))
plot(x, y, xlim=xrange, ylim=yrange)
par(mar <- c(0, 6, 1, 1))
barplot(xhist$counts, axes=FALSE, ylim=c(0, top), space=0, col="green")
title("Scatterplot with marginal histograms")
par(mar <- c(6, 0, 1, 1))
barplot(yhist$counts, axes=FALSE, xlim=c(0, top), space=0, horiz=TRUE, col="yellow")

#ÀÏÁýŽÜ t-°ËÁ€

x <- c(8.30, 9.50, 9.60, 8.75, 8.40, 9.10, 8.15, 8.80)
t.test(x, mu=8.5)

z <- (mean(x)-8.5)/(1/sqrt(8))
pz <- pnorm(z, 0, 1)
z
pz
pvalue <- 2*(1-pz)
pvalue

library(UsingR)
mean(x)
simple.z.test(x, 1, conf.level=0.95)

#ÀÌÁýŽÜ t-°ËÁ€

#		ÁöÇ÷œÃ°£
#ÁöÇ÷ÁŠA 1.1 2.3 4.3 2.2 5.3
#ÁöÇ÷ÁŠB 2.3 4.3 3.5

x1 <- c(1.1, 2.3, 4.3, 2.2, 5.3)
x2 <- c(2.3, 4.3, 3.5)
t.test(x1, x2, var.equal=TRUE, alternative="two.sided")
t.test(x1, x2, var.equal=FALSE, conf.level=0.95)
t.test(x1, x2, var.equal=TRUE, alt="greater")
t.test(x1, x2, var.equal=TRUE, alt="less")

#method.txt
#method x
#1 19.1
#1 32.8
#1 27.6
#1 25.9
#1 28.5
#2 17.0
#2 16.4
#2 16.8
#2 15.3

dd <- read.table(" /method.txt", header=T)
t.test(x~method, var.equal=T, data=dd)
t.test(dd$x~dd$method, var.equal=T)
t.test(x~method, var.equal=F, data=dd)

#ÀÌÁýŽÜ ºÐ»êºñ F-°ËÁ€

var.test(x1, x2)

#ÂŠÁöŸîÁø Ç¥º»¿¡ ŽëÇÑ t-°ËÁ€

#œÃÇè	Á¡Œö
#pre	77 56 64 60 58 72 67 78 67 79
#post 99 80 78 65 59 67 65 85 74 80

pre <- c(77, 56, 64, 60, 58, 72, 67, 78, 67, 79)
post <- c(99, 80, 78, 65, 59, 67, 65, 85, 74, 80)
t.test(post, pre, paired=T)

#ÀÏÁýŽÜ ºñÀ²¿¡ °üÇÑ °ËÁ€

prop.test(x=110, n=150, p=0.85, alt="two.sided")

p0 <- 0.85
n <- 150
x <- 110
sd <- sqrt(p0*(1-p0)/n)
z <- (x/n-p0)/sd
pvalue <- 2*(pnorm(z))
pvalue

prop.test(x=110, n=150, p=0.85, alt="less")

#ÀÌÁýŽÜ ºñÀ²¿¡ ŽëÇÑ °ËÁ€

phat <- c(100/300, 170/400)
n <- c(300, 400)
prop.test(n*phat, n, alt="two.sided")

#Ä«ÀÌÁŠ°ö µ¶ž³Œº °ËÁ€

x <- matrix(c(54, 63, 45, 65), nc=2)
chi <- chisq.test(x)
chi
attributes(chi)
chi$observed
chi$expected
chi$residuals

x <- seq(1, 12)
gender <- c("M", "M", "M", "M", "M", "M", "F", "F", "F", "F", "F", "M")
admit <- c("Y", "Y", "Y", "N", "N", "Y", "Y", "Y", "N", "N", "Y", "Y")
y <- cbind(x, gender, admit)
table(gender, admit)
chisq.test(gender, admit)

y <- matrix(c(20, 30, 20, 25, 30, 20, 20, 35, 37, 31, 16, 29, 40, 45, 30, 
9, 10, 35, 37, 31, 10, 10, 26, 39, 40), nr=5)
chi_sa <- chisq.test(y)
chi_sa

#Ä«ÀÌÁŠ°ö ÀûÇÕµµ °ËÁ€

y <- c(30, 20, 27, 23)
p <- c(0.25, 0.25, 0.25, 0.25)
chisq.test(y, p=p)

library(UsingR)
data(pi2000)

table(pi2000)
chisq.test(table(pi2000), p <- c(0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1))

library(UsingR)
data(samhda)
attach(samhda)
y <- table(amt.smoke[amt.smoke < 98])
y

p <- c(0.2, 0.15, 0.05, 0.05, 0.1, 0.15, 0.3)
chisq.test(y, p=p)

z <- table(amt.alcohol[amt.alcohol < 98])
z
pz <- (0.01, 0.04, 0.05, 0.1, 0.1, 0.3, 0.4)
a <- chisq.test(z, p=pz)
a
a$expected

#ŽÜŒøŒ±ÇüÈž±ÍžðÇü

x <- c(1.9, 0.8, 1.1, 0.1, -0.1, 4.4, 4.6, 1.6, 5.5, 3.4)
y <- c(0.7, -1.0, -0.2, -1.2, -0.1, 3.4, 0.0, 0.8, 3.7, 2.0)
out <- lm(y~x)
summary(out)
plot(x, y)
abline(out)
pred_y <- predict(out, newdata=data.frame(x=x))
pred_y
pred_1 <- predict(out, newdata=data.frame(x=2.3))
pred_1

pred <- predict(out, newdata=data.frame(x=c(1, 2.2, 6.7)))
pred

#분산분석

data(InsectSprays)
aov.spray1 <- aov(count ~ spray, data=InsectSprays)
aov.spray1
aov.spray2 <- aov(InsectSprays$count ~ InsectSprays$spray)
par(mfrow = c(2, 2))
plot(aov.spray1)

## one-way anova

a <- c(100, 96, 98, 96, 92)
b <- c(76, 80, 84, 84, 78)
c <- c(108, 100, 101, 98, 96)
life <- data.frame(a, b, c)
b.life <- stack(life)
par(mfrow = c(1, 2))
boxplot(value ~ ind, data=b.life)
stripchart(life)
oneway.test(values ~ ind, data=b.life, var.equal=T)

### aov(), TukeyHSD(), pairwise.t.test()의 비교

type <- c("a", "a", "a", "a", "a", "b", "b", "b", "b", "b", "c", "c", "c", "c", "c")
y <- c(100, 96, 98, 96, 92, 76, 80, 84, 84, 78, 108, 100, 101, 98, 96)
ty <- as.factor(type)
life.aov <- aov(y ~ ty)
summary(life.aov)
life.tukey <- TukeyHSD(life.aov, "th", ordered=TRUE)
life.tukey
plot(life.tukey)

#이요인 분산분석

design <- c("a", "b", "c", "a", "b", "c")
ad <- c(1, 1, 1, 0, 0, 0)
y <- c(23, 15, 18, 16, 9, 11)
design <- as.factor(design)
a <- aov(y ~ design + ad)
a
summary(a)


pressure <- rep(c(200, 220, 240), 3)
temp <- rep(c("low", "high"), each=6)
y <- c(90.4, 90.7, 90.2, 90.2, 90.1, 90.4, 92.2, 91.6, 90.5, 93.7, 91.8, 92.8)
temp <- as.factor(temp)
pressure <- as.factor(pressure)
par(mfrow <- c(2, 2))
plot(y ~ temp)
plot(y ~ pressure)
stripchart(y ~ temp, vertical=T, xlab="temperature")
stripchart(y ~ pressure, vertical=T, xlab="pressure")
par(mfwor <- c(1, 2))
interaction.plot(temp, pressure, y, bty="|", main="interaction plot")
interaction.plot(pressure, temp, y, bty="|")
aov_pt <- aov(y ~ temp + pressure + temp:pressure)
aov_pt
summary(aov_pt)

#사용자 정의 함수 만들기

my.summary <- function(x){
n=length(x)
temp=0
temp1=0
for(i in 1: n){
temp=temp+x[i]
temp1=temp1+x[i]^2
}
m=temp/n
var=(temp1-n*m^2)/(n-1)
sd=sqrt(var)
return(list(m, var, sd))
}



