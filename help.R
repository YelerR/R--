#도움말 보기 ->Manuals,Reference 주로 이용
help.start()

#median에 대한 도움말
help(median)
?median

#인수에 대한 도움말
args(median)


#지정된 함수에 대한 예시
example(median)


#함수에 대한 이름을 일부만 알고 있을 떄
help.search("xyplot")
??xyplot

apropos("")

hero.vector <- c("Superman", "Batman", "spiderman")
#내가만든 hero.vector에 대한 이름이 정확하게 기억이 안날 때
apropos("vector") #정규표현식에서도 많이 사용함

#정규표현식 도움말
?regex


#q로 끝나는 변수 찾아줌
apropos("q$") 

#7부터 9까지 포함된 변수를 찾아줌
apropos("[7-9]")

#xy가 포함된 변수를 찾아줌
apropos("xy+")


#검색을 해서 도움말 제공 사이트
#search.r-project.org
#rseek.org (r과 관련된 정보를 제공해줌)


#외부 사이트로 이동해서 검색해줌
RSiteSearch("topicmodel")


#외부 사이트로 이동해서 table형식으로 정리해서 나타내줌
install.packages("sos")
library("sos")
findFn("social network analysis") 













