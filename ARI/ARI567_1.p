%------------------------------------------------------------------------------
% File     : ARI567_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Arithmetic
% Problem  : Real: (-0.25 - (something * -0.05) lesseq to 0.0
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v7.4.0, 0.17 v7.3.0, 0.12 v7.1.0, 0.17 v7.0.0, 0.00 v6.2.0, 0.20 v6.1.0, 0.22 v6.0.0, 0.25 v5.5.0, 0.38 v5.3.0, 0.57 v5.2.0, 0.60 v5.1.0, 0.75 v5.0.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 typ;   0 def)
%            Number of atoms       :    1 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    3 (   2 avg)
%            Number arithmetic     :    7 (   1 atm;   2 fun;   3 num;   1 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    5 (   0 usr;   3 con; 0-2 aty)
%            Number of variables   :    1 (   0   !;   1   ?;   1   :)
% SPC      : TF0_THM_NEQ_ARI

% Comments :
%------------------------------------------------------------------------------
tff(real_combined_problem_18,conjecture,
    ? [X: $real] : $lesseq($difference(-0.25,$product(X,-0.05)),0.0) ).

%------------------------------------------------------------------------------
