# lec3_3.r
# Data handling
# Data analysis with autompg.csv

# data manipulation package
# select, filter, group by, summarise in dplyr package 
#dplyr: 데이터 핸들링을 편리하게 수행 할 수 있는 패키지
install.packages("dplyr")
library(dplyr)

##dplyr 주요 함수
#select: 일부변수 선택
#filter: 필터링 기능(조건에 맞는 데이터 추출)
#mutate: 새로운 변수 생성
#group_by: 그룹별 통계량을 얻을때
#summarize: 요약통계량
#arrange: 행 정렬시 사용

# set working directory
# change working directory 
#setwd("D:/tempstore/moocr") #필요없는 코트여서 주석처리함

# Read txt file with variable name
# http://archive.ics.uci.edu/ml/datasets/Auto+MPG

# 1. Data reading in R
car<-read.csv(file="autompg.csv")
attach(car)

# Change to tbl_df class
#car<-tbl_df(car)

# 2. data checking 
head(car)
dim(car)
str(car)

# 3. Summary
summary(car)

# Basic statistics

# 4. frequency
table(origin)
table(year)

# 5. mean and standard deviation
mean(mpg)
mean(hp)
mean(wt)



