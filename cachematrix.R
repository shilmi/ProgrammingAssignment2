## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL   ## The inverse starts out as NULL
}

set <- function(y) { ## set function for y
  x <<- y
  inv <<- NULL
}

## Returns the internal object
get <- function() x

## Get and Set functions for the inverse, as above
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set, get = get,
     setInverse = setInverse,
     getInverse = getInverse)
}


## Write a short comment describing this function

## This function will calculate the inverse of the received square matrix, caching
## the result in the CacheMatrix object.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)  ## Calculating the inverse
  x$setInverse(inv)
  inv
}
