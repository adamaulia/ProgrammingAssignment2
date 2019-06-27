## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix = function(x = matrix()) {
    m = NULL
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
    
    m <- x$get_matrix()
    data <- x$get()
    m <- mean(data, ...)
    x$set_matrix(m)
    
    m
}
