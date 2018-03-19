# wordcloud for a business card
# 90 x 55

library(wordcloud)
library(extrafont)
library(stringr)

x <- c(
  10, "Data science",
  9,  "Evaluation",
  8,  "Statistics",
  7,  "Building capability",
  6,  "Digital & data leadership",
  5,  "Management",
  4,  "Change strategy",
  4,  "Data modernisation",
  4,  "strategic & design advice",
  4,  "Data governance",
  3,   "Data management",
  2,  "Organisational & process analysis",
  2, "Advanced analytics",
  1, "Machine learning",
  2, "Training",
  2, "Data visualisation",
  1, "Problem solving"
  
)

n <- length(x) / 2

data <- data.frame(words = str_wrap(x[2 * 1:n], 100), importance = as.numeric(x[2 * 1:n -1]))

svg("output/wordcloud.svg", 18, 11, bg = "transparent")
par(family = "DejaVu Sans Mono", mar = c(0,0,0,0))
set.seed(123)
wordcloud(data$words, data$importance, min.freq = 1, rot.per = 0, random.order = FALSE, 
          colors = c("black"))
dev.off()
