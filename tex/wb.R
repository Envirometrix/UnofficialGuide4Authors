
readLines(url("http://maps.google.com/maps/geo?q=1600+Amphitheatre+Parkway,+Mountain+View,+CA&output=csv&key="), n=1, warn=FALSE)

wb <- data.frame(mil=c(4, 3.7, 3.05, 3, 2.8, 2.7, 2.5, 2.4, 2.4, 2.3, 2.23, 2.3, 2.38, 2.42, 2.5, 2.47, 2.48, 2.4, 2.38, 2.45, 2.7), sci=c(rep(NA, 21-12), rev(c(2.18, 1.5, 1.47, 1.52, 1.5, 1.5, 1.45, 1.55, 1.49, 1.46, 1.36)), NA), years=1989:2009)
plot(wb$years, wb$mil, type="l", ylim=c(0,4), ylab="Expenditure as percentage of GDP", xlab="Year", lwd=4)
lines(wb$years, wb$sci, lty=5, lwd=2)