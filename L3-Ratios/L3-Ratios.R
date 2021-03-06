#Welcome to Lab 3, please answer the following questions

#Install and require package MASS
library(MASS)
library (dplyr)

data <- mutate(anorexia)

#Using the built in dataset anorexia, aggregate the data to look at:
#       1. the number of patients who received a treatment (choose one) who responded positively to treatment
#       2. the number of patients who recieved a treatment who either did not respond or responded negatively to treatment
#       3. the number of patients who were in the control group who responded positively to treatment
#       4. the number of patients who were in the control group who did not respond or responded negatively to treatment

#Such that you end up with a 2 by 2 table


#What kind of analysis appropriate to perform on a study like this?

# a cohort study would be most appropriate for a dataset like this


#Perform the appropriate choice on the dataset

data <- mutate(anorexia, "total" = Prewt + Postwt) %>% 
  group_by(Treat) %>% 
  summarize("average.Postwt" = mean(Postwt), "average.Prewt" = mean(Prewt), "average.total" = mean(total))

data <- mutate(data, "RR" = (average.Postwt / average.total) / (data[2,2] / data[2,4]))

#What does your result tell you?





#Write a function that allows you to perform your analysis based on what kind of treatment you want 
#that returns the appropriate calculation





#Which treatment worked better?





