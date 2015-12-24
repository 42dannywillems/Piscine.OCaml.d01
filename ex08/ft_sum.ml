let rec ft_sum f (l : int) (u : int) =
    if u < l then nan
    else if u = l then (f u)
    else (f l) +. (ft_sum f (l + 1) u)

let () =
    print_float (ft_sum (fun i -> float_of_int (i * i)) 1 10); print_endline "";
    print_float (ft_sum (fun i -> float_of_int i) 11 10); print_endline "";
    print_float (ft_sum (fun i -> float_of_int i) 1 10); print_endline ""
