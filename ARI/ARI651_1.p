%------------------------------------------------------------------------------
% File     : ARI651_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : Solve simple system of linear inequalities
% Version  : Especial.
% English  :

% Refs     : [BHS07] Beckert et al. (2007), Verification of Object-Oriented
%          : [Rue14] Ruemmer (2014), Email to Geoff Sutcliffe
% Source   : [Rue14]
% Names    : inequations0.pri [BHS07]
%          : inequations0.p [Rue14]

% Status   : Unsatisfiable
% Rating   : 0.00 v6.3.0
% Syntax   : Number of formulae    :    5 (   3 unt;   2 typ;   0 def)
%            Number of atoms       :    3 (   0 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number arithmetic     :   16 (   3 atm;   6 fun;   7 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    9 (   2 usr;   7 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_UNS_NEQ_ARI

% Comments : KeY arithmetic regression test, http://www.key-project.org
%------------------------------------------------------------------------------
tff(a_type,type,
    a: $int ).

tff(b_type,type,
    b: $int ).

tff(conj,axiom,
    $lesseq(20,$product(-1,$sum(a,$product(-1,$product(2,b))))) ).

tff(conj_001,axiom,
    $lesseq(0,a) ).

tff(conj_002,axiom,
    $lesseq(-5,$product(-1,$sum(a,b))) ).

%------------------------------------------------------------------------------
