%------------------------------------------------------------------------------
% File     : ARI462_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Arithmetic
% Problem  : Real: Sum -9.04 and - -9.04 is 0.0
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v7.4.0, 0.12 v7.3.0, 0.17 v7.0.0, 0.14 v6.4.0, 0.00 v6.3.0, 0.14 v6.2.0, 0.25 v6.1.0, 0.11 v6.0.0, 0.00 v5.5.0, 0.22 v5.4.0, 0.12 v5.3.0, 0.40 v5.2.0, 0.50 v5.1.0, 0.40 v5.0.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 typ;   0 def)
%            Number of atoms       :    1 (   1 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    3 (   2 avg)
%            Number arithmetic     :    5 (   0 atm;   2 fun;   3 num;   0 var)
%            Number of types       :    0 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    4 (   0 usr;   2 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
tff(real_uminus_problem_4,conjecture,
    $sum(-9.04,$uminus(-9.04)) = 0.0 ).

%------------------------------------------------------------------------------