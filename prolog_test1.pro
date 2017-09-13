quicksort([], []).
quicksort([X|Tail],Sorted):-
    partitionRedefine(X,Tail,Left,Right),
    quicksort(Left,SortedLeft),
    quicksort(Right,SortedRight),
    append(SortedLeft,[X|SortedRight],Sorted),
    X == integer.

partitionRedefine(X,[],[],[]).
partitionRedefine(X,[Y|Tail],[Y|Left],Right):- X @> Y,partitionRedefine(X,Tail,Left,Right).
partitionRedefine(X,[Y|Tail],Left,[Y|Right]):- X @=< Y,partitionRedefine(X,Tail,Left,Right).

    