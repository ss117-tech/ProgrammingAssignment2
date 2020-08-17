## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL

   setM <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }

    getM <- function() m

    setInvM <- function(inverse) i <<- inverse

    getInvM <- function() i
    
    list(set = setM, get = getM,
         setInverse = setInvM,
         getInverse = getInvM)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()

    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    data <- x$get()

    m <- solve(data) %*% data

    x$setInverse(m)

    m
}
