%--------------------------------------------------------------------------
% File     : SET595+4 : TPTP v8.1.2. Released v2.2.0.
% Domain   : Set Theory (Naive)
% Problem  : If X (= Y, then Y = X U (Y \ X)
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.50 v8.1.0, 0.47 v7.5.0, 0.53 v7.4.0, 0.50 v7.3.0, 0.52 v7.2.0, 0.48 v7.1.0, 0.52 v7.0.0, 0.57 v6.4.0, 0.62 v6.3.0, 0.67 v6.2.0, 0.52 v6.1.0, 0.60 v6.0.0, 0.61 v5.5.0, 0.67 v5.4.0, 0.75 v5.3.0, 0.78 v5.2.0, 0.70 v5.1.0, 0.71 v5.0.0, 0.79 v4.1.0, 0.78 v4.0.0, 0.79 v3.7.0, 0.75 v3.5.0, 0.79 v3.4.0, 0.84 v3.3.0, 0.79 v3.2.0, 0.82 v3.1.0, 0.78 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.25 v2.3.0, 0.00 v2.2.1
% Syntax   : Number of formulae    :   12 (   1 unt;   0 def)
%            Number of atoms       :   31 (   3 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   21 (   2   ~;   2   |;   4   &)
%                                         (  10 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    4 (   3 usr;   0 prp; 2-2 aty)
%            Number of functors    :    9 (   9 usr;   1 con; 0-2 aty)
%            Number of variables   :   30 (  29   !;   1   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Include set theory definitions
include('Axioms/SET006+0.ax').
%--------------------------------------------------------------------------
fof(thI27,conjecture,
    ! [A,E] :
      ( subset(A,E)
     => equal_set(union(difference(E,A),A),E) ) ).

%--------------------------------------------------------------------------
