open! Core

module Incr = Incremental.Make()

let%expect_test _ =
  printf "Hello world\n";
  [%expect {| Hello world |}]
