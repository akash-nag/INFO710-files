
#Dataframes: structed data format, tabular structure

data("iris")

View(iris)
dim(iris)

write.table(iris, file = "myiris.tsv", sep = "\t", quote = F, row.names = F, col.names = T)

read.table("myiris.tsv")

myiris <- read.table(file = "myiris.tsv", header = T)

myiris[3,1]
myiris[,1]
myiris[3,]


#"$" method only works when there are header column's to the dataframe

myiris$Sepal.Length

testdf<- data.frame (foo=c(1:4), bar=c(T,T,F,F))
testdf

testdf<- data.frame (c(1:4),c(T,T,F,F))
testdf

names(testdf) <- c("foo","bar")
testdf

names(testdf)

plot(iris)
summary(iris)

#plotting in R

plot(x=iris$Sepal.Length,y=iris$Petal.Length)

plot(x=iris$Sepal.Length,y=iris$Petal.Length, col=iris$Species)

iris$fact2char <- as.character(iris$Species)

iris$fact2char == "setosa"

iris[iris$fact2char == "setosa",]

iris$Petal.Width > 0.1

iris[iris$Petal.Width > 0.1,]

#splitting the main dataframe into seperate dataframes based on a column/categorical variables
#split dataframe is now a "list" of 3 tables
split_iris <- split(iris, iris$Species)

names(split_iris)

#find mean of Petal Length of all the 3 tables in "split_iris"

setosa <- split.iris$setosa 

setosa[setosa$Sepal.Width >2]

split.iris$setosa[  ]

mean(split.iris$Petal.Length)


for (i in 1:length(split_iris)){ 
  result[i,1]<- names(split_iris)[i]
  result[i,2]<-(mean(split_iris[[i]]$Petal.Length)
}


for (i in 1:length(split_iris)){ 
  print(names(split_iris)[i])
  print(mean(split_iris[i]$Petal.Length))
}

names(result)<- c("Species", "Mean(Petal_width)")
result


#######################################################

?apply

#to use l-apply, the only thing to remember is know that the "x" represents

result_list <- lapply(split_iris, function(x) {return(mean (x$Petal.Width)})
  
  
  
  result <- data.frame()
  
  
  #r-bing function
  result <- do.call(rbind, result_list)
  
  #########################################
  
  result_list <- lapply(split_iris, function(x) {
    return(mean(x$Petal.Width))
  })
  
  result_list2 <- lapply(split_iris, function(x) {
    return (c(mean(x$Petal.Width,mean(x$Petal.Length))
  }) 
  
  
  result_list2
  
  ###########################################
  
  #using the apply function, to remove the last 2 columns
  
  
  num_iris<- iris[,c(1:4)]
  iris[,-c(5,6)]
  iris[,1:length(iris)-2]
  
  
  apply(num_iris, MARGIN =2, mean )
  
  
  install.packages("rmarkdown")
  
  library(rmarkdown)
  
  
  
