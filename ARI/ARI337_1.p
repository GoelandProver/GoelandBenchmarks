%------------------------------------------------------------------------------
% File     : ARI337_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Arithmetic
% Problem  : Rational: Sum is 36/5 and difference is 0/1
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.38 v8.1.0, 0.50 v7.4.0, 0.25 v7.3.0, 0.33 v7.1.0, 0.50 v7.0.0, 0.43 v6.4.0, 0.00 v6.3.0, 0.43 v6.2.0, 0.75 v6.1.0, 0.67 v6.0.0, 0.57 v5.5.0, 0.67 v5.4.0, 0.50 v5.3.0, 0.60 v5.2.0, 0.50 v5.1.0, 0.60 v5.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 typ;   0 def)
%            Number of atoms       :    2 (   2 equ)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :    1 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    6 (   0 atm;   2 fun;   2 num;   2 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    4 (   0 usr;   2 con; 0-2 aty)
%            Number of variables   :    2 (   0   !;   2   ?;   2   :)
% SPC      : TF0_THM_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
tff(rat_combined_problem_3,conjecture,
    ? [X: $rat,Y: $rat] :
      ( ( $sum(X,Y) = 36/5 )
      & ( $difference(X,Y) = 0/1 ) ) ).

%------------------------------------------------------------------------------
