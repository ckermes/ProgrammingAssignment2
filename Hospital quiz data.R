hospitaldata <- read.csv('hospital-data.csv', na.strings = "NA", stringsAsFactors = FALSE)
outcomes <- read.csv('outcome-of-care-measures.csv', na.strings = "NA", stringsAsFactors = FALSE)
names(hospitaldata) <- c('hospital', 'state', 'outcome')