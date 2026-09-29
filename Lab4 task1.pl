Evaluate the following Prolog unification query, and for each query, Write the Prolog result and Explain briefly why
the terms can or cannot be unified.
• ?- house = house.
True , they are equal 

• ?- house = abc.
False , they are different so not equal

• ?- edge(a,b) = edge(C,b).
C=a , they have the same name (edge) so we match both sides 

• ?- edge(a,d) = edge(C,B).
C=a , B=d , same name (edge) so we match them 

• ?- edge(C,B) = edge(a,d).
C=a, B=d , same name (edge) so we match them 

• ?- edge(A,f(g,h)) = edge(a,B).
A=a, B= f(g,h) , same name (edge) and we have 2 in both sides so we match them

• ?- edge(A,A) = edge(b,c).
False, A should have only one value 

• ?- edge(A,A) = edge(b,b).
A=b, both sides has A=b 

• ?- A = B, B = f.
A=B , B=f, becuase we can say A=f 

• ?- A = B, B = f, A = e.
False, A should have one value onlu, so A=f is true, but A=e is false 