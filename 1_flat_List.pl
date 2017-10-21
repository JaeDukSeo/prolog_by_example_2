




% Practice Flatten a list - [[1,2],a,b,c] - [1,2,a,b,c]
one_flat(List,Result):-
    
    % 1. Divide the list into Head and Tail - Head = [a,b], Tail = [1,2,3]
    List = [Head|Tail],
    
    % ** Assumption **
    % 2. Divide the Head  - E1 == a, E2 ==b
    Head = [E1,E2],

    % 3. Return the Result
    append([E1,E2],Tail,Result).




% Flat Using Recursive Call
flat_recursive([],[]).
flat_recursive(List,Result):-
    
    % 1. Divide the list into head and tail 
    List = [Head|Tail],
    
    % 2. Case where Head is NOT a list an element 1
    not(Head = [H1|T1]),
    
    % 3. Finish the recursive call 
    flat_recursive(Tail,Result1),
    
    % 4. Return the list
    append([Head],Result1,Result).

flat_recursive(List,Result):-
    
    % 1. Divide the list into head and tail 
    List = [Head|Tail],
    
    % 2. Case where Head is A list an element [1]
    Head = [H1|T1],
    
    % 3. Make the recursive call on the HEAD
    flat_recursive(Head,Result1),
    
    % 4. Finish the recursive call 
    flat_recursive(Tail,Result2),
    
    % 5. Return the list
    append(Result1,Result2,Result).

% Flat with acc
fwwlat([],R,R).
fwwlat([H|T],R,Acc):-
    not(H = [List|Tail]),
    append(Acc,[H],Acc2),
    fwwlat(T,R,Acc2).

fwwlat([H|T],R,Acc):-
    H = [List|Tail],
    fwwlat(H,R1,[]),
    append(Acc,R1,Acc2),
    fwwlat(T,R,Acc2).



% ------ END OF CODE -------
