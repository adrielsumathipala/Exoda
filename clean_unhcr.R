d <- read.csv("raw_unhcr_refugee.csv")

replace <- function(orig, rep, cleaned) {
  cleaned$origin[cleaned$origin == orig] <- rep
  cleaned$asylum[cleaned$asylum == orig] <- rep
  return(cleaned)
}
cleaned <- d
cleaned$origin <- as.character(cleaned$origin)
cleaned$asylum <- as.character(cleaned$asylum)
cleaned$refugees <- as.numeric(cleaned$refugees)
cleaned$year <- as.numeric(cleaned$year)
cleaned <- cleaned[cleaned$asylum != "Various/Unknown",]
cleaned <- cleaned[cleaned$origin != "Various/Unknown",]
cleaned <- cleaned[cleaned$refugees != "*",]

cleaned <- replace("Dem. Rep. of the Congo", "Democratic Republic of the Congo", cleaned)
cleaned <- replace("United Rep. of Tanzania", "Tanzania", cleaned)
cleaned <- replace("Syrian Arab Rep.", "Syria", cleaned)
cleaned <- replace("Bolivia (Plurinational State of)", "Bolivia", cleaned)
cleaned <- replace("Serbia and Kosovo (S/RES/1244 (1999))", "Serbuia", cleaned)
cleaned <- replace("Venezuela (Bolivarian Republic of)", "Venezuela", cleaned)
cleaned <- replace("Iran (Islamic Rep. of)", "Iran", cleaned)
cleaned <- replace("Lao People's Dem. Rep.", "Lao PDR", cleaned)
cleaned <- replace("Dem. People's Rep. of Korea", "Dem. Rep. Korea", cleaned)
cleaned <- replace("Rep. of Moldova", "Moldova", cleaned)
cleaned <- replace("Rep. of Korea", "South Korea", cleaned)
cleaned <- replace("Viet Nam", "Vietnam", cleaned)
cleaned <- replace("C\xf4te d'Ivoire", "Côte d'Ivoire", cleaned)
cleaned <- replace("Russian Federation", "Russia", cleaned)
cleaned <- replace("The former Yugoslav Republic of Macedonia", "Macedonia", cleaned)


# vec <- c()
# for (row in 1:nrow(cleaned)) {
#   if(grepl(cleaned$origin[row], "(")) {
#     vec.append(cleaned$origin[row])
#   }
#   if(grepl(cleaned$asylum[row], "(")) {
#     vec.append(cleaned$asylum[row])
#   }
# }

# cleaned$origin[cleaned$origin == "Dem. Rep. of the Congo"] <- "Democratic Republic of the Congo"
# cleaned$asylum[cleaned$asylum == "Dem. Rep. of the Congo"] <- "Democratic Republic of the Congo"
# 
# cleaned$origin[cleaned$origin == "United Rep. of Tanzania"] <- "Tanzania"
# cleaned$asylum[cleaned$asylum == "United Rep. of Tanzania"] <- "Tanzania"
# 
# cleaned$origin[cleaned$origin == "Syrian Arab Rep."] <- "Tanzania"
# cleaned$asylum[cleaned$asylum == "Syrian Arab Rep."] <- "Tanzania"



write.csv(cleaned, file="clean_unhcr_refugee.csv", row.names = F)
