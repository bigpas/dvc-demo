suppressMessages(library(tidyverse))

dataset <- read_csv("data/data.csv")

model <- lm(Sepal.Length + Sepal.Width ~ Species, 
            data = dataset)

write_csv(broom::tidy(model), 
          "output/lm-output.csv")

print(
    broom::tidy(model)
)

