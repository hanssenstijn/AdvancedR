# get clean ws
rm(list=ls())

# subsetting
x <- c(2.1, 4.2, 3.3, 5.4)
x[c(3, 1)]

# subset data frame
df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
# Like a list:
df[c("x", "z")]
# Like a matrix
df[, c("x", "z")]

# Factor: drops any unused levels.
z <- factor(c("a", "b"))
z[1]
z[1, drop = TRUE]

# In the first, mtcars will remain as a data
# frame. In the second, mtcars will become a list.
mtcars[] <- lapply(mtcars, as.integer)
mtcars <- lapply(mtcars, as.integer)

# look up
x <- c("m", "f", "u", "f", "f", "m", "m")
lookup <- c(m = "Male", f = "Female", u = NA)
lookup[x]
# unname them
unname(lookup[x])

# match and merge
grades <- c(1, 2, 2, 3, 1)
info <- data.frame(
    grade = 3:1,
    desc = c("Excellent", "Good", "Poor"),
    fail = c(F, F, T)
)
# Using match
id <- match(grades, info$grade)
info[id, ]

# Select 6 bootstrap replicates
df <- data.frame(x = rep(1:3, each = 2), y = 6:1, z = letters[1:6])
df[sample(nrow(df), 6, rep = T), ]

# selecting row based
mtcars[mtcars$gear == 4, ]
subset(mtcars, gear == 5)