setwd("C:/Users/steph/Downloads")
NS <- read.csv("NHL_Stats.csv")
NSD <- NS
NSD$Rk <- NULL
NSD$Player <- NULL
NSD$Pos <- NULL
NSD$Tm <- NULL
NSD$Season <- NULL

#Scale Data
NSD <- scale(NSD)

#Clustering
fitK <- kmeans(NSD, 9)
fitK
str(fitK)
plot(NSD, col = fitK$Cluster)

#Choosing K
k <- list()
for(i in 1:10){
  k[[i]] <- kmeans(NSD, i)
}

k

betweenss_totss <- list()
for(i in 1:10){
  betweenss_totss[[i]] <- k[[i]]$betweenss/k[[i]]$totss
}

plot(1:10, betweenss_totss, type = "b",
     ylab = "Between SS / Total SS", xlab = "Clusters (k)")

for(i in 1:4){
  plot(NSD, col = k[[i]]$cluster)
}

#Hierachical Clustering
d <- dist(NSD)
fitH <- hclust(d, "ward.D2")
plot(fitH)
rect.hclust(fitH, k = 9, border = "red")

clusters <- cutree(fitH, 9)
clusters
plot(NSD, col = clusters)

#Model - Based Clustering
library(mclust)
fitM <- Mclust(NSD)
fitM
plot(fitM)

#Density - Based Clustering
install.packages("dbscan")
library(dbscan)
kNNdistplot(NSD, k = 9)
abline(h = 4, col = "red", lty = 2)
fitD <- dbscan(NSD, eps = 4, minPts = 5)
fitD
plot(NSD, col = fitD$cluster)



