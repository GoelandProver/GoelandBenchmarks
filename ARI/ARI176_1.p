%--------------------------------------------------------------------------
% File     : ARI176_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Arithmetic
% Problem  : Integer: Formula equals 22
% Version  : Especial.
% English  : 

% Refs     : [PW06]  Prevosto & Waldmann (2006), SPASS+T
%          : [Wal10] Waldmann (2010), Email to Geoff Sutcliffe
% Source   : [Wal10]
% Names    : (9) [PW06]

% Status   : Theorem
% Rating   : 0.25 v7.5.0, 0.20 v7.4.0, 0.12 v7.3.0, 0.17 v7.0.0, 0.14 v6.4.0, 0.00 v6.3.0, 0.14 v6.2.0, 0.62 v6.1.0, 0.56 v6.0.0, 0.43 v5.5.0, 0.44 v5.4.0, 0.50 v5.3.0, 0.60 v5.2.0, 0.50 v5.1.0, 0.60 v5.0.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 typ;   0 def)
%            Number of atoms       :    1 (   1 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    3 (   2 avg)
%            Number arithmetic     :    8 (   0 atm;   3 fun;   3 num;   2 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    5 (   0 usr;   3 con; 0-2 aty)
%            Number of variables   :    2 (   0   !;   2   ?;   2   :)
% SPC      : TF0_THM_EQU_ARI

% Comments : 
%--------------------------------------------------------------------------
tff(co1,conjecture,
    ? [U: $int,V: $int] : ( $sum($product(3,U),$product(5,V)) = 22 ) ).

%--------------------------------------------------------------------------
