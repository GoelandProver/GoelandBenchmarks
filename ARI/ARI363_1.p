%------------------------------------------------------------------------------
% File     : ARI363_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Arithmetic
% Problem  : Real: Something lesseq to something else
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v7.4.0, 0.17 v7.3.0, 0.12 v7.1.0, 0.17 v7.0.0, 0.00 v6.2.0, 0.20 v6.1.0, 0.22 v6.0.0, 0.25 v5.3.0, 0.43 v5.2.0, 0.60 v5.1.0, 0.75 v5.0.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 typ;   0 def)
%            Number of atoms       :    1 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number arithmetic     :    3 (   1 atm;   0 fun;   0 num;   2 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (   0   !;   2   ?;   2   :)
% SPC      : TF0_THM_NEQ_ARI

% Comments :
%------------------------------------------------------------------------------
tff(real_lesseq_problem_6,conjecture,
    ? [X: $real,Y: $real] : $lesseq(X,Y) ).

%------------------------------------------------------------------------------
