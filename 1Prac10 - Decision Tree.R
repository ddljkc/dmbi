install.packages("party")
library(party)
input.dat <- readingSkills[c(1:105),]
png(file="decissiontree.png")
output.tree <- ctree(nativeSpeaker ~ age + shoeSize + score, data= input.dat)	
dev.off()
plot(output.tree)