%------------------------------------------------------------------------------
% File     : ARI713_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : ceiling is idempotent
% Version  : Especial.
% English  :

% Refs     : [Wal14] Waldmann (2014), Email to Geoff Sutcliffe
% Source   : [Wal14]
% Names    : 

% Status   : Theorem
% Rating   : 0.38 v7.5.0, 0.40 v7.4.0, 0.38 v7.3.0, 0.50 v7.0.0, 0.43 v6.4.0, 0.33 v6.3.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 typ;   0 def)
%            Number of atoms       :    1 (   1 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    3 (   2 avg)
%            Number arithmetic     :    4 (   0 atm;   3 fun;   0 num;   1 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   0 usr;   0 con; 1-1 aty)
%            Number of variables   :    1 (   1   !;   0   ?;   1   :)
% SPC      : TF0_THM_EQU_ARI

% Comments : 
%------------------------------------------------------------------------------
tff(prove,conjecture,
    ! [X: $real] : ( $ceiling($ceiling(X)) = $ceiling(X) ) ).

%------------------------------------------------------------------------------
