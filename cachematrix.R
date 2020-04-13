## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix 
makeCacheMatrix<- function(x = matrix())  {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function()x
  setmatrix <- function(solve) 
  m <<- solve
  getmatrix <- function() 
  m
  list(set = set, get = get, setmarix = setmatrix, getmatrix = getmatrix) ## list containing a function to
  ## set the value of the matrix
  ## get the value of the matrix
  ## set the value of the inverted matrix
  ## get the value of the inverted matrix

}


## Write a short comment describing this function

## The cacheSolve function calculates the inverted matrix of the initial matrix value of which was set in the
## makeCacheMatrix function
## At first, The function checks has the value of  inverted matrix been already been calculated, or not.
## If the value of inverted matrix has been already calculated, the cacheSolve function  gets the inverted matrix
## from the cache and skips the computation. Otherwise, it calculates the inverted matrix of the data and sets the value of the inverted matrix 
## in the cache by the setmatrix function.

cacheSolve <- function(x, ...) { 
m <- x$getmatrix()
if(!is.null(m)) {
  message("getting cached data")
  return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setmatrix(m)
return(m)   ## Returns a matrix that is the inverse of 'x'
}

