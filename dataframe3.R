head(iris)

r <- iris$Sepal.Length / iris$Sepal.Width
head(r)


###변수 이름만으로 데이터프레임에 접근할 수 있는 함수
#with함수를 사용하면 데이터프레임 함수와 $기호 없이 편하게 사용 가능하다
r <- with(iris, Sepal.Length / Sepal.Width)
head(r)


#여러개 참조 {}안에 입력
#복잡함을 줄여줄 수 있다
with(iris, {})

with(iris, {
  print(summary(Sepal.Length))
  plot(Sepal.Length, Sepal.Width)
  plot(Petal.Length, Petal.Width)
  })


#단점: 함수 내에서 이루어진 변수할당은 함수 밖에서 사용 불가능하다
with(iris, {
  stats <- summary(Sepal.Length)
  stats
})

stats #with함수 밖에서 호출했기 때문에 오류가 발생한다


#위에 오류를 해결하기 위해서는 <-말고 <<-를 사용해줘야한다.
with(iris, {
  stats <<- summary(Sepal.Length)
  stats
})

stats  #<<-를 사용했기 때문에 밖에서 호출이 가능하다




with(iris, {
  stats.nokeep <- summary(Sepal.Length)
  stats.keep <<- summary(Sepal.Length)
})

stats.nokeep #오류발생  
stats.keep   #정상적으로 활용 가능



###with()의 사촌 함수 
###within() 함수
#데이터 프레임 내의 새로운 변수를 생성하거나
#생성한 값에 값을 할당
#기존의 변수 값을 변경


#with를 사용안하면 iris$를 여러번 사용해야 한다
iris$Sepal.Ratio <- iris$Sepal.Length / iris$Sepal.Width #인덱싱
head(iris)

iris <- within(iris,
       Sepal.Ratio <- Sepal.Length / Sepal.Width)
head(iris)



####메모리 적재
#데이터프레임의 열에 접근하는 방법이 너무 빈번하게 일어날 때
#그 안의 변수에 계속 접근을 해야할 때는 
#데이터프레임 자체를 메모리안에 적재하는 방법이 편리하다

attach(iris) #iris라는 데이터프레임은 메모리에 적재가된다
search()


#변수이름을 쓸 때 변수가 iris소속이라는 것을 알릴 때
#Sepal.Length와 Sepal.Width의 비율을 계산해서 넣고싶을 때
#그냥 변수에 넣어주면 된다

#첫번째로 Sepal.Length에서 찾아보고 없으면
#두번째로 iris에서 찾아본다
#iris에 두 변수가 열로 들어가 있기 때문에 
#r에서는 iris데이터 프레임으로부터 두개의 변수의 값을 추출해서 계산
r <- Sepal.Length / Sepal.Width 
head(r)



#작업 끝났을 시에는 데이터프레임에서 삭제를 시켜야한다
detach(iris)
search()


attach(iris)
iris$Sepal.Length <- 0
head(iris$Sepal.Length)
head(Sepal.Length)
#위 두개의 값은 저장 공간이 다르기 때문에 값이 다르다



detach(iris)


#Sepal.Widt라는 지역변수를 새로 생성 <- 10을 곱한 값
Sepal.Width <- Sepal.Width * 10  
head(Sepal.Width)
head(iris$Sepal.Width)   #원래의 데이터프레임 값은 유지가된다
ls()


detach(iris)
rm(iris)
rm(Sepal.Width)
rm(Sepal.Length)


Sepal.Length <- c(4.5, 5.3, 6.7)
Sepal.Length
attach(iris) #경고메세지의 뜻
#나의 작업 공간에 이미 Sepal.Length가 있다.
#근데 너는 똑같은 이름을 갖고있는 iris데이터프레임을 
#지금 메모리에 적재하려고 시도했다



###산점도
plot(Sepal.Length, Sepal.Width) #길이가 다르다라는 오류메세지가 뜬다
#r에서는 아까 생성했던 Sepal.Length, Sepal.Width의 변수값이라고 인식한다
#새로들어온 Sepal.Length가 아니라 Sepal.Length <- c(4.5, 5.3, 6.7)가 인식됨
















