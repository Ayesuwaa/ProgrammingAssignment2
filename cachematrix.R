  ## The task is to compute and cache the inverse of a matrix. 
  ## Caching the results of a computation saves time on computation,
    # especially in the case of a matrix inversion that runs inside a loop
  ## Cache: collection of items of the same type
  ##(overall description)

  ##This f(x) creates a special "matrix" that can cache its inverse
  ##Q why is matrix in quotations?
  ## (Write a short comment describing this function)
makeCacheMatrix <- function(x = matrix()) {
  ## 'x' is a an invertible matrix
  ## makeCacheMatrix is a list that contains a f(x) that:
    #     1) set the matrix
    #     2) get the matrix
    #     3) set the inverse
    #     4) get the inverse
  ## the above 1 - 4 list is then used for the cacheSolve below
m <- NULL
set <- function(y) {
  ## use <<- to assign value to an object in an different environment
  ## different from the current environment
  ## environment: list if symbols and values w/ mutltiple levels
  x <<- y
  m <<- NULL
}
get <- function() x
setinv <- function(inverse) m <<- inverse
getinv <- function() m
list(set = set, get = get, setinv = setinv, getinv = getinv)
  }

  ## This f(x) returns the inverse of makeCacheMatrix()
  ## (Write a short comment describing this function)
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## 'x' is the output of makeCachematrix 
m <- x$getmean()
        ## If the inverse has already been created by makeCacheMatrix() 
if(!is.null(m)) {
        ##  get it from the cache and skip this computation
message("getting cached data")
return(m)
    
}
        ## if not computated, calculate the inverse
matrixdata <- x$get()
m <- solve(matrixdata,..)
        ##sets the value of the inverse in the cache by thr setinv f(x)
x$setinv(m)

return(m)
}
