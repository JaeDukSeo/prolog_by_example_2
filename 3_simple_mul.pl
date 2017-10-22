


all_diff([]).
all_diff([H|T]):-not(member(H,T)),all_diff(T).


solve([A,B,C,D,E,F,G]):-
    
    % 1. Get G
    member(D,[0,1,2,3,4,5,6,7,8,9]),
    member(B,[0,1,2,3,4,5,6,7,8,9]),
    G is (D * B) mod 10,
    C1 is (D * B) // 10,
    
    % 2. Get First element of temp 1
    member(A,[1,2,3,4,5,6,7,8,9,0]),
    Temp1 is (D * A + C1),
    
    % 3. Get Temp2
    member(C,[0,1,2,3,4,5,6,7,8,9]),
    Temp2 is (C * B) mod 10,
    C2 is (C * B) // 10,
    
    % 4. Get Temp3
    Temp3 is (C * A  + C2),
    
    % 5. Get Temp4 - WHIHC IS F!!!
    F is (Temp1 + Temp2) mod 10,
    C3 is (Temp1 + Temp2) // 10,		
    
    % 6. Get the final answer 
    E is Temp3 + C3,
    
    % 7. ASSUME!!!! 
    E < 10,
    
    % 8. All different number - ONLY FOR ABCD!!!
    all_diff([A,B,C,D]),
    
    write('_'),write(A),write(B),nl,
    write('*'),write(C),write(D),nl,
    write('----------------------'),nl,
    write(E),write(F),write(G),nl,nl.
    
/*
 * 
 * 
S is cputime,solve([A,B,C,D,E,F,G]),
Time is cputime - S.

*/


    
