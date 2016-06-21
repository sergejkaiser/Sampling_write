# for q2.
library(survey)
HIS <- read.csv('../data/bmi_voeg.csv')
HIS$region <- factor(HIS$region, levels=1:3, labels=c("Flanders", "Brussels", "Wallonia"))
HIS$province <- factor(HIS$province, levels=1:12, labels=c("Antwerpen", "Vlaams-Brabant", "Limburg",
														   "Oost-Vlaanderen", "West-Vlaanderen", "Brabant wallon",
														   "Hainaut", "Liège", "Luxembourg",
														   "Namur", "Brussels", "Eupen"))
HIS$sex <- factor(HIS$sex, levels=1:2, labels=c('Male', 'Female'))
HIS$age7 <- ordered(HIS$age7, levels=1:7, labels=c("15-29", "25-34", "35-44", "45-54", 
												   "55-64", "65-74", "75+"))
HIS$fa3 <- ordered(HIS$fa3, levels=1:3, labels=c("low", "mid", "high"))


# 4 rows have no province.
nHIS <- na.omit(HIS, province)

survey.design <- svydesign(id=~id+hh,
						   strata=~province,
						   data=nHIS,
						   weights=~wfin)

mysvyglm <- svyglm(,survey) 