%------------------------------------------------------------------------------
% File     : ARI590_1 : TPTP v8.1.2. Released v5.1.0.
% Domain   : Arithmetic
% Problem  : There is a positive number different from Y
% Version  : Especial.
% English  :

% Refs     : [Wal10] Waldmann (2010), Email to Geoff Sutcliffe
% Source   : [Wal10]
% Names    :

% Status   : Theorem
% Rating   : 0.12 v7.5.0, 0.20 v7.4.0, 0.12 v7.3.0, 0.17 v7.0.0, 0.00 v6.3.0, 0.14 v6.2.0, 0.50 v6.1.0, 0.44 v6.0.0, 0.43 v5.5.0, 0.33 v5.4.0, 0.50 v5.3.0, 0.60 v5.2.0, 0.50 v5.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 typ;   0 def)
%            Number of atoms       :    2 (   1 equ)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :    2 (   1   ~;   0   |;   1   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number arithmetic     :    4 (   1 atm;   0 fun;   1 num;   2 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   0 usr;   1 con; 0-0 aty)
%            Number of variables   :    2 (   1   !;   1   ?;   2   :)
% SPC      : TF0_THM_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
tff(exists_pos_X_noteq_Y,conjecture,
    ! [Y: $int] :
    ? [X: $int] :
      ( $less(0,X)
      & ( Y != X ) ) ).

%------------------------------------------------------------------------------
