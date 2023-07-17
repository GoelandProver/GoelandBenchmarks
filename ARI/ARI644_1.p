%------------------------------------------------------------------------------
% File     : ARI644_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : Prove that a != 0 implies b / a * a <= b
% Version  : Especial.
% English  :

% Refs     : [BHS07] Beckert et al. (2007), Verification of Object-Oriented
%          : [Rue14] Ruemmer (2014), Email to Geoff Sutcliffe
% Source   : [Rue14]
% Names    : inequations0.pri [BHS07]
%          : division2.p [Rue14]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.3.0, 0.33 v7.1.0, 0.50 v6.4.0, 1.00 v6.3.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :    2 (   1 equ)
%            Maximal formula atoms :    2 (   0 avg)
%            Number of connectives :    2 (   1   ~;   0   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number arithmetic     :    4 (   1 atm;   2 fun;   1 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    5 (   2 usr;   3 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_CSA_EQU_ARI

% Comments : KeY arithmetic regression test, http://www.key-project.org
%------------------------------------------------------------------------------
tff(a_type,type,
    a: $int ).

tff(a_type_001,type,
    b: $int ).

tff(conj,conjecture,
    ( ( a != 0 )
   => $lesseq($quotient_e(b,$product(a,a)),b) ) ).

%------------------------------------------------------------------------------
