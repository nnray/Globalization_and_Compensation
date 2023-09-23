library(foreign);library(here)

cand <- read.csv(here("data",'prq_fig2_3.csv'))

##############
##DATA SETUP##
##############


#creates year counter for loop. This line MUST be done after the years ending in 2 are dropped
cand$yearID <- as.numeric(as.factor(cand$year))

#needed for for loop and to create arrays below
N <- max(cand$yearID)

#create year counter. has to skip years ending in 2
#NOTE: there was no reapportionment in 1922 so that year is NOT dropped
tick <- c(1840, seq(1844, 1850, 2), seq(1854, 1860, 2), seq(1864, 1870, 2), 
          seq(1874, 1880, 2), seq(1884, 1890, 2), seq(1894, 1900, 2), seq(1904, 1910, 2), 
          seq(1914, 1922, 2), seq(1924, 1930, 2), seq(1934, 1940, 2), seq(1944, 1950, 2),
          seq(1954, 1960, 2), seq(1964, 1970, 2), seq(1974, 1980, 2), seq(1984, 1990, 2),
          seq(1994, 2000, 2), seq(2004, 2010, 2), 2014, 2016, 2018)

labs <- c(1840, seq(1844, 1850, 4), seq(1854, 1860, 4), seq(1864, 1870, 4), 
          seq(1874, 1880, 4), seq(1884, 1890, 4), seq(1894, 1900, 4), seq(1904, 1910, 4), 
          seq(1914, 1920, 4), seq(1924, 1930, 4), seq(1934, 1940, 4), seq(1944, 1950, 4),
          seq(1954, 1960, 4), seq(1964, 1970, 4), seq(1974, 1980, 4), seq(1984, 1990, 4),
          seq(1994, 2000, 4), seq(2004, 2010, 4), 2014, 2018)




#############
##COX-KATZ##
############

direct.coef <- array(NA, dim = c(N,1))
direct.lo <- array(NA, dim = c(N,1))
direct.hi <- array(NA, dim = c(N,1))
qual.coef <- array(NA, dim = c(N,1))
qual.lo <- array(NA, dim = c(N,1))
qual.hi <- array(NA, dim = c(N,1))
scare.coef <- array(NA, dim = c(N,1))
scare.lo <- array(NA, dim = c(N,1))
scare.hi <- array(NA, dim = c(N,1))
overall <- array(NA, dim = c(N,1))
indirect <- array(NA, dim = c(N,1))
ind.prcnt <- array(NA, dim = c(N,1))



for(i in 1:N){
#temp <- subset(cand, yearID == i)
mod.d <- lm(dv ~ dvp + party + inc_t + inc_t1 + demqa + demqa_t1, subset(cand, yearID == i))
mod.s <- lm(demqa ~ dvp + party +  inc_t + inc_t1+ demqa_t1, subset(cand,  yearID == i))
direct.coef[i] <- coef(mod.d)[4]
direct.lo[i] <- confint(mod.d, level = 0.95, vcov = hccm(mod.d))[4,1]
direct.hi[i] <- confint(mod.d, level = 0.95, vcov = hccm(mod.d))[4,2]

qual.coef[i] <- coef(mod.d)[6]
qual.lo[i] <- confint(mod.d, level = 0.95, vcov = hccm(mod.d))[6,1]
qual.hi[i] <- confint(mod.d, level = 0.95, vcov = hccm(mod.d))[6,2]

scare.coef[i] <- coef(mod.s)[4]
scare.lo[i] <- confint(mod.s, level = 0.95, vcov = hccm(mod.s))[4,1]
scare.hi[i] <- confint(mod.s, level = 0.95, vcov = hccm(mod.s))[4,2]

overall[i] <- direct.coef[i] + qual.coef[i]*scare.coef[i]

indirect[i] <- qual.coef[i]*scare.coef[i]

ind.prcnt[i] <- 100*(indirect[i]/overall[i])
}

data<-data.frame(incumbency=overall,year=tick)
write.csv(data,file=here("data","carson_etal","overall.csv"),row.names = FALSE)
######################################################################
#FIGURE 2: Scare Off Effect Estimates from Cox-Katz Estimator by Year#
######################################################################



###############
#DIRECT EFFECT#
###############

plot(tick, direct.coef, ylim = c(-8, 14), type = 'n', xlab='', ylab='', xaxt='n', yaxt='n' )
abline(h=0)
points(tick, direct.coef, pch = 16)


#code puts axis text and an angle
axis(side = 1, at = tick, labels = FALSE ) 
text(labs-2, par("usr")[3]-0.75, labels = labs, srt = 45, pos = 1, xpd = TRUE, cex = 0.7)

axis(side = 2, at = seq(-8, 14, 2),  las = 2)
segments(x0 = tick, x1 = tick, y0 = direct.lo, y1 = direct.hi, lwd = 2)

mtext("Year", side = 1, line = 2.75)
mtext("Estimate", side = 2, line = 2.75)
mtext("Direct Effect", side = 3, line = 0.5, cex = 1.25)


################
#INDIRECT EFFET#
################
#just indirect


plot(tick, indirect, ylim = c(0, 5), type = 'n', xlab='', ylab='', xaxt='n', yaxt='n' )
ind.loess <- loess(indirect ~ tick)
lines(tick, indirect, lwd = 3)
#points(tick, indirect, pch = 16)
abline(h = 0)

#code puts axis text and an angle
axis(side = 1, at = tick, labels = FALSE ) 
text(labs-2, par("usr")[3]-0.25, labels = labs, srt = 45, pos = 1, xpd = TRUE, cex = 0.7)

axis(side = 2, at = seq(0, 5, 1),  las = 2)
#segments(x0 = tick, x1 = tick, y0 = qual.lo, y1 = qual.hi, lty = 2)

mtext("Year", side = 1, line = 2.75)
mtext("Estimate", side = 2, line = 2.75)
mtext("Indirect Effect", side = 3, line = 0.5, cex = 1.25)




######################################################################
#FIGURE 3: Scare Off Effect Estimates from Cox-Katz Estimator by Year#
######################################################################

###########
#SCARE OFF#
###########
par(mar = c(5, 4, 2, 2))
plot(tick, scare.coef, ylim = c(-0.2, 1.2), type = 'n', xlab='', ylab='', xaxt='n', yaxt='n' )
abline(h = 0)
points(tick, scare.coef, pch = 16)

#code puts axis text and an angle
axis(side = 1, at = tick, labels = FALSE ) 
text(labs-2, par("usr")[3] -0.045 , labels = labs, srt = 45, pos = 1, xpd = TRUE, cex = 0.7)

axis(side = 2, at = seq(-0.2, 1.2, 0.2),  las = 2)
segments(x0 = tick, x1 = tick, y0 = scare.lo, y1 = scare.hi, lwd = 2)

mtext("Year", side = 1, line = 2.75)
mtext("Estimate", side = 2, line = 2.75)
#mtext("Scare Off", side = 3, line = 0.5, cex = 1.25)

lines(tick, loess(scare.coef~tick)$fit, lwd = 2, col = 'grey')
