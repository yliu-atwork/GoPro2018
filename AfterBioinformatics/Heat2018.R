###heatmap on 2017 fish taxa; source:https://rlbarter.github.io/superheat/basic-usage.html

# install devtools
install.packages("devtools")
# use devtools to install superheat
devtools::install_github("rlbarter/superheat")
library(superheat)
install.packages("readxl")
library(readxl)
getwd()
setwd("C:/Users/yuan.liu/Desktop")
##I tried too many time for line 14/15. REMEMBER!!

#Temporal:
Fish_20_1 <- read_xlsx(path = "2018Heatmap.xlsx", sheet = "Heat-Top20-1", col_names = TRUE)
Fish_20_2 <- read_xlsx(path = "2018Heatmap.xlsx", sheet = "Heat-Top20-2", col_names = TRUE)

Fish_t <- read_xlsx(path = "2018Heatmap.xlsx", sheet = "Heat-trans-all", col_names = TRUE)
#Spatial:

Fish_20_1 <- data.matrix(Fish_20_1)
Fish_20_2 <- data.matrix(Fish_20_2)
Fish_t <- data.matrix(Fish_t)


###row.names(Fish_20_1) <- C ("May", "Jun", "Jul", "Aug", "Sep", "Nov", "Dec", "Jan", "Feb", "Mar", "Apr")
###row.names(Fish_20_2) <- C ("May", "Jun", "Jul", "Aug", "Sep", "Nov", "Dec", "Jan", "Feb", "Mar", "Apr")

row.names(Fish_t) <- c ("Scup","Atlantic menhaden/river herring","Atlantic menhaden","Bay anchovy","Tautog","Black Sea Bass","Cunner","Bluefish","Atlantic_silverside","Seaboard goby","Striped sea robin","Striped bass","Mummichog","Weakfish","Butterfish","Atlantic herring","Summer flounder","Hogchoker","Striped killifish","Windowpane","Winter/Yellowtail flounder","White perch","Northern sea robin","Atlantic thread herring","Pacific sand lance","Smallmouth flounder","Flathead grey mullet","Red/White/Spotted hake","Northern puffer","American eel","Oyster toadfish","White sucker","Broad striped anchovy","American coget","Silver hake","Northern stargazer","Northern kingfish","Bluegill lepomis","Rock bass","Large yellow croaker","Rock gunnel","Arctic char","Black drum/Spot pogonias","Naked goby","Feather blenny","Inland silverside","Tesselated darter","Atlantic mackerel","Rainbow trout/salmon","Sea lamprey","Spotfin killifish","American gizzard","Fourspine stickleback","Spanish mackerel","Largemouth bass","Atlantic salmon","Smooth dogfish","Rough silverside","Striped cusk eel","Sheepshead minnow","Red breast sunfish","Pumpkinseed","Yellow perch","Thresher shark","Planehead filefish")

#Temporal:
superheat(Fish_20_2[1:11,], left.label.size=0.16, bottom.label.size=1.0, left.label.text.size = 3.0, bottom.label.text.size = 3.5, left.label.text.angle=0, bottom.label.text.angle = 90, title="                 The top 20 most abundant fish taxa by sampling month", title.size=5, yt=Fish_20_2[12,], yt.axis.name = "Relativized to Scup", yt.axis.size = 7, yt.axis.name.size = 9, yt.plot.size = 0.7, legend.height = 0.10)
#superheat(Fish_20_1[1:11,], left.label.size=0.16, bottom.label.size=0.60, left.label.text.size = 3.0, bottom.label.text.size = 3.5, left.label.text.angle=0, bottom.label.text.angle = 90, title="The top 20 most abundant fish taxa by sampling month", title.size=5, yt=Fish_20_1[12,], yt.axis.name = "Relativized to Scup", yt.axis.size = 7, yt.axis.name.size = 9, yt.plot.size = 0.7, legend.height = 0.10)


superheat(Fish_t[1:65,], left.label.size=1.6, bottom.label.size=0.60, left.label.text.size = 1.0, bottom.label.text.size = 3.5, left.label.text.angle=0, bottom.label.text.angle = 90, title="All fish taxa by sampling month", title.size=5, yt=Fish_t[13,], yt.axis.name = "Relativized to Scup", yt.axis.size = 7, yt.axis.name.size = 9, yt.plot.size = 0.7, legend.height = 0.10)
#Spatial:
#superheat(Fish[1:23,], left.label.size=0.16, bottom.label.size=0.47, left.label.text.size = 3.0, bottom.label.text.size = 3.5, left.label.text.angle=0, bottom.label.text.angle = 90, title="           Heat map of 17 major fish taxa by sampling site", title.size=5, yt=Fish[24,],yt.axis.name = "Relativized to Bay anchovy", yt.axis.size = 7, yt.axis.name.size = 9, yt.plot.size = 0.7, legend.height = 0.10)


png("All fish taxa.png", height = 900, width = 800)


dev.off()

##Update R:
install.packages("installr")

library(installr)

updateR()
