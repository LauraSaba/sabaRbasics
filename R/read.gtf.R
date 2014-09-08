read.gtf <- function(gtfFile){
  x <- read.table(file=gtfFile,sep="\t",header=FALSE)
  x$transcript_id = unlist(lapply(strsplit(x$V9,split="; "),function(a) gsub("transcript_id ","",a[grep("transcript_id",a)])))
  x$gene_id = unlist(lapply(strsplit(x$V9,split="; "),function(a) gsub("gene_id ","",a[grep("gene_id",a)])))
  x$FPKM = as.numeric(unlist(lapply(strsplit(x$V9,split=";"),function(a) gsub("FPKM ","",a[grep("FPKM",a)]))))
  return(x)
}

