library("ggplot2", lib.loc="D:/Program Files/R/R-3.2.2/library")

data_c3_init <- read.csv("F:\\Dropbox\\G2ELab\\R\\Datas_Plots\\C3_RAIL_CORE\\data_c3_init.csv")
data_c3_d <- read.csv("F:\\Dropbox\\G2ELab\\R\\Datas_Plots\\C3_RAIL_CORE\\data_c3_rail_core_d.csv")
data_c3_p <- read.csv("F:\\Dropbox\\G2ELab\\R\\Datas_Plots\\C3_RAIL_CORE\\data_c3_rail_core_p.csv")
data_c3_m <- read.csv("F:\\Dropbox\\G2ELab\\R\\Datas_Plots\\C3_RAIL_CORE\\data_c3_rail_core_m.csv")

theme_stage <- theme(
  axis.title.x= element_text(size = 16),
  axis.title.y= element_text(size = 16),
  axis.text.x= element_text(size = 14), 
  axis.text.y= element_text(size = 14),
  legend.title= element_text(size = 13),
  legend.text= element_text(size = 13),
  strip.background= element_rect(fill = "pink"),
  strip.text.x= element_text(size = 14, face = "bold"),
  strip.text.y= element_text(size = 14, face = "bold"))

plot_c3_l <- ggplot(data_c3_init, aes(x = type, y = Value, fill = Inductance)) + geom_bar(position = "dodge", stat="identity") + geom_text(aes(label = Value), vjust = 1.5, color = "white", position = position_dodge(.9), size = 6) + ylim(0, max(data_c3_init$Value) * 1.05) + facet_grid(. ~ Distance) + labs(x = "Software",y = "Inductance (uH)")
plot_c3_l + theme_stage

plot_C3_d <- ggplot(data_c3_d, aes(x = DISTANCE, y = Value, colour = type)) + geom_line(size = 1) + geom_point(size = 3) + facet_grid(. ~ Inductance) + labs(x = "DISTANCE (mm)", y = "Inductance (uH)")
plot_C3_d  + theme_stage

plot_C3_d <- ggplot(data_c3_d, aes(x = DISTANCE, y = Error, colour = type)) + geom_line(size = 1) + geom_point(size = 3) + facet_grid(. ~ Inductance) + labs(x = "DISTANCE (mm)", y = "Error (uH)")
plot_C3_d  + theme_stage

plot_C3_m <- ggplot(data_c3_m, aes(x = MOVEMENT, y = Value, colour = type)) + geom_line(size = 0.75) + geom_point(size = 3) + facet_grid(Inductance ~ DISTANCE, scales = "free") + labs(x = "MOVEMENT (mm)", y = "Inductance (uH)")
plot_C3_m  + theme_stage

plot_C3_p <- ggplot(data_c3_p, aes(x = MISALIGNMENT, y = Value, colour = type)) + geom_line(size = 0.75) + geom_point(size = 2) + facet_grid(Inductance ~ DISTANCE, scales = "free") + labs(x = "MISALIGNMENT (mm)", y = "Inductance (uH)")
plot_C3_p  + theme_stage

plot_C3_p <- ggplot(data_c3_p, aes(x = MISALIGNMENT, y = Error, colour = type)) + geom_line(size = 0.75) + geom_point(size = 2) + facet_grid(Inductance ~ DISTANCE, scales = "free") + labs(x = "MISALIGNMENT (mm)", y = "Error (uH)")
plot_C3_p  + theme_stage

