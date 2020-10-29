# SML Test Harness

A small basic test harness for writing sml tests
written for CS431 (Programming language concepts) at [UWM](https://uwm.edu/)

### Usage

```sml
val _ =
 use "test_harness.sml";

(* <Your code / defined functions> *)

val _ =
 test_harness.run_tests [
   Test("<Test Name>", (fn () => (* <Test that returns true if passed> *))),
   (* ...*)
];
```

### Example Output

```
   Test [  GOOD.  ] : reduce 1
   Test [  GOOD.  ] : zip 1
   Test [  GOOD.  ] : vectorAdd 1
 ! Test [ FAILED! ] : vactorAdd 2
   Test [  GOOD.  ] : svProduct 1
   Test [  GOOD.  ] : vmProduct 1
   Test [  GOOD.  ] : matrixProduct 1
```

--------

Maintainer: oldwomanjosiah (jhilden13@gmail.com)
