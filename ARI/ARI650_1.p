%------------------------------------------------------------------------------
% File     : ARI650_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : a*a >= 50 & a*a <= 60 are inconsistent
% Version  : Especial.
% English  :

% Refs     : [BHS07] Beckert et al. (2007), Verification of Object-Oriented
%          : [Rue14] Ruemmer (2014), Email to Geoff Sutcliffe
% Source   : [Rue14]
% Names    : simplify5.pri [BHS07]
%          : ineqs_simplify5b.p [Rue14]

% Status   : Unsatisfiable
% Rating   : 0.00 v6.4.0, 1.00 v6.3.0
% Syntax   : Number of formulae    :    3 (   2 unt;   1 typ;   0 def)
%            Number of atoms       :    2 (   0 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    6 (   2 atm;   2 fun;   2 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    4 (   1 usr;   3 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_UNS_NEQ_ARI

% Comments : KeY arithmetic regression test, http://www.key-project.org
%------------------------------------------------------------------------------
tff(a_type,type,
    a: $int ).

tff(conj,axiom,
    $greatereq(60,$product(a,a)) ).

tff(conj_001,axiom,
    $lesseq(50,$product(a,a)) ).

%------------------------------------------------------------------------------
