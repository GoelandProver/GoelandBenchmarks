%------------------------------------------------------------------------------
% File     : ARI411_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Arithmetic
% Problem  : Real: Sum 4.25 and only 5.75 is 10.0
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v8.1.0, 0.12 v7.5.0, 0.10 v7.4.0, 0.25 v7.3.0, 0.33 v7.0.0, 0.14 v6.4.0, 0.00 v6.3.0, 0.14 v6.2.0, 0.25 v6.1.0, 0.33 v6.0.0, 0.14 v5.5.0, 0.33 v5.4.0, 0.25 v5.3.0, 0.60 v5.2.0, 0.67 v5.1.0, 0.60 v5.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 typ;   0 def)
%            Number of atoms       :    2 (   2 equ)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :    1 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    5 (   0 atm;   1 fun;   3 num;   1 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    4 (   0 usr;   3 con; 0-2 aty)
%            Number of variables   :    1 (   1   !;   0   ?;   1   :)
% SPC      : TF0_THM_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
tff(real_sum_problem_11,conjecture,
    ! [X: $real] :
      ( ( $sum(4.25,X) = 10.0 )
     => ( X = 5.75 ) ) ).

%------------------------------------------------------------------------------
