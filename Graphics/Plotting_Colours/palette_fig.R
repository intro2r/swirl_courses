#fname <- pathtofile("default-palettes.png")
try(dev.off(),silent=TRUE)
plot.new()

temp <- c(5,7,6,4,8)
par(mfrow = c(2,2) )
barplot(temp, col=rainbow(5), main="rainbow")
barplot(temp, col=heat.colors(5), main="heat.colors")
barplot(temp, col=terrain.colors(5), main="terrain.colors")
barplot(temp, col=topo.colors(5), main="topo.colors")

par(mfrow = c(1,1) )

