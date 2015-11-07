library("ggplot2", lib.loc="D:/Program Files/R/R-3.2.2/library")

data_c2_l <- read.csv("F:\\Dropbox\\G2ELab\\R\\Datas_Plots\\C2_RAIL_AIR\\data_c2_rail_air_l.csv")
data_c2_d <- read.csv("F:\\Dropbox\\G2ELab\\R\\Datas_Plots\\C2_RAIL_AIR\\data_c2_rail_air_d.csv")
data_c2_p <- read.csv("F:\\Dropbox\\G2ELab\\R\\Datas_Plots\\C2_RAIL_AIR\\data_c2_rail_air_p.csv")
data_c2_m <- read.csv("F:\\Dropbox\\G2ELab\\R\\Datas_Plots\\C2_RAIL_AIR\\data_c2_rail_air_m.csv")

theme_toto <- theme(
  axis.title.x = element_text(size = 16),
  axis.title.y = element_text(size = 16),
  axis.text.x = element_text(size = 14), 
  axis.text.y = element_text(size = 14),
  legend.title = element_text(size = 13),
  legend.text = element_text(size = 13),
  strip.background = element_rect(fill = "pink"),
  strip.text.x = element_text(size = 14, face = "bold"),
  strip.text.y = element_text(size = 14, face = "bold"))

plot_C2_M_d <- ggplot(data_c2_d, aes(x = DISTANCE, y = Inductance, colour = type)) + geom_line(size = 1) + geom_point(size = 4) + labs(x = "DISTANCE (mm)", y = "Mutual-Inductance (uH)")
plot_C2_M_d  + theme_toto

plot_C2_k_d <- ggplot(data_c2_d, aes(x = DISTANCE, y = Coefficient, colour = type)) + geom_line(size = 1) + geom_point(size = 4) + labs(x = "DISTANCE (mm)", y = "Coupling Coefficient")
plot_C2_k_d + theme_toto

plot_C2_M_p <- ggplot(data_c2_p, aes(x = MISALIGMENT, y = Inductance, colour = type)) + geom_line(size = 1) + geom_point(size = 3) + facet_grid(. ~ DISTANCE) + labs(x = "MISALIGMENT (mm)", y = "Mutual-Inductance (uH)")
plot_C2_M_p + theme_toto

plot_C2_k_p <- ggplot(data_c2_p, aes(x = MISALIGMENT, y = Coefficient, colour = type)) + geom_line(size = 1) + geom_point(size = 3) + facet_grid(. ~ DISTANCE) + labs(x = "MISALIGMENT (mm)", y = "Coupling Coefficient")
plot_C2_k_p + theme_toto

plot_C2_M_m <- ggplot(data_c2_m, aes(x = MOVEMENT, y = Inductance, colour = type)) + geom_line(size=1) + geom_point(size = 4) + facet_grid(DISTANCE ~ .) + labs(x = "MOVEMENT (mm)",y = "Mutual-Inductance (uH)")
plot_C2_M_m + theme_toto

plot_C2_k_m <- ggplot(data_c2_m, aes(x = MOVEMENT, y = Coefficient, colour = type)) + geom_line(size=1) + geom_point(size = 4) + facet_grid(DISTANCE ~ .) + labs(x = "MOVEMENT (mm)",y = "Coupling Coefficient")
plot_C2_k_m + theme_toto

plot_c2_l <- ggplot(data_c2_l, aes(x = Software, y = Value, fill = Inductance)) + geom_bar(position = "dodge", stat="identity") + geom_text(aes(label = Value), vjust = 1.5, color = "white", position = position_dodge(.9), size = 6) + ylim(0, max(data_c2_l$Value) * 1.05) + labs(x = "Software",y = "Self-Inductance (uH)")
plot_c2_l + theme_toto