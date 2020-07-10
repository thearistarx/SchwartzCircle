library("circlize")

sval <- data.frame(
  factors = c("Открытость изменениям", "Самопреодоление", "Сохранение", "Самоутверждение")
)

miniVal <- c("Самостоятельность", "Стимуляция", "Гедонизм", "Достижение", 
             "Власть", "Безопасность", "Традиция", "Конформизм", "Благожелательность", 
             "Универсализм")

circos.par(gap.degree = 0, cell.padding = c(0, 0, 0, 0),
           start.degree = 90, track.margin = c(0, 0), clock.wise = FALSE)


circos.initialize(
  sval$factors, xlim = c(0, 1.5)
)

circos.track(sval$factors, ylim = c(0, 2))
circos.text(x = -0.75, y = 1.2, sval$factors[1], facing = "bending.inside")
circos.text(x = 0.75, y = 1.2, sval$factors[2], facing = "bending.inside")
circos.text(x = 2.3, y = 1.2, sval$factors[3], facing = "bending.outside")
circos.text(x = 3.8, y = 1.2, sval$factors[4], facing = "bending.outside")
# открытость изменениям
# самостоятельность
draw.sector(center = c(0, 0), start.degree = 90, end.degree = 126, border = 1, rou1 = 0.8)
circos.text(x = -0.3, y = -3.4, miniVal[1], facing = "reverse.clockwise", cex = 1)
# стимуляция
draw.sector(center = c(0, 0), start.degree = 126, end.degree = 162, border = 1, rou1 = 0.8)
circos.text(x = -0.9, y = -3.4, miniVal[2], facing = "reverse.clockwise", cex = 1)
# гедонизм
draw.sector(center = c(0, 0), start.degree = 162, end.degree = 198, border = 1, rou1 = 0.8)
circos.text(x = -1.5, y = -3.4, miniVal[3], facing = "reverse.clockwise", cex = 1)
# самоутверждение
# достижение
draw.sector(center = c(0, 0), start.degree = 198, end.degree = 234, border = 1, rou1 = 0.8)
circos.text(x = -2.1, y = -3.4, miniVal[4], facing = "reverse.clockwise", cex = 1)
# власть
draw.sector(center = c(0, 0), start.degree = 234, end.degree = 270, border = 1, rou1 = 0.8)
circos.text(x = -2.7, y = -3.4, miniVal[5], facing = "reverse.clockwise", cex = 1)
# сохранение
# безопасность
draw.sector(center = c(0, 0), start.degree = 270, end.degree = 300, border = 1, rou1 = 0.8)
circos.text(x = -3.25, y = -3.4, miniVal[6], facing = "clockwise", cex = 1)
# традиция
draw.sector(center = c(0, 0), start.degree = 300, end.degree = 330, border = 1, rou1 = 0.8)
circos.text(x = -3.75, y = -3.4, miniVal[7], facing = "clockwise", cex = 1)
# Конформизм
draw.sector(center = c(0, 0), start.degree = 330, end.degree = 360, border = 1, rou1 = 0.8)
circos.text(x = -4.25, y = -3.4, miniVal[8], facing = "clockwise", cex = 1)
# самопреодоление
# благожелательность
draw.sector(center = c(0, 0), start.degree = 360, end.degree = 45, border = 1, rou1 = 0.8)
circos.text(x = -4.85, y = -3.4, miniVal[9], facing = "clockwise", cex = 1)
# универсализм
draw.sector(center = c(0, 0), start.degree = 45, end.degree = 90, border = 1, rou1 = 0.8)
circos.text(x = -5.65, y = -3.4, miniVal[9], facing = "clockwise", cex = 1)

circos.clear()
