
library(factoextra)

uni.scaled<-scale(Universities[,-1]) #scaling the data

d<-dist(uni.scaled, method = 'euclidean');d #determining distance

d.gram<- hclust(d,method = "centroid") #doing hierarchy clustering

fviz_dend(d.gram,k=3,k_colors = 1,cex = 0.5,ylab = 'distance')+
  labs(subtitle = "Dendrgram") #drawing Dendrogram

clust<-cutree(d.gram,k=3) # k means number of cluster after viewing Dendrogram
clust 

finaluni<-data.frame(Universities="univ",'cluster'=clust) #making data frame 
