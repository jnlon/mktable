let get_arg n = 
  let prompts = 
    [ "cell width: "; 
      "cell height: ";
      "rows: "; 
      "columns: ";
      "horizontal bar char: "; 
      "vertical bar char: " ]
  in
  try 
    Sys.argv.(n)
  with Invalid_argument _ -> 
    print_string ("Enter " ^ (List.nth prompts (n-1)));
    (read_line ())
;;

let dotimes fn times =
  for i=0 to times do fn () done
;;

let width = int_of_string (get_arg 1) in
let height = int_of_string (get_arg 2) in
let rows = int_of_string (get_arg 3) in
let columns = int_of_string (get_arg 4) in
let h_bar = (get_arg 5).[0] in
let v_bar = (get_arg 6).[0]
in
let print_h_border () =
  let _print_hbar () = print_char h_bar in
  dotimes _print_hbar ((width * columns) + columns);
in
let print_cell () =
  let print_cell_to_column () =
    let print_space () = print_char ' ' in
    (dotimes print_space (width - 1));
    (print_char v_bar)
  in
  print_char v_bar;
  (dotimes print_cell_to_column (columns - 1)); 
  print_newline ()
in
let print_row () = 
  print_h_border ();
  print_newline ();
  dotimes (print_cell) (height - 2);
in
dotimes print_row rows;
print_h_border ()
