
Exercise 1.14: Draw the tree illustrating the process 
generated by the count-change procedure of 1.2.2 
in making change for 11 cents. 
What are the orders of growth of the space 
and number of steps used by this process as 
the amount to be changed increases?

```lisp
😑
```

--------------------------------------------------------------

count-change 11
|_ cc 11 5
   |_ cc 11 4
   |  |_ cc 11 3
   |  |  |_ cc 11 2
   |  |  |  |_ cc 11 1
   |  |  |  |  |_ cc 11 0 -> 0
   |  |  |  |  |_ cc 10 1
   |  |  |  |     |_ cc 10 0 -> 0
   |  |  |  |_ cc 6 2
   |  |  |     |_ cc 6 1
   |  |  |     |  |_ cc 6 0 -> 0
   |  |  |     |_ cc 1 2
   |  |  |        |_ cc 1 1
   |  |  |        |  |_ cc 1 0 -> 0
   |  |  |        |_ cc 0 1 -> 1
   |  |  |_ cc 1 3
   |  |     |_ cc 1 2
   |  |     |  |_ cc 1 1
   |  |     |  |  |_ cc 1 0 -> 0
   |  |     |  |_ cc 0 1 -> 1
   |  |     |_ cc -9 3 -> 0
   |  |_ cc -14 4 -> 0
   |_ cc -39 5 -> 0

