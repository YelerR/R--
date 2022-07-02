slice <- c(325, 285, 706, 885)
lbl <- c("list class", "2nd class", "3rd class", "crew")
pie(slice, labels = lbl, main = "pie chart of titanic passengers")

str(Titanic)
class <- margin.table(Titanic, margin = 1)
class 
pie(class, main = "pie chart of titanic passengers")

lbl <- paste(names(class), ": ", class, sep = "")
lbl

pie(class, labels = lbl, main = "pie chart of titanic passengers")



class.pct <- round(class/sum(class) * 100, 1)
class.pct

lbl <- paste(names(class), ":", class.pct, "%", sep = "")
lbl
pie(class, labels = lbl, main = "pie chart of titanic passengers")
pie(class, labels = lbl, col = rainbow(length(class.pct)),
    main = "pie chart of titanic passengers")



install.packages("plotrix")
library(plotrix)
fan.plot(class, labels = names(class),
         main = "pie chart of titanic passengers")











