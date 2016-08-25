## Tidy data concept



## Reshaping multiple columns in category/value pairs

library(tidyr)
counts_gather <- gather(counts_df, 
                        key = 'species',
                        value = 'count',
                        wolf:fox)



## Exercise 1

counts_gather <- counts_gather[-8, ]
sol1 <- spread(counts_gather,
               key = species,
               value=count, fill=0)

## Read comma-separated-value (CSV) files

surveys <- read.csv("data/surveys.csv", na.string = "")
    
## Subsetting and sorting

library(dplyr)


surveys_1990_winter <- select(surveys_1990_winter, -year)

sorted <- arrange(surveys_1990_winter, desc(species_id), weight)

## Exercise 2

R<- select(filter(surveys, species_id == 'RO'), record_id, sex, weight)


## Grouping and aggregation
surveys_1990_winter_gb <- group_by(surveys_1990_winter, species_id)
counts_1990_winter <- summarize(surveys_1990_winter_gb, count = n())



## Exercise 3

surveys_dm <- filter(surveys, species_id == "DM")
surveys_dm <- group_by(surveys_dm, month)
summarize(surveys_dm, avg_wgt = mean(weight, na.rm = TRUE),
          avg_hfl = mean(hindfoot_length, na.rm = TRUE))


## Transformation of variables

prop_1990_winter <- mutate(counts_1990_winter, prop = count /sum(count))

## Exercise 4


filter(surveys_1990_winter_gb, weight == min(weight))


## Chainning with pipes

prop_1990_winter_piped <- surveys %>%
  filter(year == 1990, month %in% 1:3)
  select(-year) %>% ... # select all columns but year
  group_by(species_id) %>%... # group by species_id
  summarize(count = n()) %>%... # summarize with counts
  mutate(prop = count/sum(count))... # mutate into proportions
