## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mi = NULL
  
  getMatrix <- function() x
  setMatrix <- function(matrix) {
    mi <<- NULL;
    x <<- matrix
  }
  
  getCachedInverse <- function() mi
  setCachedInverse <- function(inv) mi <<- inv
  list(getMatrix = getMatrix, setMatrix = setMatrix, getCachedInverse = getCachedInverse, setCachedInverse = setCachedInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  cached <- x$getCachedInverse()
  if (!is.null(cached)) { 
    message("Guys, we have a cache hit here! What a miracle!")
    return(cached)
  }
  inv <- solve(x$getMatrix(), ...)
  x$setCachedInverse(inv)
  inv
}
