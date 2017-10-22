
sub(X,Y,Z):- Z =:= X - Y.
sub(X,Y,Z):- Z =:= Y - X.

solve_one_one([One,Two,Three,Four,Five,Six,Seven,Eight,Nine]):-
    
    % 1. Get the one and two position
    member(One,[1,2,3]),
    member(Two,[1,2,3]),
    Two \= One,
    sub(One,Two,1),
    
    % 2. Get the second position
    member(Three,[1,2,3]),
    member(Six,[1,2,3]),
    Three \= One,Three\=Two,Three\=Six,
    4 =:= Three + Six,
    
    % 3. Get the third position
    member(Four,[1,2,3]),
    member(Seven,[1,2,3]),
    Four \= One,Four\= Six,
    Seven \= Four,
    4 =:= Four + Seven,
    
    % 4. Get the final three 
    member(Five,[1,2,3]),
    member(Eight,[1,2,3]),
    member(Nine,[1,2,3]),
    Five\=Two,Five \=Four,Five\=Six,
    Eight \=Two,Eight\=Five,Eight\=Seven,
    Nine \=Eight, Nine \= Seven, Nine \= Three, Nine \= Six,
    5 =:= Five + Nine + Eight.
% S is cputime,solve_one_one([One,Two,Three,Four,Five,Six,Seven,Eight,Nine]),E is cputime - S.
    









solve_one_two([One,Two,Three,Four,Five,Six,Seven,Eight,Nine]):-
    
    % 1. Get the one and two position
    member(One,[1,2,3]),
    member(Two,[1,2,3]),
    Two \= One,
    sub(One,Two,1),
    
    % 2. Get the second position
    member(Three,[1,2,3]),
    Three \= One,Three\=Two,
    member(Six,[1,2,3]),
    Three\=Six,
    4 =:= Three + Six,
    
    % 3. Get the third position
    member(Four,[1,2,3]),
    Four \= One,Four\= Six,
    member(Seven,[1,2,3]),
    Seven \= Four,
    4 =:= Four + Seven,
    
    % 4. Get the final three 
    member(Five,[1,2,3]),
    Five\=Two,Five \=Four,Five\=Six,
    member(Eight,[1,2,3]),
    Eight \=Two,Eight\=Five,Eight\=Seven,
    member(Nine,[1,2,3]),
    Nine \=Eight, Nine \= Seven, Nine \= Three, Nine \= Six,
    5 =:= Five + Nine + Eight.
% S is cputime,solve_one_two([One,Two,Three,Four,Five,Six,Seven,Eight,Nine]), E is cputime - S.
    








solve_one_three([One,Two,Three,Four,Five,Six,Seven,Eight,Nine]):-
    
    % 1. Get the one and two position
    member(One,[1,2,3]),
    member(Two,[1,2,3]),
    Two \= One,
    sub(One,Two,1),
    
    % 2. Get the second position
    member(Three,[1,2,3]),
    Three \= One,Three\=Two,
    member(Six,[1,2,3]),
    Three\=Six,
    4 =:= Three + Six,
    
    % 3. Get the third position
    member(Four,[1,2,3]),
    Four \= One,Four\= Six,
    member(Seven,[1,2,3]),
    Seven \= Four,
    4 =:= Four + Seven,
    
    % 4. Get the final three 
    member(Five,[1,2,3]),
    Five \=Four,Five\=Six,
    member(Nine,[1,2,3]),
    Nine \= Three, Nine \= Six,
    member(Eight,[1,2,3]),
    Eight \=Seven,
    5 =:= Five + Nine + Eight.
% S is cputime,solve_one_three([One,Two,Three,Four,Five,Six,Seven,Eight,Nine]), E is cputime - S.
    


