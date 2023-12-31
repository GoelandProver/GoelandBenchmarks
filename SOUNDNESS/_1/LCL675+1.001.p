%------------------------------------------------------------------------------
% File     : LCL675+1.001 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In S4, the branching formula, size 1
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : s4_branch_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.4.0, 0.20 v5.3.0, 0.31 v5.2.0, 0.12 v5.0.0, 0.11 v4.1.0, 0.00 v4.0.0
% Syntax   : Number of formulae    :    3 (   1 unt;   0 def)
%            Number of atoms       :   39 (   0 equ)
%            Maximal formula atoms :   35 (  13 avg)
%            Number of connectives :   66 (  30   ~;  20   |;  15   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   16 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   12 (  11   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(reflexivity,axiom,
    ! [X] : r1(X,X) ).

fof(transitivity,axiom,
    ! [X,Y,Z] :
      ( ( r1(X,Y)
        & r1(Y,Z) )
     => r1(X,Z) ) ).

fof(main,conjecture,
    ~ ? [X] :
        ( ! [Y] :
            ( ~ r1(X,Y)
            | ( ( ( ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( ~ p2(X)
                            & ~ p102(X)
                            & p101(X) ) )
                  & ~ ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( p2(X)
                            & ~ p102(X)
                            & p101(X) ) ) )
                | ~ ( ~ p101(Y)
                    & p100(Y) ) )
              & ( ( ( ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p2(X)
                        | ~ p101(X) )
                    | p2(Y) )
                  & ( ! [X] :
                        ( ~ r1(Y,X)
                        | p2(X)
                        | ~ p101(X) )
                    | ~ p2(Y) ) )
                | ~ p101(Y) )
              & ( ( ( ! [X] :
                        ( ~ r1(Y,X)
                        | ~ p1(X)
                        | ~ p100(X) )
                    | p1(Y) )
                  & ( ! [X] :
                        ( ~ r1(Y,X)
                        | p1(X)
                        | ~ p100(X) )
                    | ~ p1(Y) ) )
                | ~ p100(Y) )
              & ( p101(Y)
                | ~ p102(Y) )
              & ( p100(Y)
                | ~ p101(Y) ) ) )
        & ~ p101(X)
        & p100(X) ) ).

%------------------------------------------------------------------------------
