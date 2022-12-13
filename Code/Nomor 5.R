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