##Nomor 1

##Diketahui
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

#1A
diff <- y - x
sd(diff)

#1B
t.test(x, y, paired = TRUE)