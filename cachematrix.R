## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


##method to create special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
	
	##Initializing the inverse property
	i <- NULL
    set <- function( matrix ){
        m <<- matrix
        i <<- NULL
    }
	
	## getting the matrix
    get <- function(){
        m
    }
	
	##setting 'i' to the inverse of the matrix obtained in previous step
    setInverse <- function(inverse){
        i <<- inverse
    }
	
	##getting the inversed matrix
    getInverse <- function(){
        i
    }
	##back a list of methods
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

##method to compute the inverse of the special "matrix" returned by makeCacheMatrix method. 
##If the inverse has already been computed (and the matrix has not changed), 
##then cacheSolve retrieves the inverse from the cache.
##else it computes the inverse using matrix multiplication.

cacheSolve <- function(x, ...) {
        
		## Return a matrix that is the inverse of 'x'
		m <- x$getInverse()
		if(!is.null(m)){
				message("getting cached data")
				return(m)
		}
		
		##computing the inverse using matrix multiplication
		m <- solve(data) %*% data
		
		##setting the inverse to the objec
		x$setInverse(m)
		
		m
}

