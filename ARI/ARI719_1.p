%------------------------------------------------------------------------------
% File     : ARI719_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : floor(X+0.5) can be equal to floor(X-0.3)
% Version  : Especial.
% English  :

% Refs     : [Wal14] Waldmann (2014), Email to Geoff Sutcliffe
% Source   : [Wal14]
% Names    : 

% Status   : Theorem
% Rating   : 0.38 v7.5.0, 0.50 v7.0.0, 0.29 v6.4.0, 0.33 v6.3.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 typ;   0 def)
%            Number of atoms       :    1 (   1 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    3 (   2 avg)
%            Number arithmetic     :    7 (   0 atm;   4 fun;   2 num;   1 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    4 (   0 usr;   2 con; 0-2 aty)
%            Number of variables   :    1 (   0   !;   1   ?;   1   :)
% SPC      : TF0_THM_EQU_ARI

% Comments : 
%------------------------------------------------------------------------------
tff(prove,conjecture,
    ? [X: $real] : ( $floor($sum(X,0.5)) = $floor($sum(X,-0.3)) ) ).

%------------------------------------------------------------------------------
