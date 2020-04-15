## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    m <- NULL  #set m to null to be used later
    set <- function(y){   #inverses the matrix and puts new inverse into x. Resets m to NULL to be found in other environments
      x <<- y     #sets the matrix x to a new matrix y
      m <<- NULL  #resets the inverse, m, to NULL
    }
    
    get <- function() x   #gets the inversed matrix
    setinverse <- function() m <<- solve(x)  #sets returns the inverse of x to m
    getinverse <- function() m  #get inverse returns the inverse matrix m
  
    list(set = set,          # gives the name 'set' to the set() function defined above
         get = get,          # gives the name 'get' to the get() function defined above
         setinverse = setinverse,  # gives the name 'setinverse' to the setinverse() function defined above
         getinverse = getinverse)  # gives the name 'getinverse' to the getinverse() function defined above
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  
  if(!is.null(m)){
    message('getting cached data')
    return(m)
  }
  
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse()
  m
}

