## Programming Assignment 2
## Caching the Inverse of a Matrix

## create a matrix which return a list of functions:
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## If the inverse exists, get the inverse
## Otherwise, calculate it, return and cache the result

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) { 
    ## exists
    message("getting cached data")
    return(m)
  }
  ## calculate
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
