let leibniz_pi epsi =
    let pi = 4. *. (atan 1.) in
    let leibniz_formula i =
        let i_float = (float_of_int i) in
        4. *. (-1.)**i_float /. (2. *. i_float +. 1.)
    in
    let rec leibniz_pi_loc v n =
        let diff = if (v -. pi) >= 0. then (v -. pi) else (pi -. v) in
        if diff < epsi then n
        else
            let tmp = (leibniz_formula (n + 1)) in
            (leibniz_pi_loc (v +. tmp) (n + 1))
    in
    if epsi < 0. then (-1)
    else
        let tmp = leibniz_formula 0 in leibniz_pi_loc tmp 0

let () =
    print_int (leibniz_pi (-1.)) ; print_endline "";
    print_int (leibniz_pi (1.)) ; print_endline "";
    print_int (leibniz_pi (2.)) ; print_endline "";
    print_int (leibniz_pi (1e-8)) ; print_endline ""
