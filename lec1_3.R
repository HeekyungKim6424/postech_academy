# lec1_3.r 
# Basic operations
  
  x2<-c(1,4,9)
  sqrt(x2) # x2의 제곱근
  min(x2)
  max(x2)
  mean(x2)
  
  y2=2+x2
  
  plot(x2, y2)
  
  # functions
  
  log10(10)
  log(10)
  exp(10)
  
  sin(pi/2)
  
  # list 
  ls() #현재 수행하고 있는 r에 있는 리스트들의 이름
  
  # remove object
  rm(x1)
  
  # change to lower or upper case for variable (name)
  
  c1 <- "MiXeD cAsE 123"
  tolower(c1) #소문자로 바꾸기
  toupper(c1) #대문자로 바꾸기
  
  # generating data from distributions
  # 정규분포로부터 데이터 생성 함수
  # 100 values from normal distribution with mean=0, sd=1
  x3<-rnorm(100) 
  # norm은 nomal distribution, r은 random
  # 위의 코드는 정규 분포로부터 100개의 값을 생성해달라는 코드
  head(x3)
  mean(x3)
  sd(x3)
  min(x3)
  max(x3)
  
  hist(x3) #히스토그램램
  
  # 10000 values from normal distribution with mean=0, sd=1
  x4<-rnorm(10000)
  mean(x4)
  sd(x4)
   # 값이 커질수록 정규분포의 평균과 분산에 가까워짐을 알 수 있다.
  
  #정규분포를 추출해해는 값은 우리가 정할수 있는데, 
  #rnorm(표본의 크기, 평균, 분산) 순으로 정할 수 있다.
  
  hist(x4)
  # hist(x3) 보다 hist(x4)가 더 정규분포의 꼴에 가깝다.
  
  
  # code for quiz
  x5= rnorm(100000)
  mean(x5)

  