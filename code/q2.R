HIS <- read.csv('../data/bmi_voeg.csv')
HIS$region <- factor(HIS$region, levels=1:3, labels=c("Flanders", "Brussels", "Wallonia"))
HIS$province <- factor(HIS$province, levels=1:12, labels=c("Antwerpen", "Vlaams-Brabant", "Limburg",
														  "Oost-Vlaanderen", "West-Vlaanderen", "Brabant wallon",
														  "Hainaut", "Liège", "Luxembourg",
														  "Namur", "Brussels", "Eupen"))
HIS$sex <- factor(HIS$sex, levels=1:2, labels=c('Male', 'Female'))
