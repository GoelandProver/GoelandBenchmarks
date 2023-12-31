%--------------------------------------------------------------------------
% File     : NLP006+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : "The old dirty white Chevy" problem 6
% Version  : [Bos00] axioms.
% English  : A problem generated by the DORIS [Bos00] system when parsing
%            the statement "The old dirty white Chevy barrels down a lonely
%            street in Hollywood".

% Refs     : [Bos00] Bos (2000), DORIS: Discourse Oriented Representation an
%            [Bau99] Baumgartner (1999), FTP'2000 - Problem Sets
% Source   : [Bau99]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v4.1.0, 0.20 v4.0.0, 0.25 v3.7.0, 0.00 v3.1.0, 0.67 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  118 (  12 equ)
%            Maximal formula atoms :  118 ( 118 avg)
%            Number of connectives :  121 (   4   ~;   0   |; 115   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   43 (  43 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   21 (  20 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   38 (   0   !;  38   ?)
% SPC      : FOF_CSA_EPR_SEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ( ( ? [U,V,W,X,Y,Z,X1,X2,X3,X4] :
          ( seat(U)
          & furniture(U)
          & front(U)
          & hollywood(V)
          & city(V)
          & event(W)
          & chevy(X)
          & car(X)
          & white(X)
          & dirty(X)
          & old(X)
          & street(Y)
          & way(Y)
          & lonely(Y)
          & barrel(W,X)
          & down(W,Y)
          & in(W,V)
          & seat(X2)
          & furniture(X2)
          & front(X2)
          & Z != X1
          & fellow(Z)
          & man(Z)
          & young(Z)
          & fellow(X1)
          & man(X1)
          & young(X1)
          & Z = X3
          & in(X3,U)
          & X1 = X4
          & in(X4,X2) )
     => ? [X5,X6,X7,X8,X9,X10,X11,X13,X14] :
          ( seat(X5)
          & furniture(X5)
          & front(X5)
          & hollywood(X6)
          & city(X6)
          & event(X7)
          & chevy(X8)
          & car(X8)
          & white(X8)
          & dirty(X8)
          & old(X8)
          & street(X9)
          & way(X9)
          & lonely(X9)
          & barrel(X7,X8)
          & down(X7,X9)
          & in(X7,X6)
          & X10 != X11
          & fellow(X10)
          & man(X10)
          & young(X10)
          & fellow(X11)
          & man(X11)
          & young(X11)
          & X10 = X13
          & in(X13,X5)
          & X11 = X14
          & in(X14,X5) ) )
    & ( ? [X15,X16,X17,X18,X19,X20,X21,X23,X24] :
          ( seat(X15)
          & furniture(X15)
          & front(X15)
          & hollywood(X16)
          & city(X16)
          & event(X17)
          & chevy(X18)
          & car(X18)
          & white(X18)
          & dirty(X18)
          & old(X18)
          & street(X19)
          & way(X19)
          & lonely(X19)
          & barrel(X17,X18)
          & down(X17,X19)
          & in(X17,X16)
          & X20 != X21
          & fellow(X20)
          & man(X20)
          & young(X20)
          & fellow(X21)
          & man(X21)
          & young(X21)
          & X20 = X23
          & in(X23,X15)
          & X21 = X24
          & in(X24,X15) )
     => ? [X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
          ( seat(X25)
          & furniture(X25)
          & front(X25)
          & hollywood(X26)
          & city(X26)
          & event(X27)
          & chevy(X28)
          & car(X28)
          & white(X28)
          & dirty(X28)
          & old(X28)
          & street(X29)
          & way(X29)
          & lonely(X29)
          & barrel(X27,X28)
          & down(X27,X29)
          & in(X27,X26)
          & seat(X32)
          & furniture(X32)
          & front(X32)
          & X30 != X31
          & fellow(X30)
          & man(X30)
          & young(X30)
          & fellow(X31)
          & man(X31)
          & young(X31)
          & X30 = X33
          & in(X33,X25)
          & X31 = X34
          & in(X34,X32) ) ) ) ).

%--------------------------------------------------------------------------
