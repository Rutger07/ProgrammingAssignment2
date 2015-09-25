## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This is a fabric of functions listed at the bottom 
## Can change a matrix, has the function to get it
## Also computes the inverse "solve(x)" of a matrix
## And gets it when it is called
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
setmatrix <- function(y) {
  x <<- y
  i <<- NULL
}
getmatrix <- function() x

##Note that setinverse has no arguments
##Value of "x" is already stored and contains the matrix

setinverse <- function(x) 
  #print("pak")
  i <<- solve(x)

getinverse <- function() i
list(setmatrix = setmatrix, 
        getmatrix = getmatrix, 
        setinverse = setinverse, 
        getinverse = getinverse)
}

## Write a short comment describing this function

## Main function takes an argument "x" which is makeCacheMatrix(<matrix>)
## Computes whether the listed functions in makeCacheMatrix are already computed
cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  ## check if inverse is already computed by checking if NULL is true
  
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  } 
## if the value is NULL this part will execute as well
## get the matrix
## set the inverse of that matrix

  data <- x$getmatrix()
  inv <- x$setinverse(data)
  inv
}

### this is it
### you can play with commenting things in or out and see what happens

### attempt with 1x1 matrix
matrix1 <- 5
a <-makeCacheMatrix(matrix1)

#a$setinverse(matrix1)
cacheSolve(a)

### attempt with 2x2 matrix
matrix2 <- matrix(c(4,7,2,6), ncol=2, nrow=2)
b <-makeCacheMatrix(matrix2)

#b$setinverse(matrix2)

cacheSolve(b)
