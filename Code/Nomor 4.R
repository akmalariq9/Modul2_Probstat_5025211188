##Nomor 4

##Diketahui
KucingITS <- read.table("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt", header = TRUE)
KucingITS$Group <- as.factor(KucingITS$Group)
KucingITS$Group <- factor(KucingITS$Group, labels = c("Oren", "Hitam", "Putih"))

#4A
Group1 <- subset(KucingITS, Group == "Oren")
Group2 <- subset(KucingITS, Group == "Hitam")
Group3 <- subset(KucingITS, Group == "Putih")

qqnorm(Group1$Length, col = "orange")
qqline(Group1$Length, col = "orange")

qqnorm(Group2$Length, col = "black")
qqline(Group2$Length, col = "black")

qqnorm(Group3$Length, col = "red")
qqline(Group3$Length, col = "red")

#4B
bartlett.test(Length ~ Group, data = KucingITS)

#4C
Model1 <- lm(Length~Group, data = KucingITS)
anova(Model1)

#4E
TukeyHSD(aov(Model1))

#4F
install.packages("ggplot2")
library("ggplot2")

ggplot(KucingITS, aes(x = Group, y = Length)) + 
  geom_boxplot(fill = "Yellow", colour = "Black") + 
  scale_x_discrete() + xlab("Jenis Kucing") + ylab("Panjang Kucing (cm)")