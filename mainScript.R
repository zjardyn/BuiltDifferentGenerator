if (!requireNamespace("syn", quietly = TRUE)) {install.packages("syn")}
  
library(syn)

built <- syn("built")
built

removeIndicesBuilt <- c(1,4,5,6,8,9,10,11,13,17:21,26,31,32,33,36,39,49,41,42,46,47,52:55,57,61:65,69:71,74,75:83)

built <- built[-removeIndicesBuilt]
