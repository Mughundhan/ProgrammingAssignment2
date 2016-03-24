## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a list containing a function to

##1. set the value of the matrix

##2. get the value of the matrix

##3. set the value of inverse of the matrix

##4. get the value of inverse of the matrix_

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
     m <- x$getinverse()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m   ## Return a matrix that is the inverse of 'x'
}
