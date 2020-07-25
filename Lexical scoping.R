##Written by : Mohan 
## Data      :  25th july 2020
## Finding the inverse of the cache matrix 

## This function will create the special matrix object which will support cache matrix for inverse
create_cache_matrix<-function(x=matrix()) ## using the function matrix as a argument which is available in R
   
   {
     j<-NULL           ##j will take value of matrix inverse
     set<-function(m)    ## Defining the set function to assign new value of matrix in parent environment
     {                   
       x<<-m            
       j<<-NULL       ##If there is a new matrix then reset j to NULL
      
        }
      get<-function()x
      setInverse<-function(inverse)j<<-inverse    ##It assigns the value of j in parent environment
      getInverse<-function()j                  ## It gives the value of j
      list(set=set,get=get,setInverse=setInverse,getInverse=getInverse) ##It indicates the order in which it takes
      }

##This function will computes the inverse of the matrix returned by the create_cache_matrix
##If the inverse of the matrix already computed then cache_solution will restore that inverse from cache

  cache_solution<-function(x,...)
    {
      j<-x$getInverse()
      if(!is.null(j))
      {
       message("Given data is getting ready for the catched data")
       return(j)
       }

   matr<-x$get()
   j<-solve(mat,...)
   x$setInverse(j)
    j
    }
    
    

