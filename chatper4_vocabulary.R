# get clean ws
rm(list=ls())

# Comparison
# all.equal()
# identical()

# syntax
# spacing
average <- mean(feet / 12 + inches, na.rm = TRUE)
# multiple lines
# list(
#     total = a + b + c,
#     mean = (a + b + c) / n
# )

# An opening curly brace should never go on its own line and should always
# be followed by a new line. A closing curly brace should always go on its
# own line, unless it's followed by else.
if (y == 0) {
    log(x)
} else {
    y ^ x
}

# It's ok to leave very short statements on the same line:
if (y < 0 && debug) message("Y is negative")

# Strive to limit your code to 80 characters per line.

# Use <-, not =, for assignment.
x <- 5

# comment lines e.g.
# Load data ---------------------------
# Plot data ---------------------------

