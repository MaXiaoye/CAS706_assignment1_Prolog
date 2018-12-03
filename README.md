Assignment 1
Generic Quicksort. Write 3 different versions of quicksort (in each language), which explicitly:

Sort a list of integers in ascending order
Sorts a list of ``anything'' via an externally provided comparison function.
Sorts a list of ``anything'' via an externally provided comparison function, and an externally provided partition function (which itself uses the comparison function).
Your code should also contain executable test cases for each version. Using a testing framework is preferable over doing this "by hand".

Please re-consult quicksort.pro then test cases and input format is 

29 ?- quicksortTwo([1,2,3,4,5,6,7,8,9],'desc',R).
R = [9, 8, 7, 6, 5, 4, 3, 2, 1] 

18 ?- quicksortTwo([2,3,4,1,5,6],'asc',R).
R = [1, 2, 3, 4, 5, 6] .

28 ?- quicksortTwo([abc,bcdr,yhgju,sijy,okl,acty],'asc',R).
R = [abc, acty, bcdr, okl, sijy, yhgju] 

30 ?- quicksortThree([abc,bcdr,yhgju,sijy,okl,acty],'desc','partitionThree',R).
R = [yhgju, sijy, okl, bcdr, acty, abc] 
