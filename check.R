df <- read.delim("perc.mcmc.out")
post.df <- tail(df, 500)
plot(post.df$sc_Vmax.1., post.df$Km.1.)
