%------------------------------------------------------------------------------
% File     : ARI520_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Arithmetic
% Problem  : Mixed: Sum 2 and 3 is integer
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v6.2.0, 0.20 v6.1.0, 0.11 v6.0.0, 0.12 v5.4.0, 0.25 v5.3.0, 0.29 v5.2.0, 0.40 v5.1.0, 0.50 v5.0.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 typ;   0 def)
%            Number of atoms       :    1 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    4 (   1 atm;   1 fun;   2 num;   0 var)
%            Number of types       :    0 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 1-1 aty)
%            Number of functors    :    3 (   0 usr;   2 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_NEQ_ARI

% Comments :
%------------------------------------------------------------------------------
tff(mixed_types_problem_25,conjecture,
    $is_int($sum(2,3)) ).

%------------------------------------------------------------------------------
