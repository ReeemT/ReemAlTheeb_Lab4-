% ============================================================
%  ARTI 303 - Lab 4  |  Variables in Prolog
%  The family facts used throughout this lab.
% ============================================================

male(ali).
male(ahmad).
male(muhammad).
male(faisal).
male(hassan).
male(khan).

female(sara).
female(nora).

parent(ali, ahmad).
parent(ali, muhammad).
parent(ahmad, sara).
parent(ahmad, nora).
parent(ahmad, khan).
parent(muhammad, faisal).
parent(faisal, hassan).

% ============================================================
%  TASK 2 - write a query for each of these:
%    1. the names of all females
%    2. whether there is any male
%    3. the grandparent of Faisal
%    4. all daughters of Ahmad
%    5. whether Ahmad and Muhammad have a common parent
%    6. whether Khan is the brother of Nora
%
%  Paste your queries and Prolog's answers below.
% ============================================================



76 ?- female(X).
X = sara ;
X = nora.

77 ?- male(_).
true .

78 ?- parent(G, P) , parent(P, faisal).
G = ali,
P = muhammad ;
false.

79 ?- parent(ahmad, D), female(D). 
D = sara ;
D = nora ;
false.

80 ?- parent(P, ahmad), parent(P, muhammad).
P = ali.

81 ?- male(khan), parent(P, khan), parent(P, nora).
P = ahmad.