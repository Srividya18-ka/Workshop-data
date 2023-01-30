library(GAPIT3)
#Input Data
#Import data from Zhiwu Zhang Lab
myY <- read.table("http://zzlab.net/GAPIT/data/mdp_traits.txt", head = TRUE) #Phenotypic Data
myGD=read.table(file="http://zzlab.net/GAPIT/data/mdp_numeric.txt",head=T) #Genotypic Data, Numeric
myGM=read.table(file="http://zzlab.net/GAPIT/data/mdp_SNP_information.txt",head=T) #Genetic Map

#GWAS
myGAPIT=GAPIT(
  Y=myY[,c(1,2,3)], #Phenotypic data, wherein first column is ID, followed by traits
  GD=myGD,#Genotypic data
  GM=myGM, #Genetic map
  PCA.total=3, #Total number PCs
  model=c("FarmCPU", "MLM"), #Modes of function
  ) 

#Explore help documentation for more options and possibilities in this algorithm
help("GAPIT")