%------------------------------------------------------------------------------
% File     : ARI688_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : Verify gcd computation
% Version  : Especial.
% English  :

% Refs     : [BHS07] Beckert et al. (2007), Verification of Object-Oriented
%          : [Rue14] Ruemmer (2014), Email to Geoff Sutcliffe
% Source   : [Rue14]
% Names    : simplify12.pri [BHS07]
%          : poly_simplify12.p [Rue14]

% Status   : Theorem
% Rating   : 0.12 v7.5.0, 0.20 v7.4.0, 0.00 v6.3.0
% Syntax   : Number of formulae    :    6 (   3 unt;   3 typ;   0 def)
%            Number of atoms       :    3 (   3 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number arithmetic     :   15 (   0 atm;   8 fun;   7 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :   13 (   3 usr;  10 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_EQU_ARI

% Comments : KeY arithmetic regression test, http://www.key-project.org
%------------------------------------------------------------------------------
tff(x_type,type,
    x: $int ).

tff(a_type,type,
    a: $int ).

tff(b_type,type,
    b: $int ).

tff(eq1,axiom,
    $product(98164184,x) = a ).

tff(eq2,axiom,
    $product(6472,x) = b ).

tff(conj,conjecture,
    $sum($product(8,x),$product(-1,$difference($product(4353078,b),$product(287,a)))) = 0 ).

%------------------------------------------------------------------------------
