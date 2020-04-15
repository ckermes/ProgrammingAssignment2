## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    set <- function(y){
      x <<- y
      m <<- NULL
    }
    
    get <- function() x
    setmean <- function(mean) m <<- mean
    getmean <- function() m
  
    list(set = set,          # gives the name 'set' to the set() function defined above
         get = get,          # gives the name 'get' to the get() function defined above
         setmean = setmean,  # gives the name 'setmean' to the setmean() function defined above
         getmean = getmean)  # gives the name 'getmean' to the getmean() function defined above
    
    
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getmean()
  
  if(!is.null(m)){
    message('getting cached data')
    return(m)
  }
  
  data <- x$get()
  m <- mean(data,...)
  x$setmean(m)
  m
}