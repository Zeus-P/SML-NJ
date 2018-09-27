open Array;
val A = fromList([12,24,13,6,7,45,67,89,34]);
fun bSort(A) = let
    val n = length A;
    val i = ref 0;
    val j =ref 0;
    val value = ref 0;
    val k = ref 0;
    in
        while(!i < n-1)do
        (
            j := 0;
            while(!j < n - !i - 1)do
            (
                if(sub(A, !j) > sub(A, !j + 1))then
                (
                    value := sub(A, !j);
                    update(A, !j, sub(A, !j + 1 ));
                    update(A, !j + 1, !value)
                    )else();
                j := !j + 1
            
                );
                i := !i + 1
                );
            print "Contents of Sorted Array is : \n";
            print "       [";
            while(!k < n)do
                ( print(Int.toString(sub(A, !k)));
                if( !k < n - 1)then print(",")else();
                k := !k + 1
            );
            print("]\n")
        end;
bSort(A);
    
