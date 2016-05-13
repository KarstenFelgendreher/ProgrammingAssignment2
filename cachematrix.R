## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matrix <- NULL
  inverseMatrix <- NULL
  
  setMatrix <- function(m){
    matrix <<- m
    inverseMatrix <<- NULL
  }
  
  getMatrix <- function() {
    matrix
  }
  
  cacheInverse <- function(){
    inverseMatrix <<- solve(matrix)
  }
  
  getCachedInverse <- function(){
    inverseMatrix
  }
  
  list(setMatrix = setMatrix, 
       getMatrix = getMatrix,
       cacheInverse = cacheInverse,
       getCachedInverse = getCachedInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
