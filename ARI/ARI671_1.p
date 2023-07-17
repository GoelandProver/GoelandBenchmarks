%------------------------------------------------------------------------------
% File     : ARI671_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : a*a = 2 is unsatisfiable
% Version  : Especial.
% English  :

% Refs     : [BHS07] Beckert et al. (2007), Verification of Object-Oriented
%          : [Rue14] Ruemmer (2014), Email to Geoff Sutcliffe
% Source   : [Rue14]
% Names    : quadraticInEq.pri [BHS07]
%          : quadraticInEq1c.p [Rue14]

% Status   : Unsatisfiable
% Rating   : 0.25 v8.1.0, 0.33 v7.3.0, 0.25 v7.1.0, 0.33 v7.0.0, 0.00 v6.4.0, 1.00 v6.3.0
% Syntax   : Number of formulae    :    2 (   1 unt;   1 typ;   0 def)
%            Number of atoms       :    1 (   1 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    2 (   0 atm;   1 fun;   1 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    3 (   1 usr;   2 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_UNS_EQU_ARI

% Comments : KeY arithmetic regression test, http://www.key-project.org
%------------------------------------------------------------------------------
tff(a_type,type,
    a: $int ).

tff(conj,axiom,
    $product(a,a) = 2 ).

%------------------------------------------------------------------------------