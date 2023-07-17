%------------------------------------------------------------------------------
% File     : ARI682_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : 0 <= a, a < b imply a+1 <= a*b + b
% Version  : Especial.
% English  :

% Refs     : [BHS07] Beckert et al. (2007), Verification of Object-Oriented
%          : [Rue14] Ruemmer (2014), Email to Geoff Sutcliffe
% Source   : [Rue14]
% Names    : quadraticInEq7.pri [BHS07]
%          : quadraticInEq7.p [Rue14]

% Status   : Theorem
% Rating   : 0.17 v7.5.0, 0.20 v7.4.0, 0.17 v7.3.0, 0.12 v7.1.0, 0.17 v7.0.0, 0.50 v6.4.0, 1.00 v6.3.0
% Syntax   : Number of formulae    :    5 (   3 unt;   2 typ;   0 def)
%            Number of atoms       :    3 (   0 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number arithmetic     :    8 (   3 atm;   3 fun;   2 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    6 (   2 usr;   4 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_NEQ_ARI

% Comments : KeY arithmetic regression test, http://www.key-project.org
%------------------------------------------------------------------------------
tff(b_type,type,
    b: $int ).

tff(a_type,type,
    a: $int ).

tff(conj,axiom,
    $less(a,b) ).

tff(conj_001,axiom,
    $lesseq(0,a) ).

tff(conj_002,conjecture,
    $lesseq($sum(a,1),$sum($product(a,b),b)) ).

%------------------------------------------------------------------------------