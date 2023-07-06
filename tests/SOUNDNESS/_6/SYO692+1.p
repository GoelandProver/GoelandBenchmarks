%------------------------------------------------------------------------------
% File     : SYO692+1 : TPTP v8.1.2. Released v7.4.0.
% Domain   : Syntactic
% Problem  : SuperPostulates problem sp0
% Version  : Especial.
% English  :

% Refs     : [Lam20] Lampert (2020), Email to Geoff Sutcliffe
%          : [LN20]  Lampert & Nakano (2020), Deciding Simple Infinity Axio
% Source   : [Lam20]
% Names    : sp0.p [Lam20]

% Status   : Satisfiable
% Rating   : 1.00 v7.4.0
% Syntax   : Number of formulae    :    6 (   3 unt;   0 def)
%            Number of atoms       :   12 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   11 (   5   ~;   5   |;   1   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   14 (  11   !;   3   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments : Has only infinite models.
%------------------------------------------------------------------------------
fof(axiom_1,axiom,
    ! [X1] : ~ f(X1,X1) ).

fof(axiom_2,axiom,
    ! [X1] :
    ? [Y1] : f(X1,Y1) ).

fof(axiom_3,axiom,
    ! [X1] :
    ? [Y1] : f(Y1,X1) ).

fof(axiom_4,axiom,
    ! [X1,X2,X3] :
      ( ~ f(X1,X2)
      | ~ f(X2,X3)
      | f(X1,X3) ) ).

fof(axiom_5,axiom,
    ! [X1,X2] :
      ( f(X1,X2)
      | ! [X3] :
          ( f(X2,X3)
          | ~ f(X1,X3) ) ) ).

fof(axiom_6,axiom,
    ! [X1,X2] :
      ( ~ f(X1,X2)
      | ? [Y1] :
          ( f(X1,Y1)
          & f(Y1,X2) ) ) ).

%------------------------------------------------------------------------------