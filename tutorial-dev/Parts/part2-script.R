draw.pie <- function(xpos, ypos, x, edges=200, radius=1, col=NULL,...) {

 x <- c(0, cumsum(x)/sum(x))
 dx <- diff(x)
 nx <- length(dx)

 xylim<-par("usr") # c(x1, x2, y1, y2)
 plotdim<-par("pin") # width, height
 yradius<-radius*(xylim[4]-xylim[3])/(xylim[2]-xylim[1])*plotdim[1]/plotdim[2]

 bc<-2*pi*(x[1:nx]+dx/2)

	for(i in seq_len(nx)) {
		n <- floor(edges*dx[i])
		t2p <- 2*pi*seq(x[i],x[i + 1], length=n)
		xc <- c(cos(t2p)*radius + xpos, xpos)
		yc <- c(sin(t2p)*yradius + ypos, ypos)
		polygon(xc, yc, col=rainbow(nx)[i],)
		t2p <- 2*pi*mean(x[i+0:1])
		xc <- cos(t2p)*radius
		yc <- sin(t2p)*radius
	}

 invisible(bc)
}


cairo_ps(file="JonghoonLee-2013MAY16.eps")
cairo_pdf(file="JonghoonLee-2013MAY16.pdf")
plot(data.frame(x=seq(-5,5), y=seq(-5, 5)), main="버블-파이 응용", xlab="", ylab="", type="n", sub="기본 그래픽으로 구성요소 그리기 보여줄 것")
rect(-5, -5, 0, 0,  col="green")
rect(0, 0, 5, 5, col="gray70")
draw.pie(2, 3, c(2,4,4,2,8), radius=1)
draw.pie(-3, 2, c(1,4,5,2,8), radius=0.3)
draw.pie(3, -2, c(5,1,1,2,1), radius=0.5)
dev.off()


#Then a simple function to draw a circle based on its center and its radius:
circle <- function (r, x0, y0, col){
t <- seq(0, 2 * pi, by = 0.01)
x <- r * cos(t) + x0
y <- r * sin(t) + y0
lines(x, y, col=col)
}


# gender <- rbinom(n=100, size=1, p=0.7)
# age <- t(rmultinom(n=100, size=1, prob=c(0.1, 0.2, 0.35, 0.25, 0.1)))
age <- sample(x=c(1,2,3,4,5), size=100, replace=TRUE, prob=c(0.1, 0.2, 0.35, 0.25, 0.1))
gender <- sample(x=c(1,2), size=100, replace=TRUE, prob=c(0.7, 0.3))
ptimes <- rpois(n=100, lambda=10)
pamount <- round(rnorm(n=100, mean=100, sd=10),0)
brand <- sample(x=c(1,2,3), size=100, replace=TRUE, prob=c(0.6, 0.1, 0.3))
jhl <- data.frame(age, gender, ptimes, pamount, brand)

head(jhl)

jhl.gr <- split(jhl, jhl$brand)
plot(jhl$pamount ~ jhl$ptimes*jhl$gender)
plot(jhl$pamount ~ jhl$ptimes)

draw.pie(jhl.gr[[1]]$ptimes

 plot(1:5,main="Floating Pie test",xlab="",ylab="",axes=FALSE)
 polygon(c(0,0,5.5,5.5),c(0,3,3,0),border="#44aaff",col="#44aaff")
 draw.pie(1.7,3,c(2,4,4,2,8),radius=0.5)
 draw.pie(3.1,3,c(1,4,5,2,8),radius=0.5)
