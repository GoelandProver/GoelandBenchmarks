%------------------------------------------------------------------------------
% File     : SET076+1 : TPTP v8.1.2. Bugfixed v5.4.0.
% Domain   : Set Theory
% Problem  : If both members of a pair belong to a set, the pair is a subset
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.33 v8.1.0, 0.31 v7.5.0, 0.34 v7.4.0, 0.30 v7.3.0, 0.28 v7.2.0, 0.24 v7.1.0, 0.30 v7.0.0, 0.40 v6.4.0, 0.42 v6.3.0, 0.38 v6.2.0, 0.40 v6.1.0, 0.50 v6.0.0, 0.39 v5.5.0, 0.44 v5.4.0
% Syntax   : Number of formulae    :   44 (  16 unt;   0 def)
%            Number of atoms       :  103 (  19 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   64 (   5   ~;   3   |;  27   &)
%                                         (  19 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   0 prp; 1-2 aty)
%            Number of functors    :   26 (  26 usr;   5 con; 0-3 aty)
%            Number of variables   :   89 (  84   !;   5   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
% Bugfixed : v5.4.0 - Bugfixes to SET005+0 axiom file.
%------------------------------------------------------------------------------
%----Include set theory axioms
include('Axioms/SET005+0.ax').
%------------------------------------------------------------------------------
%----UP7: If both members of a pair belong to a set, the pair is a subset
fof(unordered_pair_is_subset,conjecture,
    ! [X,Y,Z] :
      ( ( member(X,Z)
        & member(Y,Z) )
     => subclass(unordered_pair(X,Y),Z) ) ).

%------------------------------------------------------------------------------
