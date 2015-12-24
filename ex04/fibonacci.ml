let fibonacci n =
    let rec fibonacci_loc n a b =
        if n < 0 then -1
        else if n = 0 then b
        else fibonacci_loc (n - 1) (a + b) a in
    fibonacci_loc n 1 0

let () =
    print_int (fibonacci 0); print_endline "";
    print_int (fibonacci (-1)); print_endline "";
    print_int (fibonacci 1); print_endline "";
    print_int (fibonacci 2); print_endline "";
    print_int (fibonacci 3); print_endline "";
    print_int (fibonacci 4); print_endline "";
    print_int (fibonacci 5); print_endline "";
    print_int (fibonacci 6); print_endline "";
    print_int (fibonacci 8); print_endline ""

