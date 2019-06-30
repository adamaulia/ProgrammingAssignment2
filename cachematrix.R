## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## this function for cache matrix 
    ## 
    
    m = NULL
    set <- function(y) {
                x <<- y
                m <<- NULL
        }
    get = function(){
        x 
        } 
    set_matrix = function(mean) {
        m = mean 
        }
    get_matrix = function() {
        m 
        }
    list(get = get, set_matrix = set_matrix, get_matrix = get_matrix)
}

cacheSolve <- function(x, ...) {
    
    ## Return a matrix that is the inverse of 'x'
    ## run makeCacheMatrix first before run this function 
    
    m <- x$get_matrix()
    if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
    data <- x$get()
    m <- solve(data, ...)
    x$set_matrix(m)
    
    m
}
