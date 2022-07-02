#범주형 데이타
c("Vegetables", "Fruits", "Vegetables", "Grains", "Fruits", "Vegetables",
  "Dairy", "Fruits", "Proteins", "Fruits")
food <- factor(c("Vegetables", "Fruits", "Vegetables", "Grains", "Fruits", "Vegetables",
          "Dairy", "Fruits", "Proteins", "Fruits"))
food #기본적으로 범주값(levels)은 알파벳 순서로 출력



####forcats
install.packages("forcats")
library(forcats)
fct_inorder(food)  #fct_inorder함수는 데이터셋에 등장하는 순서대로 레벨 출력

fct_infreq(food)   #출연빈도가 많은 순서 순

fct_relevel(food, "Fruits", "Vegetables", "Grains",
            "Proteins", "Dairy")  #레벨의 순서를 원하는 대로 재조정


fct_relevel(food, "Proteins") #지정 함수만 맨 앞으로
                              #나머지는 그대로
            
fct_relevel(food, "Proteins", "Dairy")  


fct_relevel(food, "Proteins", after=2) #proteins를 두번째 값 뒤로 이동(3번째 위치)
fct_relevel(food, "Proteins", after=Inf) #무한대 값을 주면 맨 뒤로 이동
            
            

value <- c(1000, 1500, 1200, 700, 2000, 2000, 1350, 2500, 15000, 3000)
food <- factor(c("Vegetables", "Fruits", "Vegetables", "Grains", "Fruits", "Vegetables",
                 "Dairy", "Fruits", "Proteins", "Fruits"))            

#다른 변수 값에 따라서 레벨을 정렬할 때
#Vegetables는 값이 1000,1200,2000이기 때문에 
#중위값으로 정렬값이 결정된다
fct_reorder(food, .x=value)   #value의 오름차순 으로 정렬        



#평균값으로 계산이 되어 정렬값이 결정된다
fct_reorder(food, .x=value, .fun=mean)
            
#내림차순으로 정렬
fct_reorder(food, .x=value, .fun=mean, .desc= TRUE)



#factor의 레벨명을 다른 이름으로 변경 가능
#Fats가 기존에 있던 Proteins와 Dairyf를 대체했다
fct_recode(food, Fats = "Proteins", Fats = "Dairy")















            
            
            
            
            
            
            
            
            