##Assignment on assigning values to variables in other environments via the <<- operator

## This Function will cache a matrix and its inverse.
## Data can be retrieved via get functions or updated via set functions.
## Function can therfore be seen as creating an Object.

makeCacheMatrix <- function(){
 
  matrix <- NULL
  inverseMatrix <- NULL
  
  setMatrix <- function(m){
    matrix <<- m
    inverseMatrix <<- NULL
  }
  
  getMatrix <- function() {
    matrix
  }

  setInverse <- function(matrix){
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


## This function will calculate the inverse matrix for a 
## matrix saved in a "makeCacheMatrix-Object" (only if no inverse matrix has been cached yet).
## The inverse matrix is then saved in the Object.
cacheSolve <- function(x, ...) {
  invMatrix <- x$getCachedInverse()
  if(!is.null(invMatrix)) {
    message("getting cached data")
    return(invMatrix)
  }
  matrix <- x$getMatrix()
  invMatrix <- solve(matrix,...)
  x$setInverse(invMatrix)
  invMatrix
}
