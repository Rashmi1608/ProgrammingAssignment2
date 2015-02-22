## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
y<-NULL
set<-function (y)  #set the value of the matrix
 {
 x<<-y ## caches the inputted matrix so that cacheSolve can check whether it has changed
 m<<-NULL ## sets the value of m (the matrix inverse if used cacheSolve) to NULL
 }
get<- function() x
setinv<-function(solve) m <<-solve
getinv<-function() m
list ( set=set,get=get,setinv=setinv,getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m<-x$getinv()
if(!is.null(m))  # check to see if cacheSolve has been run before
{
message("getting cached data")
return(m)
}
data<-x$get() # run the getmatrix function to get the value of the input matrix
m<-solve(data,...) # compute the value of the inverse of the input matrix
x$setinv(m)  # run the setinverse function on the inverse to cache the inverse
m # return the inverse
}
