fun arr n = let
    val x = Array.fromList([4,9,8,1]);
    val loop = ref 0
    val cnt = ref n
    val sum = ref 0
    in 
        while(!loop < !cnt)
        do
            (sum := !sum + Array.sub(x,!loop);
            loop := !loop + 1
            );
            print("Sum of Array elements is "^ Int.toString(!sum)^ "\n");
            !sum
    end;
arr 4;
