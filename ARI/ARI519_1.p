%------------------------------------------------------------------------------
% File     : ARI519_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Arithmetic
% Problem  : Mixed: Something is greatereq to 9 coerced to real
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.17 v7.5.0, 0.20 v7.4.0, 0.33 v7.3.0, 0.25 v7.1.0, 0.33 v7.0.0, 0.17 v6.4.0, 0.00 v6.2.0, 0.40 v6.1.0, 0.33 v6.0.0, 0.38 v5.5.0, 0.50 v5.3.0, 0.43 v5.2.0, 0.80 v5.1.0, 0.75 v5.0.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 typ;   0 def)
%            Number of atoms       :    1 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    4 (   1 atm;   1 fun;   1 num;   1 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    2 (   0 usr;   1 con; 0-1 aty)
%            Number of variables   :    1 (   0   !;   1   ?;   1   :)
% SPC      : TF0_THM_NEQ_ARI

% Comments :
%------------------------------------------------------------------------------
tff(mixed_types_problem_24,conjecture,
    ? [X: $real] : $greatereq(X,$to_real(9)) ).

%------------------------------------------------------------------------------
