library("ggplot2", lib.loc="D:/Program Files/R/R-3.2.2/library")

data_c1_d <- read.csv("F:\\Dropbox\\G2ELab\\R\\Datas_Plots\\data_c1_plate_d.csv")

ggplot(data_c1_d, aes(x=DISTANCE, y=Inductance, colour=type)) + geom_line(size=1) + geom_point(size=4) + labs(x = "Distance between two coils (mm)",y = "Mutual-inductance (uH)") + ggtitle("Mutual-inductance Variation Characteristics of Distance")

ggplot(data_c1_d, aes(x=DISTANCE, y=Coefficient, colour=type)) + geom_line(size=1) + geom_point(size=4) + labs(x = "Distance between two coils (mm)",y = "Coefficient of coupling") + ggtitle("Coefficient of Coupling Variation Characteristics of Distance")

ggplot(data_c1_d, aes(x=DISTANCE, y=Error_MI, colour=type)) + geom_line(size=1) + geom_point(size=4) + labs(x = "Distance between two coils (mm)",y = "ERROR (uH)") + ggtitle("Absolute Error of M in Comparison with Experiment Results")

ggplot(data_c1_d, aes(x=DISTANCE, y=Error_CC, colour=type)) + geom_line(size=1) + geom_point(size=4) + labs(x = "Distance between two coils (mm)",y = "ERROR") + ggtitle("Absolute Error of k in Comparison with Experiment Results")

ggplot(data_c1_d, aes(x=DISTANCE, y=Difference_MI, colour=type)) + geom_line(size=1) + geom_point(size=4) + labs(x = "Distance between two coils (mm)",y = "Difference") + ggtitle("Relative Difference of M in Comparison with Experiment Results")

ggplot(data_c1_d, aes(x=DISTANCE, y=Difference_CC, colour=type)) + geom_line(size=1) + geom_point(size=4) + labs(x = "Distance between two coils (mm)",y = "Difference") + ggtitle("Relative Difference of k in Comparison with Experiment Results")