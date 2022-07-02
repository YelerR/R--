words <- c("at", "bat", "cat", "chaenomeles", "chase", "chasse", 
           "cheap", "check", "cheese",  "chick", "hat")
words2 <- c("12 Dec", "OK", "http://", "<TITLE>Time?</TITLE>", "12345", "Hi there" )



grep("che",words,value=TRUE) #che포함
grep("at",words,value=TRUE) #at포함

#[ ]감싸면 안에 포함된 각 문자와 하나라도 일치하는 문자열을 검사
grep("[ch]",words,value=TRUE) #c,h와 일치하거나 포함된 문자열 검사
grep("[at]",words,value=TRUE) #a,t일치하거나 포함

#두개ㅐ의 문자열 중에 하나만 포함되도 검색
grep("ch|at",words,value=TRUE)

grep("ch[ei]ck",words,value=TRUE) #ch로 시작하고 ck로 끝나는데
                                   #안에 e|i가 있는 문자열
grep("ch(e|i)ck",words,value=TRUE)



grep("chas?e",words,value=TRUE) #s가 0또는 1회 나타나는 문자열
grep("chas*e",words,value=TRUE) #s가 0또는 1회 이상 나타나는 문자열
grep("chas+e",words,value=TRUE) #s가 1회 이상


#a가 없거나 1번이상 또는 e가 없거나 1번이상
grep("ch(a*|e*)se",words,value=TRUE) 





#^ 문자열 시작
#$ 문자열 끝

grep("^c",words,value=TRUE)
grep("t$",words,value=TRUE)


grep("^c.*t$",words,value=TRUE)  #.은 임의의 문자 (아무문자나 가능)
                                 #.* 모든 문자열이 가능하다는 뜻



grep("^[hc]?at",words,value=TRUE) #h또는c가 0회 또는 1회로 시작하고 at로 끝


#alnum 알파벳과 숫자의 조합
grep("[[:alnum:]]", words2, value = TRUE)  

#문자가 포함된!!
grep("[[:alpha:]]", words2, value = TRUE)  


#숫자가 포함된
grep("[[:digit:]]", words2, value = TRUE)  

#각종 문장부호
grep("[[:punct:]]", words2, value = TRUE)  

#공백 포함
grep("[[:space:]]", words2, value = TRUE)  


#\\w는 단어문자(숫자,문자)가 포함된 결과를 찾아온다
grep("\\w", words2, value = TRUE)  

#숫자
grep("\\d", words2, value = TRUE)  

#공백
grep("\\s", words2, value = TRUE)  






