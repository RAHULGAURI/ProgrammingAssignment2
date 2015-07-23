## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function that is makeCacheMatrix does the following:-->>
  # 1.sets the matirx
  # 2.gets the matrix
  # 3.sets the inverse of the matirx
  # 4.gets the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<-NULL
  }
  get<-function() x
  setinverse<-function(inver) inv<-inver
  getinverse<-function() inv
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function
##The function cacheSolve does the following--->>> 
 # function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
 #If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getinverse()
  if(!is.null(inv)){
    print("getting cached contents")
    return(inv)
  }
  d<-x$get()
  inv<-solve(d)
  x$setinverse(inv)
  inv
}
