## Praktikum 2 Probabilitas dan Statistika
## Akmal Ariq Romadhon / 5025211188

##Nomor 1

##Diketahui
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

#1A
diff <- y - x
sd(diff)

#1B
t.test(x, y, paired = TRUE)

##Nomor 2

##Diketahui
install.packages("BSDA")
library(BSDA)

##2A
zsum.test(mean.x = 23500, sigma.x = 3900, n.x = 100, mu = 20000, alternative = "greater")

##Nomor 3

##Diketahui
library(BSDA)

##3B dan 3C
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79, s.y = 1.32, n.y = 27, 
          alternative = "two.sided", var.equal = TRUE)

##3D
qt(p = 0.025, df = 2, lower.tail = TRUE)
qt(p = 0.025, df = 2, lower.tail = FALSE)

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

##Nomor 5

##Diketahui
install.packages("multcompView")
install.packages("readr")
install.packages("dplyr")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

ExpData <- read.csv("https://drive.google.com/u/0/uc?id=1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ&export=download")
ExpData$Glass <- as.factor(ExpData$Glass)
ExpData$Temp <- as.factor(ExpData$Temp)

##5A
qplot(x = Temp, y = Light, data = ExpData) + facet_grid(.~Glass) + geom_point()

#5B
twowayanova <- aov(Light ~ Glass*Temp, data = ExpData)
summary(twowayanova)

#5C
mean_sd_table <- group_by(ExpData, Glass, Temp) %>%
  summarise(mean = mean(Light), sd = sd(Light)) %>%
  arrange(desc(mean))
print(mean_sd_table)

#5D
tukeytest <- TukeyHSD(twowayanova)
print(tukeytest)

#5E
library(multcompView)

result <- multcompLetters4(twowayanova, tukeytest)
result

cld <- as.data.frame.list(result$`Glass:Temp`)
mean_sd_table$CLD <- cld$Letters
mean_sd_table

## Thank you!