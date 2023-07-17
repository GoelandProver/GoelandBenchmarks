%------------------------------------------------------------------------------
% File     : ARI712_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : Expand and rewrite polynomial
% Version  : Especial.
% English  :

% Refs     : [BHS07] Beckert et al. (2007), Verification of Object-Oriented
%          : [Rue14] Ruemmer (2014), Email to Geoff Sutcliffe
% Source   : [Rue14]
% Names    : simplify9.pri [BHS07]
%          : poly_simplify9.p [Rue14]

% Status   : Theorem
% Rating   : 0.25 v7.5.0, 0.30 v7.4.0, 0.38 v7.3.0, 0.33 v7.0.0, 0.43 v6.4.0, 0.33 v6.3.0
% Syntax   : Number of formulae    :    6 (   2 unt;   4 typ;   0 def)
%            Number of atoms       :    2 (   2 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :   19 (   3 avg)
%            Number arithmetic     :   92 (   0 atm;  76 fun;  16 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :   10 (   4 usr;   8 con; 0-2 aty)
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

tff(d_type,type,
    d: $int ).

tff(eq,axiom,
    $sum($sum($sum($product(a,a),$product($sum($product($product(a,b),c),$product($product(b,d),a)),$sum($sum($product($product(c,c),a),$product($product(d,d),b)),1))),b),$product(-1,$product($sum($sum($sum(a,b),c),d),$sum(2,c)))) = 0 ).

tff(conj,conjecture,
    $sum($product(1,$product($product($product($product($product(d,d),d),b),b),a)),$product(-1,$sum($sum($sum($sum($sum($sum($sum($sum($sum($sum($sum($sum($sum($product(2,a),$product(-1,$product(a,a))),b),$product(2,c)),$product(-1,$product($product($product($product($product(d,d),c),b),b),a))),$product(c,a)),$product(c,b)),$product(-1,$product($product(c,b),a))),$product(-1,$product($product($product($product($product(c,c),c),b),a),a))),$product(2,d)),$product(d,c)),$product(-1,$product($product(d,b),a))),$product(c,c)),$product(-1,$product($product($product($product($product(d,c),c),b),a),a))))) = 0 ).

%------------------------------------------------------------------------------
