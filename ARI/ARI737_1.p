%------------------------------------------------------------------------------
% File     : ARI737_1 : TPTP v8.1.2. Released v7.0.0.
% Domain   : Arithmetic
% Problem  : Integer of ceiling of negative of real
% Version  : Especial.
% English  :

% Refs     : [Pas16] Paskevich (2016), Email to Geoff Sutcliffe
% Source   : [Pas16]
% Names    : intreal-IntReal-G5.p [Pas16]

% Status   : Theorem
% Rating   : 0.25 v7.5.0, 0.30 v7.4.0, 0.25 v7.3.0, 0.33 v7.0.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 typ;   0 def)
%            Number of atoms       :    1 (   1 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    4 (   2 avg)
%            Number arithmetic     :    6 (   0 atm;   4 fun;   2 num;   0 var)
%            Number of types       :    0 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    5 (   0 usr;   2 con; 0-1 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
tff(g5,conjecture,
    $to_int($ceiling($uminus(1.5))) = $uminus(1) ).

%------------------------------------------------------------------------------
