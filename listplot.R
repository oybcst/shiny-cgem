listplot <- function(time,rdata){

levels = dim(rdata$data)[1]
pal <- colorNumeric(palette = turbo(256),domain = c(1:levels))

plot(time,rdata$data[levels,],ylim=c(rdata$min,rdata$max),main=rdata$name,col=pal(levels),type="l",ylab=paste(rdata$name,rdata$unit))
mtext(rdata$description,side=3,line=.2,cex=0.8)
for(i in (levels-1):1){
lines(time,rdata$data[i,],col=pal(i))
}

}

