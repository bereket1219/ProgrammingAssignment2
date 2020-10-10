## Peer-graded Assignment: Programming Assignment 2: Lexical Scoping
## Caching the Inverse of a Matrix

## I set the input x as a matrix, the solved value "s" as a null.
## I changed "mean" to "solve"

makeCacheMatrix <- function(x = matrix(sample(1:50,16),4,4)) {
  s<-NULL
  set<-function() {
    x<<- y
    s<<- NULL
  }
  get<-function() x
  setsolve<-function(solve) s<<-solve
  getsolve<-function() s
  list(set=set, get=get, setsolve=setsolve, getsolve=getsolve)
}

##
## Similarly, "mean" changed  to "solve" and "m" changed to "s"

cacheSolve <- function(x, ...) {
   s<-x$getsolve()
   if(!is.null(s)) {
     message("getting solved data or inverse matrix")
     return(s)
   }
   data<-x$get()
   s<-solve(data,...)
   x$setsolve(s)
   s
}
