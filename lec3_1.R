# lec3_1.r
# Working directory
# Data import, frequency, histogram, 
# attach, detach

#csv: comma seperated value 데이터 저장시 범용 형태
#엑셀 파일은 csv로 저장한 다음 read.csv 함수를 이용하여 R데이터로 불러들이는것이 편리하다.

# set working directory
# change working directory 
#setwd("D:/tempstore/moocr") #이 코드는 안해도 될것 같고 해봤자 오류만 뜰것 같아서 주석처리함

# check the current working directory
getwd()

# 1. Read csv file : brain weight data
brain<-read.csv("brain2210.csv")
head(brain)
dim(brain)

# 2.Read txt file with variable name
#텍스트파일 불러들이기 함수= read.table
car<-read.table(file="autompg.txt", na=" ", header=TRUE)
#header의 옵션은 첫번째를 변수명으로 읽어달라는 옵션
head(car)
dim(car)

# 3. example for using 'attach'

# to get frequency of male and female (brain data)
table(brain$sex)

# using the command 'attach'
attach(brain) #데이터 이름을 따로 지정하지 않아도 됨.

# get frequency of male and female
table(sex)

# histogram of brain weight
# hist(brain$brainwt)
hist(wt)

detach(brain)


