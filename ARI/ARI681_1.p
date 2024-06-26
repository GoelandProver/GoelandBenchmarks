%------------------------------------------------------------------------------
% File     : ARI681_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : 0 < a * b, 0 < c * d, 0 < a * c imply 0 < b * d
% Version  : Especial.
% English  :

% Refs     : [BHS07] Beckert et al. (2007), Verification of Object-Oriented
%          : [Rue14] Ruemmer (2014), Email to Geoff Sutcliffe
% Source   : [Rue14]
% Names    : quadraticInEq6.pri [BHS07]
%          : quadraticInEq6.p [Rue14]

% Status   : Theorem
% Rating   : 0.17 v7.5.0, 0.20 v7.4.0, 0.17 v7.3.0, 0.12 v7.1.0, 0.17 v7.0.0, 0.50 v6.4.0, 1.00 v6.3.0
% Syntax   : Number of formulae    :    8 (   4 unt;   4 typ;   0 def)
%            Number of atoms       :    4 (   0 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :   12 (   4 atm;   4 fun;   4 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    6 (   4 usr;   5 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_NEQ_ARI

% Comments : KeY arithmetic regression test, http://www.key-project.org
%------------------------------------------------------------------------------
tff(a_type,type,
    a: $int ).

tff(c_type,type,
    c: $int ).

tff(d_type,type,
    d: $int ).

tff(b_type,type,
    b: $int ).

tff(conj,axiom,
    $less(0,$product(a,c)) ).

tff(conj_001,axiom,
    $less(0,$product(c,d)) ).

tff(conj_002,axiom,
    $less(0,$product(a,b)) ).

tff(conj_003,conjecture,
    $less(0,$product(b,d)) ).

%------------------------------------------------------------------------------
