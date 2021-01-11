# Normal Boxplots

x <- read.csv("~/Desktop/nfbugs.csv", header=T,sep=",")

type <- c("Jenkins F", "Elasticsearch F", "Terasology F", "Jenkins NF", "Elasticsearch NF", "Terasology NF") 

boxplot(x$jenkins.all.f,x$elasticsearch.all.f,x$terasology.all.f,x$jenins.all.nf,x$elasticsearch.all.nf,x$terasology.all.nf,names=type,ylab="Java: Days between inducing change and fixing change")


type <- c("Terasology F", "Elasticsearch-py F", "Falcon F", "Terasology NF", "Elasticsearch-py  NF", "Falcon NF")

boxplot(x$terasology.all.f,x$elasticsearch.py.all.f,x$falcon.all.f,x$terasology.all.nf,x$elasticsearch.py.all.nf,x$falcon.all.nf,names=type,ylab="Python: Days between inducing change and fixing change")


type <- c("Jenkins F", "Elasticsearch F", "Terasology F", "Jenkins NF", "Elasticsearch NF", "Terasology NF") 

boxplot(x$jenkins.earliest.f,x$elasticsearch.earliest.f,x$terasology.earliest.f,x$jenkins.earliest.nf,x$elasticsearch.earliest.nf,x$terasology.earliest.nf,names=type,ylab="Java: Days between earliest inducing change and fixing change")


type <- c("Terasology F", "Elasticsearch-py F", "Falcon F", "Terasology NF", "Elasticsearch-py  NF", "Falcon NF")

boxplot(x$terasology.earliest.f,x$elasticsearch.py.earliest.f,x$falcon.earliest.f,x$terasology.earliest.nf,x$elasticsearch.py.earliest.nf,x$falcon.earliest.nf,names=type,ylab="Python: Days between earliest inducing change and fixing change")

-----------------------------------------------------------------------

# Violin Plots

library(vioplot)

vioplot(x$elasticsearch.all.f,col="lightblue",plotCentre="line",side="left")

vioplot(x$elasticsearch.all.nf,col="palevioletred",plotCentre="line",side="right", add=T)

# title(cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5, ylab="Days between inducing change and fixing change")

-----------------------------------------------------------------------

vioplot(x$jenkins.all.f,col="lightblue",plotCentre="line",side="left")

vioplot(x$jenins.all.nf,col="palevioletred",plotCentre="line",side="right", add=T)

# title(cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5, ylab="Days between inducing change and fixing change")

-----------------------------------------------------------------------
vioplot(x$elasticsearch.earliest.f,col="lightblue",plotCentre="line",side="left")

vioplot(x$elasticsearch.earliest.nf,col="palevioletred",plotCentre="line",side="right", add=T)

# title(cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5, ylab="Days between earliest inducing change and fixing change")

-----------------------------------------------------------------------

vioplot(x$jenkins.earliest.f,col="lightblue",plotCentre="line",side="left")

vioplot(x$jenkins.earliest.nf,col="palevioletred",plotCentre="line",side="right", add=T)

# title(cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5, ylab="Days between earliest inducing change and fixing change")

# -----------------------------------------------------------------------
# -----------------------------------------------------------------------
# -----------------------------------------------------------------------
# -----------------------------------------------------------------------
# -----------------------------------------------------------------------
# -----------------------------------------------------------------------
# -----------------------------------------------------------------------

vioplot(x$falcon.all.f,col="lightblue",plotCentre="line",side="left")

vioplot(x$falcon.all.nf,col="palevioletred",plotCentre="line",side="right", add=T)

# title(cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5, ylab="Days between inducing change and fixing change")

-----------------------------------------------------------------------

vioplot(x$gae.boilerplate.all.f,col="lightblue",plotCentre="line",side="left")

vioplot(x$gae.boilerplate.all.nf,col="palevioletred",plotCentre="line",side="right", add=T)

# title(cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5, ylab="Days between inducing change and fixing change")
-----------------------------------------------------------------------

vioplot(x$falcon.earliest.f,col="lightblue",plotCentre="line",side="left")

vioplot(x$falcon.earliest.nf,col="palevioletred",plotCentre="line",side="right", add=T)

# title(cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5, ylab="Days between earliest inducing change and fixing change")

-----------------------------------------------------------------------

vioplot(x$gae.boilerplate.earliest.f,col="lightblue",plotCentre="line",side="left")

vioplot(x$gae.boilerplate.earliest.nf,col="palevioletred",plotCentre="line",side="right", add=T)

# title(cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5, ylab="Days between earliest inducing change and fixing change")

-----------------------------------------------------------------------

# Wilcoxin test

bugs <- read.csv("~/Desktop/bugs.csv", header=T,sep=",")

jenkins.all.nf<-bugs[1]
jenkins.all.nf<-jenkins.all.nf[!is.na(jenkins.all.nf)]
sum(jenkins.all.nf < 0) # 0

jenkins.earliest.nf<-bugs[2]
jenkins.earliest.nf<-jenkins.earliest.nf[!is.na(jenkins.earliest.nf)]
sum(jenkins.earliest.nf < 0) # 0
jenkins.all.f<-bugs[3]
jenkins.all.f<-jenkins.all.f[!is.na(jenkins.all.f)]
sum(jenkins.all.f < 0) # 2
jenkins.earliest.f<-bugs[4]
jenkins.earliest.f<-jenkins.earliest.f[!is.na(jenkins.earliest.f)]
sum(jenkins.earliest.f < 0) # 1


sum(jenkins.all.nf > 365) # 2

elasticsearch.all.nf<-bugs[5]
sum(elasticsearch.all.nf < 0) # 0
elasticsearch.all.nf <- elasticsearch.all.nf[elasticsearch.all.nf > 0]
elasticsearch.all.nf<-elasticsearch.all.nf[!is.na(elasticsearch.all.nf)]
elasticsearch.earliest.nf<-bugs[6]
sum(elasticsearch.earliest.nf < 0) # 0

elasticsearch.earliest.nf <- elasticsearch.earliest.nf[elasticsearch.earliest.nf > 0]
elasticsearch.earliest.nf<-elasticsearch.earliest.nf[!is.na(elasticsearch.earliest.nf)]
elasticsearch.all.f<-bugs[7]
sum(elasticsearch.all.f < 0) # 342

elasticsearch.all.f <- elasticsearch.all.f[elasticsearch.all.f > 0]
elasticsearch.all.f<-elasticsearch.all.f[!is.na(elasticsearch.all.f)]
elasticsearch.earliest.f<-bugs[8]
sum(elasticsearch.earliest.f < 0) # 0

elasticsearch.earliest.f <- elasticsearch.earliest.f[elasticsearch.earliest.f > 0]
elasticsearch.earliest.f<-elasticsearch.earliest.f[!is.na(elasticsearch.earliest.f)]

sum(elasticsearch.all.nf > 365) # 29


falcon.all.nf<-bugs[9]
falcon.all.nf<-falcon.all.nf[!is.na(falcon.all.nf)]
falcon.earliest.nf<-bugs[10]
falcon.earliest.nf<-falcon.earliest.nf[!is.na(falcon.earliest.nf)]
falcon.all.f<-bugs[11]
falcon.all.f<-falcon.all.f[!is.na(falcon.all.f)]
falcon.earliest.f<-bugs[12]
falcon.earliest.f<-falcon.earliest.f[!is.na(falcon.earliest.f)]

sum(falcon.all.nf > 365) # 5


gaeboilerplate.all.nf<-bugs[13]
gaeboilerplate.all.nf<-gaeboilerplate.all.nf[!is.na(gaeboilerplate.all.nf)]
gaeboilerplate.earliest.nf<-bugs[14]
gaeboilerplate.earliest.nf<-gaeboilerplate.earliest.nf[!is.na(gaeboilerplate.earliest.nf)]
gaeboilerplate.all.f<-bugs[15]
gaeboilerplate.all.f<-gaeboilerplate.all.f[!is.na(gaeboilerplate.all.f)]
gaeboilerplate.earliest.f<-bugs[16]
gaeboilerplate.earliest.f<-gaeboilerplate.earliest.f[!is.na(gaeboilerplate.earliest.f)]

sum(gaeboilerplate.all.nf > 365) # 0


wilcox.test(jenkins.all.f,jenkins.all.nf)
# 	Wilcoxon rank sum test with continuity correction

# data:  jenkins.all.f and jenkins.all.nf
# W = 21358, p-value = 0.1123
# alternative hypothesis: true location shift is not equal to 0
wilcox.test(elasticsearch.all.f,elasticsearch.all.nf)
# 	Wilcoxon rank sum test with continuity correction

# data:  elasticsearch.all.f and elasticsearch.all.nf
# W = 883587, p-value = 0.004315
# alternative hypothesis: true location shift is not equal to 0
wilcox.test(falcon.all.f,falcon.all.nf)
# 	Wilcoxon rank sum test with continuity correction

# data:  falcon.all.f and falcon.all.nf
# W = 15056, p-value = 0.7962
# alternative hypothesis: true location shift is not equal to 0
wilcox.test(gaeboilerplate.all.f,gaeboilerplate.all.nf)
# 	Wilcoxon rank sum test with continuity correction

# data:  gaeboilerplate.all.f and gaeboilerplate.all.nf
# W = 1559.5, p-value = 0.218
# alternative hypothesis: true location shift is not equal to 0

-----------------------------------------------------------------------

wilcox.test(jenkins.earliest.f,jenkins.earliest.nf)
# 	Wilcoxon rank sum test with continuity correction

# data:  jenkins.earliest.f and jenkins.earliest.nf
# W = 3171.5, p-value = 0.6983
# alternative hypothesis: true location shift is not equal to 0
wilcox.test(elasticsearch.earliest.f,elasticsearch.earliest.nf)
# 	Wilcoxon rank sum test with continuity correction

# data:  elasticsearch.earliest.f and elasticsearch.earliest.nf
# W = 30778, p-value = 0.2282
# alternative hypothesis: true location shift is not equal to 0
wilcox.test(falcon.all.f,falcon.all.nf)
# 	Wilcoxon rank sum test with continuity correction

# data:  falcon.all.f and falcon.all.nf
# W = 15056, p-value = 0.7962
# alternative hypothesis: true location shift is not equal to 0
wilcox.test(gaeboilerplate.earliest.f,gaeboilerplate.earliest.nf)
# 	Wilcoxon rank sum test with continuity correction

# data:  gaeboilerplate.earliest.f and gaeboilerplate.earliest.nf
# W = 134.5, p-value = 0.3901
# alternative hypothesis: true location shift is not equal to 0

-----------------------------------------------------------------------

# cliff's delta test

install.packages("effsize")
library(effsize)

# since wilcox.test(elasticsearch.all.f,elasticsearch.all.nf) gave us a p-value less than 0.05
# 	Wilcoxon rank sum test with continuity correction
# *********
# data:  elasticsearch.all.f and elasticsearch.all.nf
# W = 883587, p-value = 0.003591
# alternative hypothesis: true location shift is not equal to 0


# we can find the effect size using Cliff's Delta

# cliff.delta(elasticsearch.all.f,elasticsearch.all.nf)

# Cliff's Delta

# delta estimate: -0.2507339 (small)
# 95 percent confidence interval:
#       lower       upper 
# -0.42387025 -0.05991925 



-----------------------------------------------------------------------

vioplot(elasticsearch.earliest.f,col="lightblue",plotCentre="line",side="left")

vioplot(elasticsearch.earliest.nf,col="palevioletred",plotCentre="line",side="right", add=T)

vioplot(elasticsearch.all.f,col="lightblue",plotCentre="line",side="left")

vioplot(elasticsearch.all.nf,col="palevioletred",plotCentre="line",side="right", add=T)
