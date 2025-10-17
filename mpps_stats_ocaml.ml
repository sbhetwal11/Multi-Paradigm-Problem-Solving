
(* SB: Functional implemntation of mean, median, and mode *)

(* Compute mean here *)
let mean lst =
  let sum = List.fold_left ( + ) 0 lst in
  float_of_int sum /. float_of_int (List.length lst)

(* Compute median here after list sorting *)
let median lst =
  let sorted = List.sort compare lst in
  let len = List.length sorted in
  if len = 0 then 0.0
  else if len mod 2 = 0 then
    let mid1 = List.nth sorted (len / 2 - 1)
    and mid2 = List.nth sorted (len / 2) in
    (float_of_int (mid1 + mid2)) /. 2.0
  else
    float_of_int (List.nth sorted (len / 2))

(* Mode computed here *)
let mode lst =
  let rec count acc = function
    | [] -> acc
    | x :: xs ->
        let current_count =
          try List.assoc x acc + 1 with Not_found -> 1
        in
        let updated = (x, current_count) :: List.remove_assoc x acc in
        count updated xs
  in
  let counts = count [] lst in
  let max_count =
    List.fold_left (fun acc (_, c) -> max acc c) 0 counts
  in
  List.filter (fun (_, c) -> c = max_count) counts
  |> List.map fst

(* SB: Main program entry point *)
let () =
  print_endline "Enter integers separated by spaces:";
  let input = read_line () in
  let lst =
    input
    |> String.split_on_char ' '
    |> List.filter (fun s -> s <> "")
    |> List.map int_of_string
  in
  Printf.printf "Mean: %.2f\n" (mean lst);
  Printf.printf "Median: %.2f\n" (median lst);
  Printf.printf "Mode: ";
  List.iter (fun x -> Printf.printf "%d " x) (mode lst);
  print_newline ()
