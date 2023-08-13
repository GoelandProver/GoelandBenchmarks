%--------------------------------------------------------------------------
% File     : SET694+4 : TPTP v8.1.2. Released v2.2.0.
% Domain   : Set Theory (Naive)
% Problem  : Union of power sets is a subset of the power set of the union
% Version  : [Pas99] axioms.
% English  : The union of the power_set of A and the power_set of B is a
%            subset of the power_set of the union of A and B.

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.58 v8.1.0, 0.56 v7.4.0, 0.50 v7.3.0, 0.59 v7.2.0, 0.55 v7.1.0, 0.48 v7.0.0, 0.53 v6.4.0, 0.54 v6.3.0, 0.67 v6.2.0, 0.52 v6.1.0, 0.67 v6.0.0, 0.65 v5.5.0, 0.74 v5.4.0, 0.79 v5.3.0, 0.81 v5.2.0, 0.75 v5.1.0, 0.76 v5.0.0, 0.88 v4.1.0, 0.83 v4.0.1, 0.78 v4.0.0, 0.75 v3.7.0, 0.70 v3.5.0, 0.74 v3.4.0, 0.79 v3.2.0, 0.82 v3.1.0, 0.78 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.50 v2.3.0, 0.33 v2.2.1
% Syntax   : Number of formulae    :   12 (   2 unt;   0 def)
%            Number of atoms       :   30 (   3 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   20 (   2   ~;   2   |;   4   &)
%                                         (  10 <=>;   2  =>;   0  <=;   0 <~>)
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
fof(thI22,conjecture,
    ! [A,B] : subset(union(power_set(A),power_set(B)),power_set(union(A,B))) ).

%--------------------------------------------------------------------------