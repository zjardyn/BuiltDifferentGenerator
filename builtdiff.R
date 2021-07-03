if (!requireNamespace("syn", quietly = TRUE)) {install.packages("syn")}

library(syn)

args <- commandArgs(trailingOnly = T)
options(warn=-1)

if(length(args) == 0){
  N <- 1
} else {
    if (length(args) > 1 | is.na(as.numeric(args[1]))){
    stop("Usage: <N> Number of phrases", call.=FALSE)} else {
    N <- as.numeric(args[1])}}

prebuilt <- syn("built")

removeIndicesBuilt <- c(1,4,5,6,8,9,10,11,13,17:21,26,31,32,33,36,39,49,41,42,46,47,52:55,57,61:65,69:71,74,75:83)

built <- prebuilt[-removeIndicesBuilt]

predifferent <- syn("different")

removeIndicesDifferent <- c(3,4,8,14,16,18,19,22,23,24:30,32:34,36,42,45,46,52,57,63,64,69,71,73:79,83:86,93:96,104,105,107,108,111,115,117,118,120,125,127,130,131,134:136,138,141:145,147,148,150,152,158,159,161,162,187,191,192,193,194:196)

different <- predifferent[-removeIndicesDifferent]

BuiltDiffSyns <- function() {
  cat(paste(sample(built,1), sample(different,1), sep = " " ), sep = '\n')
}

cat("built different","---------------", sep = "\n")
cat(unlist(replicate(N,BuiltDiffSyns(), simplify = T)))

