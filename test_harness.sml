datatype test = Test of string * (unit -> bool)

signature TEST_HARNESS =
sig
  val run_tests : test list -> unit
end

structure test_harness :> TEST_HARNESS =
struct

  val test_end = "\n";
  val test_passed = "   Test [  GOOD.  ] : ";
  val test_failed = " ! Test [ FAILED! ] : ";

  fun run_tests (tests: test list) =
    print (
      foldl (
        fn (Test(name, f), sofar: string) =>
          sofar ^ (if f() then test_passed else test_failed) ^ name ^ test_end
      ) "" tests
    )

end

(* usage:
*   val _ =
*     use "test_harness.sml";
*
*   <Your code / defined functions>
*
*   val _ = 
*     test_harness.run_tests [
*       Test("<Test Name>, (fn () => <Test that returns true if passed>)),
*       ...
*   ];
*)

(* Example Output:
*   Test [  GOOD.  ] : reduce 1
*   Test [  GOOD.  ] : zip 1
*   Test [  GOOD.  ] : vectorAdd 1
* ! Test [ FAILED! ] : FailOnPurpose 1
*   Test [  GOOD.  ] : svProduct 1
*   Test [  GOOD.  ] : vmProduct 1
*   Test [  GOOD.  ] : matrixProduct 1
*)
