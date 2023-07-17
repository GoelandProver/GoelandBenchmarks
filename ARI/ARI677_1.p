%------------------------------------------------------------------------------
% File     : ARI677_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : Prove that a >= 0 and a*a*a <= 0 imply a*a*a*a = 0
% Version  : Especial.
% English  :

% Refs     : [BHS07] Beckert et al. (2007), Verification of Object-Oriented
%          : [Rue14] Ruemmer (2014), Email to Geoff Sutcliffe
% Source   : [Rue14]
% Names    : quadraticInEq2.pri [BHS07]
%          : quadraticInEq2.p [Rue14]

% Status   : Theorem
% Rating   : 0.25 v7.5.0, 0.30 v7.4.0, 0.25 v7.3.0, 0.17 v7.0.0, 0.57 v6.4.0, 1.00 v6.3.0
% Syntax   : Number of formulae    :    4 (   3 unt;   1 typ;   0 def)
%            Number of atoms       :    3 (   1 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    4 (   2 avg)
%            Number arithmetic     :   10 (   2 atm;   5 fun;   3 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    3 (   1 usr;   2 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_EQU_ARI

% Comments : KeY arithmetic regression test, http://www.key-project.org
%------------------------------------------------------------------------------
tff(a_type,type,
    a: $int ).

tff(conj,axiom,
    $greatereq(0,$product($product(a,a),a)) ).

tff(conj_001,axiom,
    $lesseq(0,a) ).

tff(conj_002,conjecture,
    $product($product($product(a,a),a),a) = 0 ).

%------------------------------------------------------------------------------
