system("makemcsim perc.model")
system.time(system("./mcsim.perc -i 100 perc.mcmc.in"))

df <- read.delim("perc.mcmc.out")
plot(df$iter, df$Km.1., type ="l")
plot(df$iter, df$sc_Vmax.1., type ="l")

post.df <- tail(df, 500)
plot(post.df$sc_Vmax.1., post.df$Km.1.)
plot(post.df$sc_Vmax.1., post.df$Km.1., type = "l")
