%------------------------------------------------------------------------------
% File     : SYO714+1 : TPTP v8.1.2. Released v7.4.0.
% Domain   : Syntactic
% Problem  : SuperPostulates problem sp161R1
% Version  : Especial.
% English  :

% Refs     : [Lam20] Lampert (2020), Email to Geoff Sutcliffe
%          : [LN20]  Lampert & Nakano (2020), Deciding Simple Infinity Axio
% Source   : [Lam20]
% Names    : sp161R1.p [Lam20]

% Status   : Satisfiable
% Rating   : 1.00 v7.4.0
% Syntax   : Number of formulae    :    9 (   0 unt;   0 def)
%            Number of atoms       :   37 (   0 equ)
%            Maximal formula atoms :    7 (   4 avg)
%            Number of connectives :   46 (  18   ~;  18   |;  10   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   7 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   35 (  22   !;  13   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments : Has only infinite models.
%------------------------------------------------------------------------------
fof(axiom_1,axiom,
    ? [Y1] :
      ( ? [Y2] :
          ( ? [Y3] : f(Y3,Y2)
          & ~ f(Y1,Y2) )
      & ! [X1] :
          ( ~ f(X1,X1)
          | f(Y1,X1) ) ) ).

fof(axiom_2,axiom,
    ? [Y1] :
      ( ? [Y2] :
          ( ? [Y4] :
              ( ~ f(Y2,Y4)
              & ~ f(Y4,Y1) )
          & ? [Y5] :
              ( ~ f(Y5,Y2)
              & f(Y5,Y5) ) )
      & ? [Y3] :
          ( ? [Y6] : f(Y6,Y3)
          & ~ f(Y1,Y3) )
      & f(Y1,Y1) ) ).

fof(axiom_3,axiom,
    ? [Y1] :
    ! [X1] :
      ( ! [X2] : ~ f(X2,X1)
      | f(Y1,X1) ) ).

fof(axiom_4,axiom,
    ! [X1] :
    ? [Y1] :
      ( ? [Y2] : f(Y1,Y2)
      & ~ f(Y1,X1) ) ).

fof(axiom_5,axiom,
    ! [X1] :
    ? [Y1] :
      ( f(Y1,Y1)
      & ~ f(Y1,X1) ) ).

fof(axiom_6,axiom,
    ! [X1,X2,X3] :
      ( f(X1,X2)
      | f(X2,X3)
      | ~ f(X1,X3) ) ).

fof(axiom_7,axiom,
    ! [X1,X2] :
      ( ~ f(X1,X2)
      | ! [X3] :
          ( ~ f(X2,X3)
          | f(X1,X3) ) ) ).

fof(axiom_8,axiom,
    ! [X1] :
      ( ! [X2] :
          ( ! [X4] :
              ( f(X1,X4)
              | ~ f(X2,X4) )
          | ! [X5] :
              ( ! [X6] : ~ f(X6,X5)
              | f(X2,X5) ) )
      | ! [X3] :
          ( f(X3,X1)
          | ~ f(X3,X3) )
      | f(X1,X1) ) ).

fof(axiom_9,axiom,
    ! [X1] :
      ( ! [X2] :
          ( ! [X4] :
              ( f(X4,X2)
              | ~ f(X4,X4) )
          | f(X2,X1)
          | f(X2,X2) )
      | ! [X3] :
          ( ! [X5] : ~ f(X5,X3)
          | f(X1,X3) )
      | ~ f(X1,X1) ) ).

%------------------------------------------------------------------------------
