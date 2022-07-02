#오류때문에 수업을 제대로 못했기 때문에 다시 들어보기





#데이터프레임으로부터 행과 열을 선택하는 일반적인 방법은
#데이터프레임 인덱싱을 이용하는 것이다
#원하는 행과 열을 추출할 때 인덱싱이 불편할 수 있다

head(mtcars)
subset(mtcars, subset = (mpg > 30), select = mpg)

subset(mtcars, subset = (cyl == 4 & am == 0),
       select = c(mpg, hp, wt)) #0자동 / 1수동


subset(mtcars, subset = (mpg > mean(mpg)),
       select = c(mpg, cyl, wt)) #mpg의 평균값보다 큰 mpg의 값 추출


head(USArrests) 
#상관계수
cor(USArrests)

##########특정열 제거
subset(USArrests, select = -UrbanPop)
cor(subset(USArrests, select = -UrbanPop))
cor(subset(USArrests, select = -c(UrbanPop,Rape)))


library(sqldf)
install.packages("sqldf")
sqldf()


data("mtcars")
sqldf("select * from mtcars where mpg > 30", row.names = TRUE)
sqldf("select * from mtcars where cyl = 6 order by mpg", row.names = TRUE)

sqldf("select avg(mpg) as avg_mpg, avg(wt) as avg_wt,
      gear from mtcars where cyl in (4,6) group by gear")


data(iris)
sqldf("select distinct Species from iris")
sqldf("select * from mtcars cyl = 6 order by mpg, row.names = TRUE")
sqldf("select avg(mpg) as avg_mpg, avg(wt) as avg_wt, gear from mtcars
      where cyl in (4,6) group by gear")



data(iris)
sqldf("select distinct Species from iris")
sqldf("select * from iris limit 3")


#.이 있는 변수명을 사용하기 위해서는 []를 사용한다
sqldf("select avg([Sepal.Length]) from iris where Sepcies ='setosa'")


#밖에가 ""면 안에는 '' / 안에가 ''면 밖에는 ""
sqldf('select avg([Sepal.Length]) from iris where Sepcies ="setosa"')


















