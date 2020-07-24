create_cache_matrix<-function(x=matrix())
   {
     inv<-NULL
     set<-function(m)
     {
       x<<-m
       inv<<-NULL
        }
      get<-function()x
      setInverse<-function(inverse)inv<<-inverse
      getInverse<-function()inv
      list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
      }
  cache_solution<-function(x,...)
    {
      inv<-x$getInverse()
      if(!is.null(inv))
      {
       message("Given data is getting ready for the catched data")
       return(inv)
       }

   matr<-x$get()
   inv<-solve(mat,...)
   x$setInverse(inv)
    inv
    }
    my_matrix<-create_cache_matrix(matrix(1:4,2,2))
    my_matrix$get()
    my_matrix$getInverse()
    cache_solution(my_matrix)
    

