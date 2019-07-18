# get clean ws
rm(list=ls())

# load lib
library(pryr)

# All R functions have three parts:
# . the body(), the code inside the function.
# . the formals(), the list of arguments which controls how you can call
# the function.
# . the environment(), the "map" of the location of the function's variables.

f <- function(x) x^2
f
formals(f)
body(f)
environment(f)

f <- function() {
    x <- 1
    y <- 2
    c(x, y)
}
f()
rm(f)

# If a name isn't defined inside a function, R will look one level up.
x <- 2
g <- function() {
    y <- 1
    c(x, y)
}
g()
rm(x, g)
#--------------------#
x <- 1
h <- function() {
    y <- 2
    i <- function() {
        z <- 3
        c(x, y, z)
    }
    i()
}
h()
rm(x, h)
#--------------------#
j <- function(x) {
    y <- 2
    function() {
        c(x, y)
    }
}
k <- j(1)
k()
rm(j, k)
#--------------------#
l <- function(x) x + 1
m <- function() {
    l <- function(x) x * 2
    l(10)
}
m()
rm(l, m)
#--------------------#
j <- function() {
    if (!exists("a")) {
        a <- 1
    } else {
        a <- a + 1
    }
    print(a)
}
j()
rm(j)
