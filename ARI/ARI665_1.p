%------------------------------------------------------------------------------
% File     : ARI665_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : a*b <= -36 | a*b >= -2 implies 5*a + 11*b = 1
% Version  : Especial.
% English  :

% Refs     : [BHS07] Beckert et al. (2007), Verification of Object-Oriented
%          : [Rue14] Ruemmer (2014), Email to Geoff Sutcliffe
% Source   : [Rue14]
% Names    : quadraticInEq11.pri [BHS07]
%          : quadraticInEq11.p [Rue14]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.1.0, 0.25 v7.0.0, 0.50 v6.4.0, 1.00 v6.3.0
% Syntax   : Number of formulae    :    4 (   1 unt;   2 typ;   0 def)
%            Number of atoms       :    3 (   1 equ)
%            Maximal formula atoms :    2 (   0 avg)
%            Number of connectives :    1 (   0   ~;   1   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number arithmetic     :   12 (   2 atm;   5 fun;   5 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    9 (   2 usr;   7 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_CSA_EQU_ARI

% Comments : KeY arithmetic regression test, http://www.key-project.org
%------------------------------------------------------------------------------
tff(a_type,type,
    a: $int ).

tff(b_type,type,
    b: $int ).

tff(conj,axiom,
    ( $lesseq(-2,$product(a,b))
    | $greatereq(-36,$product(a,b)) ) ).

tff(conj_001,conjecture,
    $sum($product(5,a),$product(11,b)) = 1 ).

%------------------------------------------------------------------------------
