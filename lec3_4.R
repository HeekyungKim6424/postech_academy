# lec3_4.r
# Data handling
# Data analysis with autompg.csv

# data manipulation package
# select, filter, group by, summarise in dplyr package 
install.packages("dplyr")
library(dplyr)

# set working directory
# change working directory 
setwd("D:/tempstore/moocr")

# Read txt file with variable name
# http://archive.ics.uci.edu/ml/datasets/Auto+MPG

# Data reading in R
car<-read.csv(file="autompg.csv")
attach(car)

# data checking
str(car)


# Data handling using "dplyr"

# 1 subset data : selecting a few variables
set1<-select(car, mpg, hp)

head(set1)

# 2 subset data : Drop variables with -
set2<-select(car, -starts_with("mpg"))
head(set2)

# 3. subset data : filter mpg>50
set3<-filter(car, mpg>30) 
head(set3)

# 4. create a derived variable
set4<-car %>%
  filter(!is.na(mpg)) %>%
  mutate(mpg_km = mpg*1.609)

head(set4)

# mean and standard deviation
car %>%
  summarize(mean(mpg),mean(hp),mean(wt))

# mean of some variables
select(car, 1:6) %>%
  colMeans() #colMeans: 데이터를 열로 재구성 하여 평균값 구함

# table with descriptive statistics
#열을 추출하여 기술통계치 구하고 요약치 보여줌
a1 <- select(car, 1:6) %>% summarize_all(mean)
a2 <- select(car, 1:6) %>% summarize_all(sd)
a3 <- select(car, 1:6) %>% summarize_all(min)
a4 <- select(car, 1:6) %>% summarize_all(max)
table1 <- data.frame(rbind(a1,a2,a3,a4))
rownames(table1) <- c("mean","sd","min","max")
table1

# summary statistics by group variable
car %>%
  group_by(cyl) %>% #car데이터를 cyl그룹으로 묶음
  summarize(mean_mpg = mean(mpg, na.rm = TRUE))
  #summarize(): cyl그룹의 mpg평균을 구함
  #na.rm=TRUE: TRUE 통계시 결측값을 제외함







