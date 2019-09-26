
using DSP
using PyPlot

# Generate a signal u of length m = 50, with each entry a random value that is either −1 or +1
u = rand([1, -1], 50)

c = [1, 0.7, -0.3]
y = conv(c, u)

# Plot u and y
plot(u) # Blue Graph
plot(y) # Orange Graph

h = [0.9, -0.5, 0.5, -0.4, 0.3, -0.3, 0.2, -0.1]
z = conv(h , y)

# Plot for z = h * y
plot(z)


