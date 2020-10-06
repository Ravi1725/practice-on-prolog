%Encode the following in a Prolog program  -

%Ron and Ginny are siblings. Ginny is married to Harry. James is Harry's son. Lily is Ginny's daughter. Rose is Ron's daughter. Arthur is Ginny's father.

female(ginny).
female(ron).
female(rose).
female(lily).

male(hary).
male(james).
male(arthur).

sibling(ginny,ron).
father(hary,james).
father(hary,lily).
mother(ginny,james).
mother(ginny,lily).
mother(ron,rose).
father(arthur,ginny).
father(arthur,ron).
husband(hary,ginny).
daughter(ginny,arthur).
daughter(rose,ron).





parent(X,Y):-mother(X,Y);father(X,Y).
grandchild(X,Y):-parent(Y,M),parent(M,X).
child(X,Y):-parent(Y,X).
cousin(X,Y):-parent(M,X),parent(N,Y),sibling(M,N).
niece(X,Y):-mother(M,X);father(M,X),sibling(M,Y).


