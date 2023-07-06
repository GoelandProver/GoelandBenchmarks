%------------------------------------------------------------------------------
% File     : LCL652+1.005 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In K, formula with T and A4, size 5
% Version  : Especial.
% English  : T{dia p0/p0} & box T{~box dia p0/p0} & A4{dia p0/p0} &
%            box(dia box dia p0 -> (p0 -> box p0)) -> dia box p0 |
%            dia box ~p0.

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : k_t4p_p [BHS00]

% Status   : Theorem
% Rating   : 0.53 v8.1.0, 0.50 v7.5.0, 0.57 v7.4.0, 0.50 v7.3.0, 0.43 v7.2.0, 0.67 v7.1.0, 0.75 v7.0.0, 0.57 v6.4.0, 0.50 v6.3.0, 0.54 v6.2.0, 0.55 v6.1.0, 0.76 v6.0.0, 0.50 v5.5.0, 0.79 v5.4.0, 0.78 v5.3.0, 0.83 v5.2.0, 0.64 v5.1.0, 0.71 v5.0.0, 0.85 v4.1.0, 0.89 v4.0.1, 0.79 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  186 (   0 equ)
%            Maximal formula atoms :  186 ( 186 avg)
%            Number of connectives :  432 ( 247   ~; 170   |;  15   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   56 (  56 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   5 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  130 ( 129   !;   1   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(main,conjecture,
    ~ ? [X] :
        ~ ( ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ p4(Y) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ~ ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | ~ ! [X] :
                                    ( ~ r1(Y,X)
                                    | ~ p1(X) ) ) )
                    & ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ! [Y] :
                              ( ~ r1(X,Y)
                              | ~ p1(Y) ) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ~ ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ( ~ ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ! [Y] :
                                              ( ~ r1(X,Y)
                                              | ~ p1(Y) ) ) )
                              & ! [Y] :
                                  ( ~ r1(X,Y)
                                  | ~ ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ p1(X) ) ) ) )
                    | ~ ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ( ~ ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ ( ~ ! [X] :
                                              ( ~ r1(Y,X)
                                              | ! [Y] :
                                                  ( ~ r1(X,Y)
                                                  | ~ ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ~ p1(X) ) ) )
                                        & ! [X] :
                                            ( ~ r1(Y,X)
                                            | ~ ! [Y] :
                                                  ( ~ r1(X,Y)
                                                  | ~ p1(Y) ) ) ) )
                              | ~ ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ ( ~ ! [X] :
                                              ( ~ r1(Y,X)
                                              | ~ ( ~ ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ~ ! [Y] :
                                                                  ( ~ r1(X,Y)
                                                                  | ~ p1(Y) ) ) )
                                                  & ! [Y] :
                                                      ( ~ r1(X,Y)
                                                      | ~ ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ~ p1(X) ) ) ) )
                                        | ~ ! [X] :
                                              ( ~ r1(Y,X)
                                              | ~ ( ~ ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ~ ( ~ ! [X] :
                                                                  ( ~ r1(Y,X)
                                                                  | ! [Y] :
                                                                      ( ~ r1(X,Y)
                                                                      | ~ ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ~ p1(X) ) ) )
                                                            & ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ~ ! [Y] :
                                                                      ( ~ r1(X,Y)
                                                                      | ~ p1(Y) ) ) ) )
                                                  | ~ ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ~ ( ~ ! [X] :
                                                                  ( ~ r1(Y,X)
                                                                  | ~ ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | p3(X) )
                                                                        | ~ p2(Y) ) )
                                                            | ~ ! [X] :
                                                                  ( ~ r1(Y,X)
                                                                  | ~ ( ~ ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ~ ( ! [X] :
                                                                                    ( ~ r1(Y,X)
                                                                                    | p3(X) )
                                                                                | ~ p2(Y) ) )
                                                                      & p2(X)
                                                                      & ~ ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ~ ! [X] :
                                                                                  ( ~ r1(Y,X)
                                                                                  | ~ ! [Y] :
                                                                                        ( ~ r1(X,Y)
                                                                                        | ~ p2(Y) ) ) ) ) )
                                                            | ( ~ ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ~ ! [X] :
                                                                              ( ~ r1(Y,X)
                                                                              | ! [Y] :
                                                                                  ( ~ r1(X,Y)
                                                                                  | p3(Y) )
                                                                              | ~ p2(X) ) ) )
                                                              & ! [X] :
                                                                  ( ~ r1(Y,X)
                                                                  | ~ ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ~ p2(Y) ) ) )
                                                            | ~ ! [X] :
                                                                  ( ~ r1(Y,X)
                                                                  | ~ ( ! [Y] :
                                                                          ( ~ r1(X,Y)
                                                                          | ~ ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ~ p2(X) ) )
                                                                      & ! [Y] :
                                                                          ( ~ r1(X,Y)
                                                                          | ~ ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ~ ! [Y] :
                                                                                      ( ~ r1(X,Y)
                                                                                      | ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | p3(X) )
                                                                                      | ~ p2(Y) ) ) ) ) )
                                                            | ( ! [X] :
                                                                  ( ~ r1(Y,X)
                                                                  | ! [Y] :
                                                                      ( ~ r1(X,Y)
                                                                      | p3(Y) )
                                                                  | ~ p2(X) )
                                                              & ! [X] :
                                                                  ( ~ r1(Y,X)
                                                                  | ~ ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ~ p2(Y) ) ) ) ) )
                                                  | ~ ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ~ ( ~ ! [X] :
                                                                  ( ~ r1(Y,X)
                                                                  | ! [Y] :
                                                                      ( ~ r1(X,Y)
                                                                      | p1(Y) ) )
                                                            & ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | p1(X) ) ) ) ) )
                                        | ~ ! [X] :
                                              ( ~ r1(Y,X)
                                              | ~ ( ~ ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | p1(X) ) )
                                                  & ! [Y] :
                                                      ( ~ r1(X,Y)
                                                      | p1(Y) ) ) ) ) )
                              | ~ ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ ( ~ ! [X] :
                                              ( ~ r1(Y,X)
                                              | ! [Y] :
                                                  ( ~ r1(X,Y)
                                                  | p1(Y) ) )
                                        & ! [X] :
                                            ( ~ r1(Y,X)
                                            | p1(X) ) ) ) ) )
                    | ~ ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ( ~ ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | p1(X) ) )
                              & ! [Y] :
                                  ( ~ r1(X,Y)
                                  | p1(Y) ) ) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ~ ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p1(Y) ) )
                    & ! [X] :
                        ( ~ r1(Y,X)
                        | p1(X) ) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | ! [X] :
                  ( ~ r1(Y,X)
                  | ~ ! [Y] :
                        ( ~ r1(X,Y)
                        | p1(Y) ) )
              | ! [X] :
                  ( ~ r1(Y,X)
                  | p1(X) ) )
          | ! [Y] :
              ( ~ r1(X,Y)
              | ! [X] :
                  ( ~ r1(Y,X)
                  | ! [Y] :
                      ( ~ r1(X,Y)
                      | ~ ! [X] :
                            ( ~ r1(Y,X)
                            | p1(X) ) )
                  | ! [Y] :
                      ( ~ r1(X,Y)
                      | p1(Y) ) )
              | ! [X] :
                  ( ~ r1(Y,X)
                  | ! [Y] :
                      ( ~ r1(X,Y)
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | p1(Y) ) )
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | p1(X) ) )
                  | ! [Y] :
                      ( ~ r1(X,Y)
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | ~ ! [X] :
                                    ( ~ r1(Y,X)
                                    | p1(X) ) )
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | p1(Y) ) )
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | ! [X] :
                                  ( ~ r1(Y,X)
                                  | ~ ! [Y] :
                                        ( ~ r1(X,Y)
                                        | p1(Y) ) )
                              | ! [X] :
                                  ( ~ r1(Y,X)
                                  | p1(X) ) )
                          | ! [Y] :
                              ( ~ r1(X,Y)
                              | ~ ! [X] :
                                    ( ~ r1(Y,X)
                                    | ~ ! [Y] :
                                          ( ~ r1(X,Y)
                                          | p2(Y) ) ) )
                          | ~ ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ~ p1(Y) ) )
                                | ~ ! [X] :
                                      ( ~ r1(Y,X)
                                      | ~ p1(X) ) ) )
                      | ~ ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ~ p1(X) ) )
                            | ~ ! [Y] :
                                  ( ~ r1(X,Y)
                                  | ~ p1(Y) ) ) )
                  | ~ ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p1(Y) ) )
                        | ~ ! [X] :
                              ( ~ r1(Y,X)
                              | ~ p1(X) ) ) )
              | ~ ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p1(X) ) )
                    | ~ ! [Y] :
                          ( ~ r1(X,Y)
                          | ~ p1(Y) ) ) )
          | ~ ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ~ p1(Y) ) )
                | ~ ! [X] :
                      ( ~ r1(Y,X)
                      | ~ p1(X) ) ) ) ).

%------------------------------------------------------------------------------