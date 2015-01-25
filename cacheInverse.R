#the purpose of the following pair of functions is to cache the inverse of a matrix to save computing time in the future.


makeCacheMatrix <- function(x = matrix()) {
        z <- NULL
        set <- function(y) {
                x <<- y
                z <<- NULL
        }
        get <- function() return(x);
        setinv <- function(solve) z <<- solve #solve is the inverse command in R
        getinv <- function() z
        return(list(set = set, get = get,
             setinv = setinv,
             getinv = getinv))
}

# This function computes the inverse of the matrix "x" if it has never been computed.
# If the matrix inverse has already been computed, the function will retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
    # this block will return a matrix that is the inverse of the martix "x"
        z <- x$getinv()
        if(!is.null(z)) {
                message("getting cached data")
                return(z)
        }
        data <- x$get()
        z <- solve(data, ...)
        x$setinv(z)
        z #Z in the inverse of X which was created in the previous function.
}