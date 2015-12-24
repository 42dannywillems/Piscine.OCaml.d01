let rec iter f (x : int) n =
    if n < 0 then -1
    else if n = 0 then x
    else f (iter f x (n - 1))

let () =
    let f x = (x + 1) in
    let g x = (x * 2) in
    print_int (iter f 1 10); print_endline "";
    print_int (iter f 3 (-1)); print_endline "";
    print_int (iter g 3 2); print_endline ""
