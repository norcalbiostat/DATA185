library(tidyverse)

raw <- readxl::read_xlsx(here::here("_DATA185_F23_logistics.xlsx"), 
                              skip=1, sheet = "module design")

names(raw) <- c("Module","lesson","Social","Ethics","Tech", "Description",
                     "EQ", "understandings", "obj", 
                     "Notes","Read","Watch",
                     "Do","Pracice","Apply", "Reflect", 
                     "assessment_evidence", "Assess")

schedule <- raw %>% janitor::clean_names()
