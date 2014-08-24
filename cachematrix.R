 
## Collaborator: Lonnell Branch
## Assignment 2
## R Programming Class 

###  makeCacheMatrix function creates a matrix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL

## set the values of the matrix

set<-function(y){
  		x<<-y
  		m<<-NULL
	}

## get the values of the matrix

get<-function() x

## Set the values of the inverse of the matix

setInverse<-function(solve) m<<- solve

## get the values of the inverse matrix

getInverse<-function() m

list(set=set, get=get,
   setInverse=setInverse,
   getInverse=getInverse)
}


## Function to cache the inverse of the matrix

cacheSolve <- function(x=matrix(), ...) {
    m<-x$getInverse()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setInverse(m)
    m
}

## Supporting