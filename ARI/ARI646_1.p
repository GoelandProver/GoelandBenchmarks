%------------------------------------------------------------------------------
% File     : ARI646_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : Simple reasoning about linear inequalities
% Version  : Especial.
% English  :

% Refs     : [BHS07] Beckert et al. (2007), Verification of Object-Oriented
%          : [Rue14] Ruemmer (2014), Email to Geoff Sutcliffe
% Source   : [Rue14]
% Names    : simplify2.pri [BHS07]
%          : ineqs_simplify2.p [Rue14]

% Status   : Theorem
% Rating   : 0.12 v7.5.0, 0.10 v7.4.0, 0.00 v6.3.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   12 (  10 equ)
%            Maximal formula atoms :   12 (   6 avg)
%            Number of connectives :   11 (   0   ~;   9   |;   1   &)
%                                         (   1 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   11 (  11 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number arithmetic     :   14 (   2 atm;   0 fun;  12 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :   12 (   1 usr;  12 con; 0-0 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_EQU_ARI

% Comments : KeY arithmetic regression test, http://www.key-project.org
%------------------------------------------------------------------------------
tff(a_type,type,
    a: $int ).

tff(conj,conjecture,
    ( ( $greater(10,a)
      & $lesseq(0,a) )
  <=> ( ( a = 9 )
      | ( a = 8 )
      | ( a = 7 )
      | ( a = 6 )
      | ( a = 5 )
      | ( a = 4 )
      | ( a = 3 )
      | ( a = 2 )
      | ( a = 1 )
      | ( a = 0 ) ) ) ).

%------------------------------------------------------------------------------
