Orange
tree1 <- subset(Orange, Tree == 1)
tree1
#산점도
plot(tree1$age, tree1$circumference,
     xlab = "Age (days)", ylab = "Circumference(mm)",
     main = "Growth of Orange Tree 1")

#산점도를 선도표로 변경
#type = "p" (산점도)
plot(tree1$age, tree1$circumference, type = "p",
     xlab = "Age (days)", ylab = "Circumference(mm)",
     main = "Growth of Orange Tree 1")

#type = "l" (선도표)
plot(tree1$age, tree1$circumference, type = "l",
     xlab = "Age (days)", ylab = "Circumference(mm)",
     main = "Growth of Orange Tree 1")

#type = "b" (선과 점 함께 표현)
plot(tree1$age, tree1$circumference, type = "b",
     xlab = "Age (days)", ylab = "Circumference(mm)",
     main = "Growth of Orange Tree 1")

#type = "o" (선과 점이 겹치게 표현)
plot(tree1$age, tree1$circumference, type = "o",
     xlab = "Age (days)", ylab = "Circumference(mm)",
     main = "Growth of Orange Tree 1")






Orange
#x축과 y축의 범위
xlim <- range(Orange$age)
xlim
ylim <- range(Orange$circumference)
ylim
#비어있는 틀 생성
plot(xlim, ylim, type = "n",
     xlab = "Age (days)", ylab = "Circumference(mm)",
     main = "Growth of Orange Tree 1")


plot(xlim, ylim, type = "n", las = 1, bty ="l",
     xlab = "Age (days)", ylab = "Circumference(mm)",
     main = "Growth of Orange Tree 1")

ntree <- max(as.numeric(Orange$Tree))
ntree
colors <- c(1:ntree) + 1 #색상팔레트에 포함돼있는 2번부터 6번까지 표현
colors
linetype <- c(1:ntree)
linetype
plotchar <- c(1:ntree) + 18
plotchar


for(i in 1:ntree){
  tree <- subset(Orange, Tree == i)
  lines(tree$age, tree$circumference,
        type = "b", lwd = 2,
        lty = linetype[i],
        col = colors[i],
        pch = plotchar[i])
}
#범례 추가
legend(xlim[1], ylim[2], 1:ntree,
       col = colors, pch = plotchar, lty = linetype,
       title = "Trees")


























