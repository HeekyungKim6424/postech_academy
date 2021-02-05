# lec3_2.r
# Data handling
# subset and export

# set working directory
# change working directory 
setwd("D:/tempstore/moocr")

brain<-read.csv("brain2210.csv")
head(brain)

attach(brain)

# subset with female
# brainf<-subset(brain, sex=='f') after attach(brain)
brainf<-subset(brain, sex=='f') #brainf에 brain중 성별이 f인 값만 넣어서 생성
mean(brainf$wt)
sd(brainf$wt)

# subset with male
brainm<-subset(brain, sex=='m') 
mean(brainm$wt)
sd(brainm$wt)

# subset with wt<1300
brain1300<-subset(brain,brain$wt<1300)

# same subset of brain1300
# brain1300<-subset(brain,!brain$wt>=1300)
summary(brain1300)

# 'aggregate'for statistics by group
# 요약통계치(그룹별)- aggregate(변수~그룹, 데이터, 함수)
aggregate(wt~sex, data=brain, FUN=mean) #남녀 별 뇌 무게 평균
aggregate(wt~sex, data=brain, FUN=sd) #남녀 별 뇌 무게 표준편차

# histogram for female and male
# 2*2 multiple plot
par(mfrow=c(2,2)) #행이 2개이고 열이 2개인 테이블을 그려라
brainf<-subset(brain,brain$sex=='f') 
hist(brainf$wt, breaks = 12,col = "green",cex=0.7, main="Histogram (Female)" ,xlab="brain weight")
#위의 코드는 여자아이의 뇌의 무게를 히스토그램으로 

# subset with male
brainm<-subset(brain,brain$sex=='m') 
hist(brainm$wt, breaks = 12,col = "orange", main="Histogram with (Male)" ,  xlab="brain weight")

# histogram with same scale
# 위의 히스토 그램을 비교를 용이하게 하기 위해 범위를 일치시켜주기
hist(brainf$wt, breaks = 12,col = "green",cex=0.7, main="Histogram with Normal Curve (Female)" , xlim=c(900,1700),ylim=c(0,25), xlab="brain weight")
hist(brainm$wt, breaks = 12,col = "orange", main="Histogram with Normal Curve (Male)" , xlim=c(900,1700), ylim=c(0,25),xlab="brain weight")
#코드를 보면 xlim과 ylim이라는 옵션이 추가되었다는것을 알 수 있다.

# plot margin
# par(mar=c(2,2,2,2))

# export csv file - write out to csv file 
#csv 파일로 내보내기
write.table(brainf,file="brainf.csv", row.names = FALSE, sep=",", na=" ")

write.csv(brainf,file="brainf.csv", row.names = FALSE)

# export txt file 
#txt 파일로 내보내기
write.table(brainm, file="brainm.txt", row.names = FALSE,  na=" ")


#code for quiz
brain_q=subset(brain,brain$wt<1000)
table(brain_q$sex)
