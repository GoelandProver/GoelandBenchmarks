%------------------------------------------------------------------------------
% File     : ARI489_1 : TPTP v8.1.2. Bugfixed v5.1.0.
% Domain   : Arithmetic
% Problem  : Real: Something less than sum something and 1
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v8.1.0, 0.12 v7.5.0, 0.20 v7.4.0, 0.38 v7.3.0, 0.50 v7.0.0, 0.14 v6.4.0, 0.00 v6.3.0, 0.14 v6.2.0, 0.25 v6.1.0, 0.22 v6.0.0, 0.14 v5.5.0, 0.44 v5.4.0, 0.38 v5.3.0, 0.70 v5.2.0, 0.83 v5.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 typ;   0 def)
%            Number of atoms       :    2 (   1 equ)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :    1 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    5 (   1 atm;   1 fun;   1 num;   2 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    2 (   0 usr;   1 con; 0-2 aty)
%            Number of variables   :    2 (   0   !;   2   ?;   2   :)
% SPC      : TF0_THM_EQU_ARI

% Comments :
% Bugfixes : v5.1.0 - changed 1 to 1.0
%------------------------------------------------------------------------------
tff(real_combined_problem_4,conjecture,
    ? [X: $real,Y: $real] :
      ( ( $sum(X,1.0) = Y )
      & $less(X,Y) ) ).

%------------------------------------------------------------------------------
