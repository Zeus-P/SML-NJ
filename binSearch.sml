open Array;
val A = fromList([1,2,3,5,6,7,8,9,12,34,67,78,99]);
fun binSearch(A,x) = 
    let val n = length A;
    val lo = ref 0 and hi = ref n;
    val mid = ref ((!lo + (!hi - 1)) div 2);
    in
    while ((!lo <= !hi) andalso (x <> sub (A,!mid))) do
        (
            if x < sub (A, !mid) then hi := !mid - 1
                else
            lo := !mid + 1;
            mid := (!lo + !hi) div 2
        );
        if x = sub(A, !mid) then
            print("Item "^Int.toString(x)^" Found at Location "^Int.toString(!mid + 1)^"\n")
        else print "Item Not Found !!";
            
        !mid
    end;
binSearch(A,6);
            
