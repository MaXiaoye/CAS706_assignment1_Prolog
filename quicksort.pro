/*old function*/
quicksortOne([],[]).
quicksortOne([X|Tail],Sorted):-
    partitionOne(X,Tail,Left,Right),
    quicksortOne(Left,SortedLeft),
    quicksortOne(Right,SortedRight),
    append(SortedLeft,[X|SortedRight],Sorted).
/*quicksort(test_list, sorted_list)*/
/*quicksort: 1.partition by a pivot. 2&3.rec quicksort left&right 4.append left+pivot+right=sorted_list 5.type check*/

partitionOne(X,[],[],[]).
partitionOne(X,[Y|Tail],[Y|Left],Right):- X @> Y,partitionOne(X,Tail,Left,Right).
partitionOne(X,[Y|Tail],Left,[Y|Right]):- X @=< Y,partitionOne(X,Tail,Left,Right). 
/*partitionRedefine(pivot,list except pivot,left part after partition, right part after partition)*/
/*partition: select the first num as pivot.*/

/*quicksort function two, uses external comparision function*/
quicksortTwo([],[],[]).
quicksortTwo([],Comparision,[]).
quicksortTwo([X|Tail],Comparision,Sorted):-
    partitionTwo(X,Comparision,Tail,Left,Right),
    quicksortTwo(Left,Comparision,SortedLeft),
    quicksortTwo(Right,Comparision,SortedRight),
    append(SortedLeft,[X|SortedRight],Sorted).

/*partition function two, uses external comparision function*/    
partitionTwo(X,Comparision,[],[],[]).
partitionTwo(X,Comparision,[Y|Tail],[Y|Left],Right):- Comparision = 'asc',
													X @> Y,partitionTwo(X,Comparision,Tail,Left,Right).
partitionTwo(X,Comparision,[Y|Tail],Left,[Y|Right]):- Comparision = 'asc',
													X @=< Y,partitionTwo(X,Comparision,Tail,Left,Right). 
partitionTwo(X,Comparision,[Y|Tail],[Y|Left],Right):- Comparision = 'desc',
													X @=< Y,partitionTwo(X,Comparision,Tail,Left,Right).
partitionTwo(X,Comparision,[Y|Tail],Left,[Y|Right]):- Comparision = 'desc',
													X @> Y,partitionTwo(X,Comparision,Tail,Left,Right).

/*quicksort function Three, uses external comparision and partition functions*/													
quicksortThree([],[],[],[]).
quicksortThree([],Comparision,PartitionF,[]).
quicksortThree([X|Tail],Comparision,PartitionF,Sorted):- PartitionF = 'partitionThree',
    partitionThree(X,Comparision,Tail,Left,Right),
    quicksortThree(Left,Comparision,PartitionF,SortedLeft),
    quicksortThree(Right,Comparision,PartitionF,SortedRight),
    append(SortedLeft,[X|SortedRight],Sorted).

quicksortThree([X|Tail],Comparision,PartitionF,Sorted):- PartitionF = 'partitionTwo',
    partitionTwo(X,Comparision,Tail,Left,Right),
    quicksortThree(Left,Comparision,PartitionF,SortedLeft),
    quicksortThree(Right,Comparision,PartitionF,SortedRight),
    append(SortedLeft,[X|SortedRight],Sorted).
    
partitionThree(X,Comparision,[],[],[]).
partitionThree(X,Comparision,[Y|Tail],[Y|Left],Right):- Comparision = 'asc',
													X @> Y,partitionTwo(X,Comparision,Tail,Left,Right).
partitionThree(X,Comparision,[Y|Tail],Left,[Y|Right]):- Comparision = 'asc',
													X @=< Y,partitionTwo(X,Comparision,Tail,Left,Right). 
partitionThree(X,Comparision,[Y|Tail],[Y|Left],Right):- Comparision = 'desc',
													X @=< Y,partitionTwo(X,Comparision,Tail,Left,Right).
partitionThree(X,Comparision,[Y|Tail],Left,[Y|Right]):- Comparision = 'desc',
													X @> Y,partitionTwo(X,Comparision,Tail,Left,Right). 