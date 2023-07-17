%------------------------------------------------------------------------------
% File     : ARI669_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : a * b * b * c = 0 and a = 0 | b = 0 | c = 0 are equivalent
% Version  : Especial.
% English  :

% Refs     : [BHS07] Beckert et al. (2007), Verification of Object-Oriented
%          : [Rue14] Ruemmer (2014), Email to Geoff Sutcliffe
% Source   : [Rue14]
% Names    : quadraticInEq.pri [BHS07]
%          : quadraticInEq1a.p [Rue14]

% Status   : Theorem
% Rating   : 0.25 v7.5.0, 0.30 v7.4.0, 0.25 v7.3.0, 0.17 v7.0.0, 0.57 v6.4.0, 1.00 v6.3.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :    4 (   4 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :    3 (   0   ~;   2   |;   0   &)
%                                         (   1 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number arithmetic     :    7 (   0 atm;   3 fun;   4 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    5 (   3 usr;   4 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_EQU_ARI

% Comments : KeY arithmetic regression test, http://www.key-project.org
%------------------------------------------------------------------------------
tff(a_type,type,
    a: $int ).

tff(b_type,type,
    b: $int ).

tff(c_type,type,
    c: $int ).

tff(conj,conjecture,
    ( ( $product($product($product(a,b),b),c) = 0 )
  <=> ( ( c = 0 )
      | ( b = 0 )
      | ( a = 0 ) ) ) ).

%------------------------------------------------------------------------------
