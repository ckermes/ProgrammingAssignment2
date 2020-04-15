## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    m <- NULL
    set <- function(y){
      x <<- y
      m <<- NULL
    }
    
    get <- function() x
    setinverse <- function() m <<- solve(x)
    getinverse <- function() m
  
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
  m <- solve(data,...)
  x$setinverse(m)
  m
}

