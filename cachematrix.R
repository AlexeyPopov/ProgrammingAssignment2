## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invertedMatrix <- NULL

  # Matrix set
  set <- function(y){
    x <<- y
	  invertedMatrix <<- NULL
	}

  # Matrix get
  get <- function() x

  # Inverse matrix set
  setinvertedmatrix <- function(solve) invertedMatrix <<- solve

  # Inverse matrix get
  getinvertedmatrix <- function() invertedMatrix

  list(set=set,
    get=get,
    setinvertedmatrix=setinvertedmatrix,
    getinvertedmatrix=getinvertedmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  invertedMatrix <- x$getinvertedmatrix()

  # Return cached value
  if(!is.null(invertedMatrix)){
	  message("getting cached data")
	  return(invertedMatrix)
	}

  # Create and cache inverted matrix
  data <- x$get()
  invertedMatrix <- solve(data, ...)
  x$setinvertedmatrix(invertedMatrix)
  invertedMatrix
}
