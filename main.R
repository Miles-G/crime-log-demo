library(dplyr)

crimes <- read.csv("./tabula-crime log demo.csv", 
                   header = F,
                   stringsAsFactors = F)
crimes <- crimes %>% 
  select(-1 * seq(2, ncol(crimes), 2)) %>% 
  setNames(c("incident_reported",
             "type",
             "incident_number",
             "incident_address",
             "address_name",
             "case_number",
             "incident_start",
             "incident_end",
             "disposition"))
View(crimes)