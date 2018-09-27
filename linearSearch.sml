fun ser(num , ele) = let
        val no = ref num
        val i = ref 0
        val item = ref ele
        val myno = ref 0
        val x = Array.fromList ([10,9,8,7,11,25,4,15,17,2])
        val found = ref 0
        val loc = ref 0
        in
            while(!i < !no)do
                (let
                    in
                        if Array.sub(x,!i) = !item then
                            (found := 1; loc := !i) else myno := 0
                            end;
                            i := !i + 1
                );
                let in if !found = 1 then print("Item"^Int.toString(Array.sub(x,!loc))^"Found\n")
                else print "Item not found"
                end;
                !no
            end;
ser(10,25);
