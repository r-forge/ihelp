mode(3+4)
mode(pi)
mode(3<4)
mode(T)
mode(FALSE)
mode(True)
mode(f)
mode("Hi")
mode('hi')
mode(1+4i)
storage.mode(pi)
storage.mode(1:5)


as.raw(65)
rawToChar(42)
rawToChar(as.raw(65))
charToRaw("Aa")
as.numeric(charToRaw("Aa")

char.x <- "123"
mode(char.x)
moe(char.x) <- "numeric"
char.x
mode(char.x)
double.x <- pi
storage.mode(double.x)
storage.mode(double.x) <- "integer"
double.x
raw.x <- as.raw(41)
mode(raw.x) <- "character"
raw.x
mode(raw.x) <- "numeric"
raw.x

char.x <- "123"
mode(char.x)
char.x <- as.numeric(char.x)
char.x
mode(char.x)
pi
as.integer(pi)
as.double(TRUE)
as.logical(0)

c(3.14, 5+2i, 10)
c(365, 12, "ex")
c(123, 8710, T, F)
c(T, F, 3-1i)
c(T, F, "abc")
c(2+5i, "hello", "0+4i")
c(as.raw(12), 1, 2)
c(as.raw(12), T, F)
c(as.raw(12), "one")
c(as.raw(12), 3+i)
c(as.raw(12), 3i)
c(3.4, 5)

2:6
2:-2
1:3
"a":"z"
1:3+3i
1:(3+3i)
1+2i:(3+3i)
(1+2i):(3+3i)
2i:(3+3i)


T:3
-3:F
F:T

1:5+4
1:5*4
-1:5/4
-2:5*4-1
3+5i:7+6i
(3+5i):(7+6i)
3:10+6i

seq(-pi, pi, 0.8)
seq(1, 3, .5)
seq(0, 20, length=5)
seq(3, 1)
seq(5)
seq(pi)
x <-c(1, 3, 5, 7, 9)
seq(along=x)

rep(T, 7)
rep(c(1, 2, 3), 2)
rep(3:5, 2)
rep(seq(1, 2, .5), 2)
rep(seq(1, 2, .5), each=2)
rep(c('A', 'a'), each=2, len=4)
rep(c('A', 'a'), each=2, len=7)
rep(c('A', 'a'), each=2, times=3)

scan()
scan("d:\\ex.txt")
scan("d\ex.txt")
scan("d:/ex.txt")

matrix(1:12, ncol=4, byrow=T)
mat <- matrix(LllETTERS[1:12], nrow=4, dimnames=list(
c("Row.1", "Row.2", "Row.3", "Row.4"),
c("Col.1", "Col.2", "Col.3")
)
mat
atrributes(mat)
dim(mat)
dimnames(mat)
length(mat)
mode(mat)
matrix(1:3)

rbind(1:6, rep(c(1, 2), 3))
rbind(1:4, 4:1, 1:3)
rbind(1:4, 4:1, 1:2)

cbind("Col.1"=1:3, "Col.2"=rep(2, 3), "Col.3"=c(4, 5, 6))

mat <- 1:6
mat
dim(mat) <- c(2, 3)
mat
dim(mat) <- NULL
mat

mat <- array(1:12, dim(c(3, 4))
mat
is.matrix(mat)
array(1:2, dim=c(3, 4))

ary <- array(1:24, dimc(2, 3, 4),
dimnames=list(c("ROW.1", "ROW.2"), c("COL.1", "COL.2", "COL.3"),
c("REP.1", "REP.2", "REP.3", "REP.4"))
)
ary
mode(ary)
length(ary)
dim(ary)
dimnames(ary)

lst <- list(5:10, c("A", "B", "C"),
matrix(c(T, T, F, T), nol=2))
lst
mode(lst)
length(lst)
names(lst)
my.family <- list(city="SEOUL",
parent=list(father="Jung", father.year=47, mother="Lee", mother.year=51),
child=list(son.cnt=2, son.name=c("YuChul", "WooJun"),
son.year(c(1975, 1978))
)
my.family
mode(my.family)
length(my.family)
names(my.family)

answer.vec <- c("yes", "no", "yes")
answer.fct <- factor(answer.vec)
answer.fct
length(answer.fct)
mode(answer.fct)
levels(answer.fct)
names(answer.fct)
person.vec <- c("M", "F", "M", "F", "m")
names(person.vec) <- c("1st", "2nd", "3rd", "4th", "5th")
person.fct
length(person.fct)
mode(person.fct)
levels(person.fct)
names(person.fct)

volt <- c("high", "low", "high", "middle", "middle")
voltage <- ordered(volt, levels=c("low", "middle", "high")
)
voltage
length(voltage)
mode(voltage)
levels(voltage)

height <- c(168, 182, 175, 177, 172)
weight <- c(62, 69, 65, 69, 58)
sex <- c("female", "male", "male", "male", "female")
married <- c(T, F, F, T, T)
my.df <- data.frame(height, weight, sex, married, 
row.names=c("Kim", "Lee", "Park", "Choi", "Jung")
)
my.df

length(my.df)
mode(my.df)
names(my.df)
row.names(my.df)
class(my.df)
dim(my.df)

my.df$sweight
my.df$sex
is.numeric(my.df$weight)
is.factor(my.df$sex)

my.df1 <- data.frame(height, weight, sex, married, stringAsFactors=F, 
row.names=c("Kim", "Lee", "Park", "Jung", "choi")
)
my.df1$sex
is.character(my.df1$sex)

set.seed(1)
(x <- round(runif(12, 1, 100))
)
(my.ts <- ts(x, start=2007, frequency=4)
)
ts(x, start=2010, frequency=12)
ts(x, start=2000, frequency=1)

ts(x, end=2010, frequency=1)
print(ts(x, end=2010, frequency=1), calendar=T)

length(my.ts)
mode(my.ts)
tsp(my.ts)
start(my.ts); end(my.ts); frequency(my.ts)
(mat <- matrix(1:24, ncol=2))

(my.mts <- ts(mat, start=2007, frequency=4)
)
dim(my.mts)
length(my.mts)
dimnames(my.mts)

dimnames(my.mts) <- list(NULL, c("Revenue", "Profit")
)
my.mts
is.ts(my.mts); is.mts(my.mts)

vec.name <- c("1st", "2nd", "3rd", "4th", "5th")
vec.1 <- 1:5
names(vec.1) <- vec.name
vec.1
vec.1[3:5]
vec.1[-c(1,2)]
vec.1[-c(1:2)]
vec.1[c(-1, -2)]

vec.1[c("1st", "2nd")]
vec.1[!names(vec.1) %in% c("1st", "2nd")]
vec.1[3] <- 3.3
vec.1

vec.2 <- c(vec.1, c(6, 7))
names(vec.2) <- c(vec.name, "6th", "7th")
vec.2
vec.3 <- c(vec.2[1:5], NA, vec.2[6:7])
nemes(vec.3) <- c(vec.name, "6th", "7th", "8th")
vec.3

vec.3[vec.3>4]
vec.3[!is.na(vec.3)]
vec.3[vec.3>4 & !is.na(vec.3)]

vec.3[is.na(vec.3)] <- 0.0
vec.3
vec.3[vec.3>=4] <- vec.3[vec.3>=4] %% 4
vec.3

vec.4 <- replace(vec.3, c(4, 6), 5)
vec.4
append(vec.4, 3:1)
append(vec.4, 3:1, after=2)

vec.5 <- c(1, 3, 5, 7, NA, 9)
idx <- which(is.na(vec.5)==TRUE)
replace(vec.5, idx, 0)

row.name <- c("Row.1", "Row.2", "Row.3")
col.name <- c("Col.1", "Col.2", "Col.3", "Col.4")
mat.1 <- matrix(1:12, ncol=4, byrow=TRUE,
dimnames=list(row.name, col.name)
)
mat.1

mat.1[2, 3]
mat.1[2, ]
mat.1[, 2:3]
mat.1[, -3]
mat.1[c("Row.2", "Row.3"), ]

mat.1[, c(T, F, T, F0]
mat.1[, as.logical(1:ncol(mat.1)%%2)]

mat.2=mat.1
mat.2[, 3] <- 5
mat.2
mat.2[!mat.2%%3==0] <- 0
mat.2
cbind(mat.1, 0)
rbind(mat.1[1:2, ], 0, mat.1[3, ]
)

row.name <- c("Row.1", "Row.2")
col.name <- c("Col.1", "Col.2", "Col.3")
mat.name <- c("Mat.1", "Mat.2")
ary.1 <- array(1:12, dim=c(2, 3, 2), 
dimnames=list(row.name, col.name, mat.name)
)
ary.1

ary.1[, , 2]
ary.1[, -3, ]
ary.1[, , "Mat.1"]
ary.1[, , c(T, F)]
dim(ary.1)
ary.2 <- ary.1[as.logical(1:dim(ary.1)[1]%%2, , ]
ary.2

array(ary.2, dim=c(1, 3, 2), dimnames=list(row.name[-2], col.name, mat.name)
)

ary.1[, c(1, 3), ] <- NA
ary.1
ary.1[is.na(ary.1)] <- 0
ary.1

(x <- array(1:(2^3), c(2, 2, 2))
)

(y <- aperm(x, perm=c(2, 1, 3))
)

mat.1 <- matrix(1:4, ncol=2)
t(mat.1) == aperm(mat.1, c(2, 1)
)

lst <- as.list(NA)
lst
lst[1] <- 1:3
lst
lst[[1]] <- 1:3
lst
lst[[3]] <- matrix(1:4, ncol=2)
lst
lst[[2]] <- "secomd component"
lst

names(lst) <- c("numeric", "character", "matrix")
lst
names(lst) <- c("numeric", "character", " ")
lst
names(lst)[[3]] <- "matrix"
lst[[4]] <- iris[1:3, ]

substr(lst[2], 1, 6)
substr(lst[[2]], 1, 6)
sum(lst$numeric)
sum(lst[1])
sum(lst[[1]])

lst$matrix[1, ]
lst[[3]][, 2]
lst[[3]][2, 2]

lst[[4]]$Sepal.Width
lst[[4]][1, ]
lst[[4]][, c(1, 5)]

lst[[1]][3] <- 10
lst$numeric

#�������������� ���� �����ϱ�

(dfram <- isris[1:3, ])
dfram$Petal.Length
dfram[["Petal.Length"]]
dfram{1, ]
dfram[2, 2]
dfram[2, "Petal.Length"]

b <- c(NA, 3, 7, 2, 4)
c <- c(100, 200, 150, 120, NA)
d <- c(3, 5, 6, 8, 2)
(df.1 <- data.frame(a, b, c, d))
df.1[df.1$d==3, ]
df.1[df.1["d"]==3, ]
df.1[!is.na(df.1$c), c("a", "d")]
df.1[df.1$1c==200, ]
df.1$c==200

subset(df.1, df.1["c"]==200)

tem <- df.1
is.factor(df.1$a)
df.1[1, ] <- c("c", 5, 130, 7)
is(df.1$d)

df.1 <- tmp
df.1[1, ] <- list("c", 5, 130, 7)
is(df.1$d)
levels(df.1$a)
df.1[1, ] <- list("f", 5, 130, 7)
df.1
df.1 <- tmp

df.1$a <- as.character(df.1$a)
df.1[1, ] <- list("f", f, 130, 7)
df.1 <- tmp

levels(df.1$a) <- c(level(df.1$a), "f")
df.1[1, ] <- list("f",f, 130, 7)
tmp <- df.1

a <- I(letters[1:5])
(df.1 <- data.frame(a, b, c, d))
is(df.1$a)
df.1[1, ] <- list("f", 5, 130, 7)

df.1{6, ] <- list("z", 6, 230, 6)
df.1 <- tmp
rbind(df.1, list("z", 6, 230, 6))
df.1 <- tmp


vec.e <- c(10, 20, 15, 10, 5)
df.1["e"] <- vec.e
df.1
df.1 <- tmp

transform(df.1, e=vec.e)
transform(df.1, c=c/10+d)
df.1 <- tmp

df.1 <- cbin(df.1, vec.e)
names(df.1) <- c("a", "b", "c", "d", "e")
df.1

e <- data.frame(e=vec.e)
cbind(df.1, e)
data.frame(df.1, e)

(products <- data.frame(
product.id=I(c('A1', 'A2', 'B1', 'C1')),
product.name=c('Prod AB', 'Prod A+', 'Prod B', 'Prod C1'),
unit.price=c(120, 210, 150, 100)
)
)

(sales <- data.frame(
product.id=I(c('B1', 'A2', 'C1', 'A1')),
revenue=c(21200, 19100, 12000, 195000),
profit=c(4500, 2300, 2000, 1300)
)
)

merge(product, sales)
intersect(names(products),names(sales))

merge(sales, products)

names(sales) <- c("id", "revenue", "profit")
merge(products, sales)

merge(product, sales,
by.x="product.id", by.y="id")

(products.1 <- products[products$product.id!="B1", ])
sales.1 <- sales[sales$id!="A2", ]
names(sales.1) <- c("product.id", "revenue", "profit")
sales.1

merge(products.1, sales.1)
merge(products.1, sales.1, all=T)

merge(products.1, sales.1, all.x=T)
merge(products.1, sales.1 all.y=T)

#����� ��ȯ

(mat <- matrix(1:8, ncol=4))
dim(mat)
tmp <- mat
dim(mat) <- c(2, 2, 2)
mat

mat <- tmp
ary.a <- mat %o% rep(1, 2)
dim(ary.a)
ary.a[, , 1]
ary.a[, , 2]

set.seed(1)
(mat <- matrix(sample(12), ncol=4))
data.frame(mat)
(df.1 <- data.frame(mat,
row.names=c("no.1", "no.2", "no.3")
))
names(df.1) <- c('a', 'b', 'c', 'd')
df.1

mat <- matrix(1:6, c(2, 3),
dimnames=list(c("R1", "R2"), c("C1", "C2", "C3"))
)
mat
data.frame(mat)

mat <- tmp
as.vector(mat)
dim(mat) <- c(8)
mat

#�迭�� ��ȯ

(ary.1 <- array(1:8, c(2, 2, 2))
)

tmp <- ary.1
is(ary.1)
is.matrix(ary.1)
dim(ary.1) <- c(2, 4)
ary.1
is(ary.1)
is.array(ary.1)
ary.1 <- tmp
matrix(ary.1, ncol=4)

as.vector(ary.1)
dim(ary.1) <- c(8)
ary.1

a <- array(1:24, dim=c(2, 3, 4))
dimnames(a)[[3]] <- paste("n", 1:4, sep=" ")
a

dim3 <- rep(dimnaems(a)[[3]], each=dim(a)[1])
dim3
dim2 <- apply(a, 2, c)
dimnames(dim2) <- list(NULL, c("C.1", "C.2", "C.3"))
dim2
data.frame(dim3, dim2)

#����Ʈ�� ��ȯ

(lst <- list((1, 2, 3, 4))
dim(lst) <- c(2, 2)
lst
is.matrix(lst)
is.list(lst)

lst[1, 2]
is.list(lst[1, 2])
lst[[1, 2]]

lst[, 2]
lst[[, 2]]
mat <- matrix(lst, ncol=2)
mat[, 2]
is.matrix(mat)
is.list(mat)

mat <- matrix(unlist(lst), ncol=2)
mat[, 2]
is.matrix(mat)
is.list(mat)

set.seed(1)
lst <- list(a=1:3, b=rnorm(3)) # 리스트 객체 생성
do.call("rbind", lst)
do.call("cbind". lst)
t(sapply(lst, "+"))
sapply(lst, "+")

#데이터 프레임의 전환

a <- c('1st', '2nd', '3rd', '4th')
b <- c(1, 3, 2, 4)
c <- c(T, F, T, T)
df.1 <- data.frame(a, b, c) #데이터 프레임
df.1
as.matrix(df.1) #행렬로 전환
as.list(df.1) #리스트로 전환
array(df.1, dim=c(2, 2, 3)) #배열로 전환 - 결과는 recycling rule
array(as.character(df.1), dim=c(2, 2, 3)) # 배열로 전환
array(as.matrix(df.1), dim=c(2, 2, 3) #배열로 전환

#################################################
############ 데이터 연산   ######################
#################################################

#벡터의 연산

#통계량 계산하기

x <- c(3, 1, 4, 5, 9, 2, 6, 3, 7, 6)
y <- c(2, NA, 4, 5, 9, NA, 6, 3, 7, 1)

length(x)
length(y)
min(x)
max(y)
max(y, na.rm=TURE)
range(x) #범위함수
c(min(x), max(x))
range(y)
range(y, na.rm=TRUE)
diff(range(x)) #통계학에서의 범위
pmax(x, 5) #병렬최대값(recycling rule)
pmax(x, c(5, 6)) #병렬최대값(recycling rule)
pmin(x, y)
pmin(x, y, na.rm=TRUE)

sum(x)
sum(y)
sum(y[!is.na(y)])
sum(y, na.rm=TRUE)
prod(x)
prod(y)
prod(y, na.rm=TRUE)

