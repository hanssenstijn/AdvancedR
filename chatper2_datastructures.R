# get clean ws
rm(list=ls())

# With the L suffix, you get an integer rather than a double
int_var <- c(1L, 6L, 10L)

# Atomic vectors are always flat, even if you nest c()'s:
c(1, c(2, c(3, 4)))

# Lists are different from atomic vectors because their elements can be of
# any type
x <- list(1:3, "a", c(TRUE, FALSE, TRUE), c(2.3, 5.9))
str(x)

# All objects can have arbitrary additional attributes, used to store metadata
# about the object.
y <- 1:10
attr(y, "my_attribute") <- "This is a vector"
attr(y, "my_attribute")
str(attributes(y))

# give names
x <- setNames(1:3, c("a","b", "c"))
x

# factor transform to double --> as.double(as.character(x))
# to overcome the automatic transformation to factors
options(stringsAsFactors = FALSE)

# Adding a dim() attribute to an atomic vector allows it to behave like
# a multi-dimensional array. A special case of the array is the matrix,
# which has two dimensions.
# length() generalises to nrow() and ncol()
a <- matrix(1:6, ncol = 3, nrow = 2)
length(a)

# One vector argument to describe all dimensions
b <- array(1:12, c(2, 3, 2))
b

# Under the hood, a data frame is a list of equal-length vectors.
# Because a data.frame is an S3 class, its type reflects the underlying
# vector used to build it: the list
df <- data.frame(
    x = 1:3,
    y = c("a", "b", "c"),
    stringsAsFactors = FALSE)
typeof(df)
class(df)

# Use plyr::rbind.fill() to combine data frames that don't have the same columns.
# it is possible for a data frame to have a column that is a list
df <- data.frame(x = 1:3)
df$y <- list(1:2, 1:3, 1:4)
df

# I() adds the AsIs class to its input, but this can usually be safely ignored.
