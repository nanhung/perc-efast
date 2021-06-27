q = "qunif"
q.arg = list(list(min = 0.5, max = 1),
             list(min = 0.5, max = 1.5),
             list(min = 0.02, max = 0.3),
             list(min = 20, max = 60))

set.seed(1234)
params <- c("X1", "X2", "X3", "X4")

# params number and names

X.labels <- params
p <- length(X.labels)

# quantities

q <- rep(q, p)
q.arg <- rep(list(q.arg), p)

# set of frequencies
n = 100  # an integer giving the sample size, i.e. the length of the discretization of thes-space (see Cukier et al.).
M = 4    # an integer specifying the interference parameter, i.e. the number of harmonicsto sum in the Fourier series decomposition (see Cukier et al.).

omega <- numeric(p)
omega[1] <- floor((n - 1) / (2 * M))
m <- floor(omega[1] / (2 * M))

if (m >= p - 1) {
  omega[-1] <- floor(seq(from = 1, to = m, length.out = p - 1))
} else {
  omega[-1] <- (0 : (p - 2)) %% m + 1
}

# discretization of the s-space

s <- 2 * pi / n * (0 : (n - 1))