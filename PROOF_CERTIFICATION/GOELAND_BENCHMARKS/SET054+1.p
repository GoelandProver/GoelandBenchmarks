%--------------------------------------------------------------------------
% File     : SET054+1 : TPTP v8.1.2. Bugfixed v5.4.0.
% Domain   : Set Theory
% Problem  : Reflexivity of subclass
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Theorem
% Rating   : 0.06 v7.4.0, 0.07 v7.3.0, 0.03 v7.1.0, 0.00 v7.0.0, 0.03 v6.4.0, 0.04 v6.3.0, 0.08 v6.2.0, 0.12 v6.1.0, 0.10 v6.0.0, 0.09 v5.5.0, 0.04 v5.4.0
% Syntax   : Number of formulae    :   44 (  17 unt;   0 def)
%            Number of atoms       :  101 (  19 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   62 (   5   ~;   3   |;  26   &)
%                                         (  19 <=>;   9  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   0 prp; 1-2 aty)
%            Number of functors    :   26 (  26 usr;   5 con; 0-3 aty)
%            Number of variables   :   87 (  82   !;   5   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
% Bugfixed : v5.4.0 - Bugfixes to SET005+0 axiom file.
%--------------------------------------------------------------------------
%----Include set theory axioms
include('Axioms/SET005+0.ax').
%--------------------------------------------------------------------------
%----PO1: Reflexivity
fof(reflexivity_of_subclass,conjecture,
    ! [X] : subclass(X,X) ).

%--------------------------------------------------------------------------
