## makeCacheMatrix() takes an invertible square matrix as a parameter
## Initially m is set to null and set()vis invoked only at the time of changing the input
## matrix. It resets m to null and passes on the new matrix to x.
## get() used to fetch the matrix. Likewise, getmean() and setmean() are setter getter functions for mean


## makeCacheMatrix() uses the matrix as a parameter and returns a list containing other functions

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## cacheSolve() returns mean of the matrix if it has not been calculated or if 
## the matrix has been changed using set()

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) get{
    message("getting cached data")
 return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
