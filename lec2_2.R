# lec2_2.r 
# Naming vector and matrix, Data frame 

# Give name to a vector
gender<-c(0,1)
names(gender)<-c("female", "male") #(0,1)값을 갖는벡터 gender에 0=female, 1=male 이라는 값 부여 
gender

# define as a factor variable
#factor은 범주형 변수인데, 
#현재 상황에서는 factor로 인식하는게 아니라 numeric,숫자로 인식하기 때문에 고쳐줘야 함.
is.factor(gender)
gender<-as.factor(gender)
is.factor(gender)

# categorical varaiables : factor
#문자여서 사이즈는 범주형 변수로 인식되어 factor부분에서 true가 나온다
#그런데 다시 사이즈 객체를 불러올때는 옷 크기 순서가 아닌 알파벱 순서로 출력이 된다.
size<-c("S", "M","L","XL")
# define size as a factor (categorical variable)
size_factor<-factor(size)

size_factor
is.factor(size_factor) #변주형변수로 정의해주는 함수

# define as a factor variable
is.factor(gender)
gender<-as.factor(gender)
is.factor(gender)

# or in same output
size_factor2 <- factor(size, 
                       levels = c("S", "M","L","XL")) 
size_factor2 #순서가 없는 문자 벡터를 순서를 지정해주는것

# give order for categorical variable
size_factor3 <- factor(size, ordered = TRUE, 
                       levels = c("S", "M","L","XL")) 
size_factor3 #순서에다가 크기까지 정해주는 ordered 요소


# generate matrix from normal 
x<-matrix(rnorm(12),nrow=4)
x
# check dimension of x
dim(x)

# data frame
is.data.frame(x)
# matrix x is not data frame

# define x as a data frame
x<-as.data.frame(x)
# then x is a data frame
is.data.frame(x)

head(x)

###### etc ######################
# add variable names 
dimnames(x)[[2]]<-paste("x",1:3,sep="")
x
# or use colnames
y<-matrix(rnorm(12),nrow=4)
colnames(y) <- c("y1", "y2", "y3")
y

# add observation names
dimnames(x)[[1]]<-paste("id",1:4,sep="")
# rwonames(x) <- c("id1", "id2", "id3", "id4")
x











