########################################################################
#
# dart8.xls
#
########################################################################

rm(list=ls())
library(XLConnect)
wb <- loadWorkbook("../dataset/dart8.xls")
tmp <- readWorksheet(wb, sheet=getSheets(wb))
mydata <- do.call(rbind, tmp)
names(mydata)[1] <- c("년도별분기")
mydata$여행사 <- do.call(rbind, strsplit(rownames(mydata), ".", fixed=TRUE))[,1]
mydata$번호 <- do.call(rbind, strsplit(rownames(mydata), ".", fixed=TRUE))[,2]
rownames(mydata) <- NULL
yrQ <- as.data.frame(do.call(rbind, strsplit(as.character(mydata$년도별분기), ".", fixed=TRUE)))
names(yrQ) <- c("년도", "분기")
mydata <- data.frame(mydata, yrQ)
mydata <- mydata[,-1]
mydata$분기 <- factor(mydata$분기, levels=c("03", "06", "09", "12"), labels=c("1분기", "2분기", "3분기", "4분기"))
mydata$여행사 <- factor(mydata$여행사)
mydatax <- na.exclude(mydata)



다트8 <- subset(mydata, subset=(년도 %in% c("2008", "2009", "2010") & 분기 %in% c("1분기", "3분기")))
다트8.1 <- 다트8[order(다트8$년도),]
다트8.1$first <- !duplicated(다트8.1$년도)
다트8.1$last <- !duplicated(다트8.1$년도, fromLast=TRUE)

다트8.2 <- 다트8.1[c(FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE)]
다트8.3 <- 다트8.2[order(다트8.2$여행사, 다트8.2$년도), ]
다트8.3$first <- !duplicated(다트8.3$여행사)
다트8.3$last <- !duplicated(다트8.3$여행사, fromLast=TRUE)
다트8.4 <- subset(다트8.3, subset=(first == TRUE | last == TRUE))



예제1 <- subset(mydata, subset=(년도=="2010" & 분기=="1분기"))
예제1 

cairo_ps(filename="../img/plot-00.eps")
with(예제1, plot(x=광고선전비, y=매출액, main="산점도", xlab="광고선전비 (백만원)", ylab="광고선전비 (백만원)"))
dev.off()


par(las=1, mar=c(4,4,3,2))
cairo_ps(filename="../img/plot-01.eps")
with(예제1, plot(x=광고선전비, y=매출액, type="n", xlab="", ylab="", axes=FALSE))
dev.off()

cairo_ps(filename="../img/plot-02.eps")
with(예제1, plot(x=광고선전비, y=매출액, type="n", xlab="", ylab="", axes=FALSE))
grid()
dev.off()

cairo_ps(filename="../img/plot-03.eps")
with(예제1, plot(x=광고선전비, y=매출액, type="n", xlab="", ylab="", axes=FALSE))
grid()
with(예제1, points(x=광고선전비, y=매출액))
dev.off()

cairo_ps(filename="../img/plot-03.eps")
with(예제1, plot(x=광고선전비, y=매출액, type="n", xlab="", ylab="", axes=FALSE))
grid()
with(예제1, points(x=광고선전비, y=매출액))
dev.off()

cairo_ps(filename="../img/plot-04.eps")
with(예제1, plot(x=광고선전비, y=매출액, type="n", xlab="", ylab="", axes=FALSE))
grid()
with(예제1, points(x=광고선전비, y=매출액))
axis(1)
dev.off()

cairo_ps(filename="../img/plot-05.eps")
with(예제1, plot(x=광고선전비, y=매출액, type="n", xlab="", ylab="", axes=FALSE))
grid()
with(예제1, points(x=광고선전비, y=매출액))
axis(1)
axis(2)
mtext("광고선전비 (백만원)", side=1, line=3)
mtext("매출액 (백만원)", side=2, line=3, las=0)
dev.off()

cairo_ps(filename="../img/plot-06.eps")
with(예제1, plot(x=광고선전비, y=매출액, type="n", xlab="", ylab="", axes=FALSE))
grid()
with(예제1, points(x=광고선전비, y=매출액))
axis(1)
axis(2)
mtext("광고선전비 (백만원)", side=1, line=3)
mtext("매출액 (백만원)", side=2, line=3, las=0)
box()
title(main="산점도")
dev.off()

cairo_ps(filename="../img/plot-07.eps")
with(예제1, plot(x=광고선전비, y=매출액, type="n", xlab="", ylab="", axes=FALSE))
grid()
with(예제1, points(x=광고선전비, y=매출액))
axis(1)
axis(2)
mtext("광고선전비 (백만원)", side=1, line=3)
mtext("매출액 (백만원)", side=2, line=3, las=0)
box()
title(main="산점도")
with(예제1, text(x=광고선전비, y=매출액, labels=여행사, pos=4))
dev.off()


cairo_ps(filename="../img/plot-08.eps")
with(예제1, plot(x=광고선전비, y=매출액, type="n", xlab="", ylab="", axes=FALSE))
grid()
with(예제1, points(x=광고선전비, y=매출액))
axis(1)
axis(2)
mtext("광고선전비 (백만원)", side=1, line=3)
mtext("매출액 (백만원)", side=2, line=3, las=0)
box()
title(main="산점도")
with(예제1, text(x=광고선전비, y=매출액, labels=여행사, pos=4))
abline(lm(매출액 ~ 광고선전비, data=예제1))
dev.off()



cairo_ps(filename="../img/plot-01.eps")
dev.off()



with(예제, plot(x=광고선전비, y=매출액, type="n"))
grid()
with(예제, points(x=광고선전비, y=매출액))





예제 <- subset(mydata, subset=(여행사 == "하나투어"))

> 예제 <- subset(mydata, subset=(여행사 == "하나투어"))
> 예제
   광고선전비 교육훈련비      매출액   여행사 번호 년도  분기
1   161702806   18002000  5616224889 하나투어    1 2000 4분기
2    80485618   28146500  7188763335 하나투어    2 2001 1분기
3   170827271   12965900  7948588645 하나투어    3 2001 2분기
4    65667863   26468000 11509839298 하나투어    4 2001 3분기
5    27804868   16838062  7799015935 하나투어    5 2001 4분기
6    81945640   12752112 10491229385 하나투어    6 2002 1분기
7   303080492    8428100 10962473266 하나투어    7 2002 2분기
8   438342395    3475560 18635461755 하나투어    8 2002 3분기
9   528533759    8138020 12683418184 하나투어    9 2002 4분기
10  429523269   14535990 14859884927 하나투어   10 2003 1분기
11   64015168    5109500  7029384084 하나투어   11 2003 2분기
12  336786062   11394917 20892617700 하나투어   12 2003 3분기
13  438942853   14812754 15647266644 하나투어   13 2003 4분기
14  315572853   10338300 17635564925 하나투어   14 2004 1분기
15  758663210   21191288 15474196887 하나투어   15 2004 2분기
16 1153100003    5783080 26788322244 하나투어   16 2004 3분기
17 1034522413   54309865 19861453701 하나투어   17 2004 4분기
18  641446421    5388960 23268279482 하나투어   18 2005 1분기
19 1165252715   45028986 22965942213 하나투어   19 2005 2분기
20  992627324   11348510 37673171188 하나투어   20 2005 3분기
21 1372387152   62163640 27122123547 하나투어   21 2005 4분기
22  920580625   13672836 39746045641 하나투어   22 2006 1분기
23 2123930825  132961683 31913477123 하나투어   23 2006 2분기
24 1928612977    2985880 48605117233 하나투어   24 2006 3분기
25 2393203854  102367110 46035346970 하나투어   25 2006 4분기
26 1239215427   35432682 49819661853 하나투어   26 2007 1분기
27 2058854025   94954440 42425180001 하나투어   27 2007 2분기
28 1741477478          0 60634299844 하나투어   28 2007 3분기
29 1771196490   40011868 46418905817 하나투어   29 2007 4분기
30 1432606264   10453124 57624282255 하나투어   30 2008 1분기
31 2098126845   65203394 43908392041 하나투어   31 2008 2분기
32 1398280115   15837118 43516939794 하나투어   32 2008 3분기
33  727493963   -3735654 27729106510 하나투어   33 2008 4분기
34  528828105   10678454 30625278205 하나투어   34 2009 1분기
35 1005134062    4777258 29636267486 하나투어   35 2009 2분기
36  679725152    5375226 34845539027 하나투어   36 2009 3분기
37  528153534  -20830938 28792370983 하나투어   37 2009 4분기
38 1055742790   44554342 48480421492 하나투어   38 2010 1분기
39 2611994098   34151731 48451368536 하나투어   39 2010 2분기
40 1723098483          0 66245202818 하나투어   40 2010 3분기
41 2930265435   98244331 54941857566 하나투어   41 2010 4분기
42 2449466000   36710000 63509496808 하나투어   42 2011 1분기
43 2818383000   58809000 47554958058 하나투어   43 2011 2분기
44 2357446000   27714000 66186330843 하나투어   44 2011 3분기
> 

jpeg(filename="../img/plot01.jpeg")
with(예제, plot(광고선전비, 매출액))
dev.off()


cairo_ps(filename="../img/plot-01.eps")
with(예제, plot(광고선전비, 매출액))
dev.off()


cairo_ps(filename="../img/plot-02.eps")
with(예제, plot(x=광고선전비, y=매출액, main="하나투어"))
dev.off()


cairo_ps(filename="../img/plot-03.eps")
with(예제, plot(x=광고선전비, y=매출액, main="하나투어", xlab="광고선전비 (백만원)", ylab="매출액 (백만원)"))
dev.off()


par1 <- par(las=1, mar=c(4,4,3,2))


with(예제, plot(x=광고선전비, y=매출액, type="n"))
grid()
with(예제, points(x=광고선전비, y=매출액))
abline(lm(매출액 ~ 광고선전비), data=예제)


main="하나투어", xlab="광고선전비 (백만원)", ylab="매출액 (백만원)"))















data(cars)


rm(list=ls())
data(cars)

fl <- names(postscriptFonts())
for(i in fl){
par(family=i)
fname <- paste("../img/img-", i,".eps", sep="")
# postscript(file="../img/img01.eps") # , family="Korea1deb")
postscript(file=fname)
tryCatch( plot(cars, main='한국어'), error=function(e) print("FAIL") )
dev.off()
}
\begin{Schunk}
\begin{Soutput}
> library(XLConnect)
> tmp <- readWorksheetFromFile(file="dart8.xls", sheet=1)
> 
\end{Soutput}
\end{Schunk}
> head(tmp)
> tail(tmp)



