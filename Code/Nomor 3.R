##Nomor 3

##Diketahui
library(BSDA)

##3B dan 3C
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79, s.y = 1.32, n.y = 27, 
          alternative = "two.sided", var.equal = TRUE)

##3D
qt(p = 0.025, df = 2, lower.tail = TRUE)
qt(p = 0.025, df = 2, lower.tail = FALSE)