## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
	##stores a matrix, allows you to cache its inverse
makeCacheMatrix <- function(x = matrix()) {
 	i <- NULL
      set <- function(y) {
              x <<- y
              i <<- NULL
      }
      get <- function() x
      setInverse<- function(inverse) i <<- inverse
      getInverse <- function() i
      list(set = set, get = get,
           setInverse = setInverse,
           getInverse = getInverse)
}


## Write a short comment describing this function
	##computes the inverse returned by the above function 'makeCacheMatrix'
cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
	 m <- x$getInverse()
       if(!is.null(m)) {
       	message("getting cached data")
       	return(m)
       }
       data <- x$get()
       m <- solve(data)
       x$setInverse(m)
       m
}
