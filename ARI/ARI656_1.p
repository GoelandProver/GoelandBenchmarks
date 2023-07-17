%------------------------------------------------------------------------------
% File     : ARI656_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : a >= 0, b >= c imply a*b >= a*c
% Version  : Especial.
% English  :

% Refs     : [BHS07] Beckert et al. (2007), Verification of Object-Oriented
%          : [Rue14] Ruemmer (2014), Email to Geoff Sutcliffe
% Source   : [Rue14]
% Names    : nonLinInEqExample0.pri [BHS07]
%          : nonLinInEqExample0.p [Rue14]

% Status   : Theorem
% Rating   : 0.33 v7.5.0, 0.40 v7.4.0, 0.33 v7.3.0, 0.25 v7.1.0, 0.33 v7.0.0, 0.67 v6.4.0, 1.00 v6.3.0
% Syntax   : Number of formulae    :    6 (   3 unt;   3 typ;   0 def)
%            Number of atoms       :    3 (   0 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    6 (   3 atm;   2 fun;   1 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    5 (   3 usr;   4 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_NEQ_ARI

% Comments : KeY arithmetic regression test, http://www.key-project.org
%------------------------------------------------------------------------------
tff(b_type,type,
    b: $int ).

tff(c_type,type,
    c: $int ).

tff(a_type,type,
    a: $int ).

tff(conj,axiom,
    $lesseq(c,b) ).

tff(conj_001,axiom,
    $lesseq(0,a) ).

tff(conj_002,conjecture,
    $lesseq($product(a,c),$product(a,b)) ).

%------------------------------------------------------------------------------
