open Array;
val A = fromList([12,24,13,1,123,45,6,20,4,15]);

fun isort(A) = let
    val n = length A ;     
    val i = ref 1 ;
    val j = ref 0 ;    
    val value = ref 0 ;  
     val k = ref 0 ;
in  
    while ( !i <= n - 1 ) do
      (
        j := !i ;
    
        while(( !j > 0 ) andalso (sub(A, !j - 1 ) > sub(A, !j ) )) do
          (
            value := sub(A, !j);
            update (A, !j , sub(A, !j - 1 )) ;
            update(A, !j - 1 , !value );
            j := !j - 1
          );
        
        i := !i + 1
       );
       
   print (" Contents of sorted array is : \n");  
   print ("        [");

while ( !k < n ) do

      ( print (Int.toString (sub (A, !k)));

         if ( !k < n - 1 ) then print ( "," ) else ();

          k := !k + 1

      );
      print ("]\n") 
  end;
  isort(A);
