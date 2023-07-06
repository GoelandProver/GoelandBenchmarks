%------------------------------------------------------------------------------
% File     : LCL657+1.005 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In KT, the branching formula, size 5
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : kt_branch_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.67 v8.1.0, 0.33 v7.4.0, 0.00 v7.3.0, 0.33 v6.4.0, 0.50 v6.2.0, 0.56 v6.1.0, 0.70 v6.0.0, 0.71 v5.4.0, 0.67 v5.3.0, 0.69 v5.2.0, 0.75 v5.0.0, 0.67 v4.0.1, 0.00 v4.0.0
% Syntax   : Number of formulae    :    2 (   1 unt;   0 def)
%            Number of atoms       :  124 (   0 equ)
%            Maximal formula atoms :  123 (  62 avg)
%            Number of connectives :  232 ( 110   ~;  68   |;  54   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   32 (  17 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   14 (  14 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   29 (  28   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(reflexivity,axiom,
    ! [X] : r1(X,X) ).

fof(main,conjecture,
    ~ ? [X] :
        ( ! [Y] :
            ( ~ r1(X,Y)
            | ! [X] :
                ( ~ r1(Y,X)
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ( ( ( ~ ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ( ~ p6(X)
                                            & ~ p106(X)
                                            & p105(X) ) )
                                  & ~ ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ( p6(X)
                                            & ~ p106(X)
                                            & p105(X) ) ) )
                                | ~ ( ~ p105(Y)
                                    & p104(Y) ) )
                              & ( ( ~ ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ( ~ p5(X)
                                            & ~ p105(X)
                                            & p104(X) ) )
                                  & ~ ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ( p5(X)
                                            & ~ p105(X)
                                            & p104(X) ) ) )
                                | ~ ( ~ p104(Y)
                                    & p103(Y) ) )
                              & ( ( ~ ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ( ~ p4(X)
                                            & ~ p104(X)
                                            & p103(X) ) )
                                  & ~ ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ( p4(X)
                                            & ~ p104(X)
                                            & p103(X) ) ) )
                                | ~ ( ~ p103(Y)
                                    & p102(Y) ) )
                              & ( ( ~ ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ( ~ p3(X)
                                            & ~ p103(X)
                                            & p102(X) ) )
                                  & ~ ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ( p3(X)
                                            & ~ p103(X)
                                            & p102(X) ) ) )
                                | ~ ( ~ p102(Y)
                                    & p101(Y) ) )
                              & ( ( ~ ! [X] :
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
                                        | ~ p6(X)
                                        | ~ p105(X) )
                                    | p6(Y) )
                                  & ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | p6(X)
                                        | ~ p105(X) )
                                    | ~ p6(Y) ) )
                                | ~ p105(Y) )
                              & ( ( ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ p5(X)
                                        | ~ p104(X) )
                                    | p5(Y) )
                                  & ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | p5(X)
                                        | ~ p104(X) )
                                    | ~ p5(Y) ) )
                                | ~ p104(Y) )
                              & ( ( ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ p4(X)
                                        | ~ p103(X) )
                                    | p4(Y) )
                                  & ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | p4(X)
                                        | ~ p103(X) )
                                    | ~ p4(Y) ) )
                                | ~ p103(Y) )
                              & ( ( ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ p3(X)
                                        | ~ p102(X) )
                                    | p3(Y) )
                                  & ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | p3(X)
                                        | ~ p102(X) )
                                    | ~ p3(Y) ) )
                                | ~ p102(Y) )
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
                              & ( p105(Y)
                                | ~ p106(Y) )
                              & ( p104(Y)
                                | ~ p105(Y) )
                              & ( p103(Y)
                                | ~ p104(Y) )
                              & ( p102(Y)
                                | ~ p103(Y) )
                              & ( p101(Y)
                                | ~ p102(Y) )
                              & ( p100(Y)
                                | ~ p101(Y) ) ) ) ) ) ) )
        & ~ p101(X)
        & p100(X) ) ).

%------------------------------------------------------------------------------