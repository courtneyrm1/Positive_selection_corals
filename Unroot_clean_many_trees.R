library(data.table)
library(tools)
require(picante)


files <- list.files(path = "trees/", pattern = "*.tree", full.names = T,recursive = F) 

custom_fct <- function(t){
  unrooted_tr <- unroot(read.tree(t))
  unrooted_tr$node.label=NULL 
  write.tree(unrooted_tr, file=paste0(t, "_clean.tree"))
}

lapply(files,custom_fct) 