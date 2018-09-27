fun search n = let 
    val x = Array.fromList([1,2,3,4,5,6,7]);
    val s = ref 0
    val cnt = ref 7
    val a = ref n
    in 
        while(!s < !cnt)
        do ( let in if( Array.sub(x , !s) = !a)
                then print ("Item "^Int.toString(n)^" Is present at " ^ Int.toString(!s) ^ "\n")
                else
                    print " "
                end;
              s := !s + 1  
            );
            !s
    end;
search 4;
