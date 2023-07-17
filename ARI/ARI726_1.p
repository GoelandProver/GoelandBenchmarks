%------------------------------------------------------------------------------
% File     : ARI726_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : There is an integer X such that 0.4*X > 1 and 0.3*X < 1
% Version  : Especial.
% English  :

% Refs     : [Wal14] Waldmann (2014), Email to Geoff Sutcliffe
% Source   : [Wal14]
% Names    : 

% Status   : Theorem
% Rating   : 0.17 v7.5.0, 0.20 v7.4.0, 0.33 v7.3.0, 0.50 v7.1.0, 0.33 v7.0.0, 0.50 v6.4.0, 0.33 v6.3.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 typ;   0 def)
%            Number of atoms       :    3 (   0 equ)
%            Maximal formula atoms :    3 (   3 avg)
%            Number of connectives :    2 (   0   ~;   0   |;   2   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :   10 (   3 atm;   2 fun;   4 num;   1 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   0 usr;   0 prp; 1-2 aty)
%            Number of functors    :    4 (   0 usr;   3 con; 0-2 aty)
%            Number of variables   :    1 (   0   !;   1   ?;   1   :)
% SPC      : TF0_THM_NEQ_ARI

% Comments : 
%------------------------------------------------------------------------------
tff(prove,conjecture,
    ? [X: $real] :
      ( $is_int(X)
      & $greater($product(0.4,X),1.0)
      & $less($product(0.3,X),1.0) ) ).

%------------------------------------------------------------------------------
