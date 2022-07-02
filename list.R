list(0.6826, 0.9544, 0.9974)

#여러가지 유형이 다 들어갈 수 있다
list(1.23, "Apple", c(2, 3, 5, 7), matrix(1:6, ncol = 3),
     mean)


lst <- list()
lst
lst[[1]] <- 1.23
lst[[2]] <- "Apple"
lst[[3]] <- c(2, 3, 5, 7)
lst[[4]] <- matrix(1:6, ncol = 3)
lst[[5]] <- mean
lst


lst <- list(0.6826, 0.9544, 0.9974)
lst
names(lst) <- c("sigmal1", "sigmal2", "sigmal3") #이름 설정
lst

names(lst) #이름 출력

length("sigmal2") #길이 출력
length(lst)




#결합 (밑으로 붙이겠다)
worldcup1 <- list("Brazil", "South Africa", "Germany")
worldcup2 <- list("Korea", "Japan", "France", "USA")
worldcup1
worldcup2
c(worldcup1, worldcup2)  #list구조가 합해진 형태로 출력




a <- list(c(1, 2, 3, 4, 5, 6 ,7))
a
mean(a) #mean은 벡터를 필요로 하기 때문에 list를 계산할 수 없다


#리스트구조 해제(벡터로 변경 후 계산)
unlist()


mean(unlist(a))
min(unlist(a))


















