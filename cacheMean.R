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
## cacheSolve takes an argument x which is the makeCacheMatrix function
## the if loop then checks to see if there is already an inverse
## if there is an inverse it is retrieved from the cache and printed
## if there is no inverse that has already been calculated then the last 3 lines of code create an inverse
## the last line of code 'm' prints the inverse

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  m <- x$getinverse()   #initiates variable
  
  if(!is.null(m)){                  #loop that will check to see if cache has been made
    message('getting cached data')
    return(m)
  }
  
  data <- x$get()         #if no cache, will create the inverse
  m <- solve(data, ...)
  x$setinverse()
  m                       #prints the result
}

