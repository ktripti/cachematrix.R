## cache inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
 a<-NULL
 set<-function(y=matrix){
 x<<-y
 a<<-NULL
   }
   get<-function()x
   setinverse<-function(solve) a<<-solve
   getinverse<-function() a
   list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}

## computing inverse of matrix if inverse calculated then retrieving from cache

cacheSolve <- function(x, ...) {
 a<-x$getinverse()
if(!is.null(a)){
message("getting cached data")
return(a)       ## Return a matrix that is the inverse of 'x'
}
data<-x$get()
a<-solve(data,...)
x$getinverse(a)
a
}
