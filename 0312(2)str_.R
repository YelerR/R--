string <- c("data analytics is useful",
            "business analytics is helpful",
            "visualization of data is interesting for data scientists")

string
library(stringr)
ls()
search()

#원소를 찾아서 논리값으로 반환 = grepl()
#소문자와 대문자를 다른 문자열로 인식한다
str_detect(string = string, pattern = "data")


#대문자를 포함하고 있지 않기 때문에 FALSE로 반환
str_detect(string, "DATA") 

#대소문자 구분 x
str_detect(string, fixed("DATA", ignore_case = TRUE)) 



#패턴 인수에 포함된 .은 메타문자로 사용됐다
#.은 임의 문자로 나타냄
str_detect(c("abz", "ayz", "a.z"), "a.z")  


#fixed를 사용해주면 (a.z)그대로 사용된다
#여기서의 .은 마침표로 인식한다
#\\의 불편함을 해결해준다
str_detect(c("abz", "ayz", "a.z"), fixed("a.z"))  

#\\는 메타문자를 탈출 시켜준다
#모든 메타문자 앞에 \\를 써줘야한다
#fixed를 사용해주면 편하게 사용 가능하다
str_detect(c("abz", "ayz", "a.z"), "a\\.z")  


#패턴의 위치를 찾는 함수

#문자 하나만의 시작위치와 종료위치  = regexpr()
#리스트 형식으로 반환
str_locate() 

#모든 문자의 시작위치와 종료위치  = gregexpr()
str_locate_all()


#regexpr, gregexpr는 첫번째 매칭이 이루어지는 또는 모든 매칭에 대해서
# 시작 위치의 문자 인덱스를 반환하고 길이를 반환한다 
#리스트형식


#반면에 

#str_locate(), str_locate_all()는 매칭되는 시작 위치와 종료위치의 
#문자 위치 인덱스를 반환 
#행렬형식

str_locate(string, "data")

#리스트의 행렬 형식으로 반환
str_locate_all(string, "data")




#문자열 추출 = regmatches()
#기본적으로 리스트형식으로 추출
str_extract()
str_extract_all()


#첫번째 data를 추출 
str_extract(string, "data")

#매칭되는 모든 문자를 추출
str_extract_all(string, "data")


#행렬 형식으로 추출하고 싶을 때


str_extract_all(string, "data",simplify = TRUE)


#문자열 자체에만 관심이 있다
unlist(str_extract_all(string, "data"))


#특별한 방식으로 매칭된 함수 출력
#매칭패턴을 ()그룹화 하게 되면은 결과를 그룹별로 추출
#행렬형식
str_match()
str_match_all()


sentences5 <- sentences[1:5]
sentences5


#관사와 함께 사용된 단어 추출 / 수량자 +
#관사+ 출력
str_extract(sentences5,"(a|A|The|the) (\\w+)") #리스트로 출력
 

#행렬로 출력
#첫번째 열은 전체 매칭 (관사와 단어)
#두번째(a|A|The|the)와 세번째(\\w+) 열은 그룹별로 별도 출력
str_match(sentences5,"(a|A|The|the) (\\w+)")


#리스트 형식으로 복잡하게 출력
str_match_all(sentences5,"(a|A|The|the) (\\w+)")



#패턴을 치환 = sub() /gsub()
str_replace() #매칭된 첫번째 문자열 치환 
str_replace_all() #매칭된 모든 문자열 치환



str_replace(string = string, pattern = "data",
            replacement = "text")

str_replace_all(string = string, pattern = "data",
            replacement = "text")


#입력 기준으로 분할
str_split(string, " ")

unlist(str_split(string, " "))

unique(unlist(str_split(string, " ")))



#분할 후에 생성할 문자의 개수를 지정 가능
str_split(string, " ", n = 3) #3개 이후에는 다시 문자열로 묶어서 출력

#행렬로 출력
str_split(string, " ", n = 3, simplify = TRUE)



#텍스트의 문자의 개수
str_length(string) #각 원소별로 문자의 개수


#특정 문자열이 몇 번을 출력했는지 알 수 있는 함수
str_count(string, "data")

#정규표현식 응용 (\\w+) 단어를 의미
str_count(string, "\\w+")


#문자열의 양쪽 끝에 동일하게 맞춰주는 기능
str_pad()



#최종적으로 얻고자 하는 문자열의 길이는 6
#side = "left"  왼쪽부터 채운다
#pad = ?  무엇을 채울지
str_pad(string = c("a", "abc", "abcde"),
        width = 6, side = "left" , pad = " ")  



mon <-  1:12
mon
str_pad(string = c(mon),
        width = 2, side = "left", pad = "0")


#텍스트 양쪽 끝에 공백을 제거
str_trim()



string <- c("data analytics is useful",
            "business analytics is helpful",
            "visualization of data is interesting for data scientists")

#width 는 문자중 가장 긴 문자를 기준으로 한다
str.pad <- str_pad(string, width = max(str_length(string)),
                                       side = "both", pad = " ")
str.pad

str_trim(str.pad, side = "both")  #양쪽 공백 제거



#텍스트 결합 = paste()
#구분자로 sep = " " (공백)
str_c("data", "mining", sep = " ")


#결합 문자 길이가 다르면 재사용규칙 적용
#"is useful"한번 입력해서 data mining에만 적용이 돼야하지만
#재사용 규칙에 의해서 text_mining에도 적용이 된다
str.mining <- str_c(c("data mining", "text_mining"),
                    "is useful", sep = " ")
str.mining




#결합으로 생선한 문자열 벡터를 모두 연결해서
#하나의 단일 텍스트 벡터로 변환
str_c(str.mining, collapse = "; ")
cat(str_c(str.mining,collapse ="; "))

str_c(str.mining,collapse ="\n")
cat(str_c(str.mining,collapse ="\n"))


#문자열의 일부를 추출
#start와 end함수를 이용해서 시작위치와 종료 위치를 지정한다
str.mining
str_sub(string = str.mining, start = 1, end = 4)


#부분 추출한 문자를 변경
str_sub(string = str.mining, start = 1, end = 4) <- c("aaa", "bbb")
str.mining


str_sub(string = str.mining, 5, 5) <-  ";"
str.mining

#str_sub함수는 음수를 입력하면 아주 유용하게 사용이 가능하다
#음수를 넣으면 뒤에서부터 시작한다 
str_sub("abcdefg", start = -3)
str_sub("abcdefg", end = -3)
