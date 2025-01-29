setwd("/Users/jrbachrach/Documents/sis_750/Week 2/PS1")
install.packages("haven")
library(haven)
library(readr)
library(tidyverse)

write_csv(afro, path="from_sav_data.csv")


afro <- read_csv("from_sav_data.csv")
view(afro)

select(afro,
       RESPNO,
       date = DATEINTR,
       age = Q1,
       china_percep = Q78A,
       USA_percept = Q78B) %>%
  summary(.)

#groupby(afro,THISINT) %>%

view(afro)
  
afro %>%
  group_by(THISINT) %>%
  summarize(.,
            n())

afro %>%
  group_by(Q2) %>%
  summarize(.,
            n())

afro %>%
  group_by(Q1) %>%
  summarize(.,
            n())

summarize(afro,
          mean_age = mean(Q1),

          
select(afro,
       china = Q78A,
       USA = Q78B) %>%
  summary(.)

afro %>%
  group_by(Q78A) %>%
  summarize(.,
            n())


count(afro,Q78A) %>%
mutate(., proportion = prop.table(n))

count(afro,Q78B) %>%
  mutate(., proportion = prop.table(n))

?t.test


afro =
  afro %>%
  mutate(
    across(
      Q78A:Q78B,
      ~if_else(.x %in% 1:5, .x, NA)
    )
  )
