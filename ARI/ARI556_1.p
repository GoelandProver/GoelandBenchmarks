%------------------------------------------------------------------------------
% File     : ARI556_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Arithmetic
% Problem  : Rational: Sum of product -3/40 and -12/1, and -9/10 is 0/1
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v7.1.0, 0.17 v7.0.0, 0.14 v6.4.0, 0.00 v6.3.0, 0.14 v6.2.0, 0.25 v6.1.0, 0.11 v6.0.0, 0.00 v5.5.0, 0.22 v5.4.0, 0.12 v5.3.0, 0.30 v5.2.0, 0.33 v5.1.0, 0.20 v5.0.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 typ;   0 def)
%            Number of atoms       :    1 (   1 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    3 (   2 avg)
%            Number arithmetic     :    6 (   0 atm;   2 fun;   4 num;   0 var)
%            Number of types       :    0 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    6 (   0 usr;   4 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
tff(rat_combined_problem_16,conjecture,
    $sum($product(-3/40,-12/1),-9/10) = 0/1 ).

%------------------------------------------------------------------------------
