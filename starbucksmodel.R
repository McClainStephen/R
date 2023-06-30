starbucks <- read.csv("StarbucksCoffeeModel.csv")
CAAW <- read.csv("Coffee As A Whole.csv")

x <- lm(ï..Consumption ~ Buyer + Penetration, data = starbucks)
y <- lm(Consumption ~ Buyer + Penetration, data = CAAW)

summary(x)
summary(y)