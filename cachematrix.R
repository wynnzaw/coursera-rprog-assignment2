## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
invert <-NULL
set<-function(y){
  set <<- y  
  invert <<-NULL
}
get <-function()x
setinverse <-function(inverse) invert <<-inverse
getinverse <-function()invert
list(set=set, get=get, setinverse = setinverse, getinverse= getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invert <-x$getinverse()
  if(!is.null(invert)){
    message("cached data")
    
    return(invert)
  }
  data <x$get()
  invert <-solve(data)
  x$setinverse(invert)
  invert
}
x = rbind(c(7, -9), c(-2, 6))

mtx = rbind(c(8, 0),c(78,90))

y = makeCacheMatrix(mtx)


y$get()

# 1st Run
cacheSolve(y)
# 2nd Run
cacheSolve(y)
