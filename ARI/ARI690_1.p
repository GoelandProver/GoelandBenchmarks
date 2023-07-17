%------------------------------------------------------------------------------
% File     : ARI690_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : Solve simple system of linear equations
% Version  : Especial.
% English  :

% Refs     : [BHS07] Beckert et al. (2007), Verification of Object-Oriented
%          : [Rue14] Ruemmer (2014), Email to Geoff Sutcliffe
% Source   : [Rue14]
% Names    : simplify15.pri [BHS07]
%          : poly_simplify15.p [Rue14]

% Status   : Theorem
% Rating   : 0.12 v7.5.0, 0.20 v7.4.0, 0.00 v6.3.0
% Syntax   : Number of formulae    :    6 (   3 unt;   3 typ;   0 def)
%            Number of atoms       :    3 (   3 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    6 (   0 atm;   3 fun;   3 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    7 (   3 usr;   5 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_EQU_ARI

% Comments : KeY arithmetic regression test, http://www.key-project.org
%------------------------------------------------------------------------------
tff(c_type,type,
    c: $int ).

tff(d_type,type,
    d: $int ).

tff(a_type,type,
    a: $int ).

tff(eq1,axiom,
    $product(2,d) = a ).

tff(eq2,axiom,
    $difference(c,d) = 0 ).

tff(conj,conjecture,
    a = $product(2,c) ).

%------------------------------------------------------------------------------
