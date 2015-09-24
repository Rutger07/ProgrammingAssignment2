## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

setmatrix <- function(y) {
  x <<- y

}
getmatrix <- function() x

setinverse <- function(inv)
  i <<- inv
getinverse <- function() i

list = (setmatrix=setmatrix, getmatrix=getmatrix, setinverse=setinverse, getinverse=getinverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
