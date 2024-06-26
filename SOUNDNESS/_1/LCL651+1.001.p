%------------------------------------------------------------------------------
% File     : LCL651+1.001 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In K, black and white polygon with even vertices, size 1
% Version  : Especial.
% English  : If we have a polygon with n vertices, and all the vertices are
%            either black or white, then two adjacent vertices have the same
%            colour.

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : k_poly_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.4.0, 0.13 v5.3.0, 0.15 v5.2.0, 0.00 v5.0.0, 0.11 v4.1.0, 0.00 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :   58 (   0 equ)
%            Maximal formula atoms :   58 (  58 avg)
%            Number of connectives :  116 (  59   ~;  41   |;  16   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   36 (  36 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    9 (   9 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   29 (  28   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(main,conjecture,
    ~ ? [X] :
        ~ ( ! [Y] :
              ( ~ r1(X,Y)
              | ! [X] :
                  ( ~ r1(Y,X)
                  | ! [Y] :
                      ( ~ r1(X,Y)
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | ( ~ p10(Y)
                                & ~ p8(Y)
                                & ~ p6(Y)
                                & ~ p4(Y)
                                & ~ p2(Y) ) ) ) ) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | p6(Y) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ~ ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | ! [X] :
                                  ( ~ r1(Y,X)
                                  | ! [Y] :
                                      ( ~ r1(X,Y)
                                      | ~ ( ( ~ p4(Y)
                                            & ~ p1(Y) )
                                          | ( p1(Y)
                                            & p4(Y) ) ) ) ) ) )
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | p5(X) )
                    | ~ ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ( ~ ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ~ ( ( ~ p3(Y)
                                                  & ~ p4(Y) )
                                                | ( p4(Y)
                                                  & p3(Y) ) ) ) ) )
                              | ! [Y] :
                                  ( ~ r1(X,Y)
                                  | p4(Y) )
                              | ~ ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ ( ~ ! [X] :
                                              ( ~ r1(Y,X)
                                              | ! [Y] :
                                                  ( ~ r1(X,Y)
                                                  | ~ ( ( ~ p2(Y)
                                                        & ~ p3(Y) )
                                                      | ( p3(Y)
                                                        & p2(Y) ) ) ) )
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | p3(X) )
                                        | ~ ! [X] :
                                              ( ~ r1(Y,X)
                                              | ~ ~ ! [Y] :
                                                      ( ~ r1(X,Y)
                                                      | ~ ( ( ~ p1(Y)
                                                            & ~ p2(Y) )
                                                          | ( p2(Y)
                                                            & p1(Y) ) ) ) ) ) ) ) ) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | ! [X] :
                  ( ~ r1(Y,X)
                  | ! [Y] :
                      ( ~ r1(X,Y)
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | ( p5(Y)
                                & p4(Y)
                                & p3(Y)
                                & p2(Y)
                                & p1(Y) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
