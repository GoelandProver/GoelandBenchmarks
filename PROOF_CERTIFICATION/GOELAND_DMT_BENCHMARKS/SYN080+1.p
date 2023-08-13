%--------------------------------------------------------------------------
% File     : SYN080+1 : TPTP v8.1.2. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Pelletier Problem 58
% Version  : Especial.
% English  :

% Refs     : [Pel86] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Hah94]
% Names    : Pelletier 58 [Pel86]

% Status   : Theorem
% Rating   : 0.00 v6.3.0, 0.07 v6.2.0, 0.09 v6.1.0, 0.00 v3.2.0, 0.09 v3.1.0, 0.00 v2.5.0, 0.12 v2.4.0, 0.25 v2.3.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    2 (   2 unt;   0 def)
%            Number of atoms       :    2 (   2 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    3 (   2 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    2 (   2 usr;   0 con; 1-1 aty)
%            Number of variables   :    4 (   4   !;   0   ?)
% SPC      : FOF_THM_RFO_PEQ

% Comments :
%--------------------------------------------------------------------------
%----Problem axioms
fof(pel58_1,axiom,
    ! [X,Y] : f(X) = g(Y) ).

fof(pel58,conjecture,
    ! [X,Y] : f(f(X)) = f(g(Y)) ).

%--------------------------------------------------------------------------
