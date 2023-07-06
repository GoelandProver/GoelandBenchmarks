%------------------------------------------------------------------------------
% File     : SET995+1 : TPTP v7.4.0. Released v3.2.0.
% Domain   : Set theory
% Problem  : Functions and their basic properties, theorem 17
% Version  : [Urb06] axioms : Especial.
% English  :

% Refs     : [Byl90] Bylinski (1990), Functions and Their Basic Properties
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : funct_1__t17_funct_1 [Urb06]

% Status   : Theorem
% Rating   : 0.41 v7.4.0, 0.33 v7.3.0, 0.41 v7.2.0, 0.38 v7.1.0, 0.35 v7.0.0, 0.43 v6.4.0, 0.46 v6.3.0, 0.42 v6.2.0, 0.48 v6.1.0, 0.67 v6.0.0, 0.52 v5.5.0, 0.67 v5.4.0, 0.71 v5.3.0, 0.74 v5.2.0, 0.60 v5.1.0, 0.67 v5.0.0, 0.71 v4.1.0, 0.65 v4.0.0, 0.67 v3.7.0, 0.55 v3.5.0, 0.53 v3.4.0, 0.58 v3.3.0, 0.57 v3.2.0
% Syntax   : Number of formulae    :   34 (   7 unit)
%            Number of atoms       :   88 (  13 equality)
%            Maximal formula depth :    9 (   4 average)
%            Number of connectives :   69 (  15 ~  ;   1  |;  28  &)
%                                         (   5 <=>;  20 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    8 (   0 propositional; 1-2 arity)
%            Number of functors    :    6 (   1 constant; 0-2 arity)
%            Number of variables   :   54 (   1 singleton;  44 !;  10 ?)
%            Maximal term depth    :    2 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Translated by MPTP 0.2 from the original problem in the Mizar
%            library, www.mizar.org
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(cc1_funct_1,axiom,(
    ! [A] :
      ( empty(A)
     => function(A) ) )).

fof(cc1_relat_1,axiom,(
    ! [A] :
      ( empty(A)
     => relation(A) ) )).

fof(d1_tarski,axiom,(
    ! [A,B] :
      ( B = singleton(A)
    <=> ! [C] :
          ( in(C,B)
        <=> C = A ) ) )).

fof(d5_funct_1,axiom,(
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ! [B] :
          ( B = relation_rng(A)
        <=> ! [C] :
              ( in(C,B)
            <=> ? [D] :
                  ( in(D,relation_dom(A))
                  & C = apply(A,D) ) ) ) ) )).

fof(existence_m1_subset_1,axiom,(
    ! [A] :
    ? [B] : element(B,A) )).

fof(fc12_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set)
    & relation_empty_yielding(empty_set) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ empty(powerset(A)) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(fc2_subset_1,axiom,(
    ! [A] : ~ empty(singleton(A)) )).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) )).

fof(fc5_relat_1,axiom,(
    ! [A] :
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_dom(A)) ) )).

fof(fc6_relat_1,axiom,(
    ! [A] :
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_rng(A)) ) )).

fof(fc7_relat_1,axiom,(
    ! [A] :
      ( empty(A)
     => ( empty(relation_dom(A))
        & relation(relation_dom(A)) ) ) )).

fof(fc8_relat_1,axiom,(
    ! [A] :
      ( empty(A)
     => ( empty(relation_rng(A))
        & relation(relation_rng(A)) ) ) )).

fof(rc1_funct_1,axiom,(
    ? [A] :
      ( relation(A)
      & function(A) ) )).

fof(rc1_relat_1,axiom,(
    ? [A] :
      ( empty(A)
      & relation(A) ) )).

fof(rc1_subset_1,axiom,(
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B) ) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_relat_1,axiom,(
    ? [A] :
      ( ~ empty(A)
      & relation(A) ) )).

fof(rc2_subset_1,axiom,(
    ! [A] :
    ? [B] :
      ( element(B,powerset(A))
      & empty(B) ) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(rc3_relat_1,axiom,(
    ? [A] :
      ( relation(A)
      & relation_empty_yielding(A) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t17_funct_1,conjecture,(
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ! [C] :
          ( ( relation(C)
            & function(C) )
         => ( ( relation_dom(B) = relation_dom(C)
              & relation_rng(B) = singleton(A)
              & relation_rng(C) = singleton(A) )
           => B = C ) ) ) )).

fof(t1_subset,axiom,(
    ! [A,B] :
      ( in(A,B)
     => element(A,B) ) )).

fof(t2_subset,axiom,(
    ! [A,B] :
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

fof(t3_subset,axiom,(
    ! [A,B] :
      ( element(A,powerset(B))
    <=> subset(A,B) ) )).

fof(t4_subset,axiom,(
    ! [A,B,C] :
      ( ( in(A,B)
        & element(B,powerset(C)) )
     => element(A,C) ) )).

fof(t5_subset,axiom,(
    ! [A,B,C] :
      ~ ( in(A,B)
        & element(B,powerset(C))
        & empty(C) ) )).

fof(t6_boole,axiom,(
    ! [A] :
      ( empty(A)
     => A = empty_set ) )).

fof(t7_boole,axiom,(
    ! [A,B] :
      ~ ( in(A,B)
        & empty(B) ) )).

fof(t8_boole,axiom,(
    ! [A,B] :
      ~ ( empty(A)
        & A != B
        & empty(B) ) )).

fof(t9_funct_1,axiom,(
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ! [B] :
          ( ( relation(B)
            & function(B) )
         => ( ( relation_dom(A) = relation_dom(B)
              & ! [C] :
                  ( in(C,relation_dom(A))
                 => apply(A,C) = apply(B,C) ) )
           => A = B ) ) ) )).
%------------------------------------------------------------------------------