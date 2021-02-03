#lec2_1.r
# Vector, matrix

# vector 
x<-c(1,3,5,7,9)
x[3] #벡터의 3번째 요소의 값

# subset of vector : delete the first element
x[-1]

# subset of vector : delete the first two element
x1<-x[-c(1,2)]
x1
# subset of vector : delete the 1st to the 3rd element
x2<-x[-c(1:3)]
x2


# create vector using 'seq'
# sequence of 20 values 
y1<-seq(0,10, length=20) #0부터 10까지 20개의 값을 생성
# sequence of (1 to 10) by 0.5
y2<-seq(0,10, by=0.5) #0부터 10까지 0.5의 간격을 두고 값을 생성

# using rep
z1<-rep(1:4, 2) #1에서 4까지 2번을 반복해서 생성
z1

z2<-rep(1:2,5)
z2

# combine vectors in a row or column

c1<-c(2,4,6,8,10)
c2<-cbind(x, c1) #열 기준으로 결합
c2

c3<-rbind(x,c1) #행 기준으로 결합
c3 

# create matrix
# two row matrix with 1 to 10
m1<-matrix(1:10, nrow=2)
m1
# three columns matrix with 1:6 
m2<-matrix(1:6, ncol=3)
m2
# matrix filled by rows, defalut: filled by cloumns
#원래는 열부터(위에서 아래로) 채우는게 디폴트인데
#byrow를 쓰면 행부터(왼쪽에서 오른쪽으로) 값을 채우게 된다.
m3<-matrix(1:6, nrow=2, byrow=T)
m3
# help (matrix)

# higher order of array
a1<-array(c(1:18), dim=c(3,3,2)) #3*3행렬을 2개 만든다.
a1
a1[, ,1]
a1[, ,2]


#code for quiz
x6=seq(0,10,by=0.4)
mean(x6)
x6_1=mean(x6[-c(1:5)])
x6_1


