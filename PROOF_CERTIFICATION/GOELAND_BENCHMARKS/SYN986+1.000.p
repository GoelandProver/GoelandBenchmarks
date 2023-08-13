%------------------------------------------------------------------------------
% File     : SYN986+1.000 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Syntactic
% Problem  : Orevkov formula - size 0
% Version  : [TS00] axioms : Especial.
% English  : hyp(2,k,1) is defined. Each Ck has a non-normal natural deduction
%            of size linear in k, and each normal deduction of Ck has at least
%            hyp(2,k,1)=2_k nodes.

% Refs     : [TS00]  Troelstra & Schwichtenberg (2000), Basic Proof Theory
%          : [Rat08] Raths (2008), Email to G. Sutcliffe
% Source   : [Rat08]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.04 v5.2.0, 0.07 v5.1.0, 0.14 v5.0.0, 0.10 v4.1.0, 0.11 v4.0.1, 0.47 v4.0.0
% Syntax   : Number of formulae    :    3 (   2 unt;   0 def)
%            Number of atoms       :    5 (   0 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    2 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 3-3 aty)
%            Number of functors    :    2 (   2 usr;   1 con; 0-1 aty)
%            Number of variables   :    6 (   5   !;   1   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments : Inspiration by Wolfgang Bibel, Helmut Schwichtenberg.
%          : The complexity of proof seach is hyper-exponential with the size
%            of the formulae: 2^0=1, 2^1=2, 2^2=4, 2^4=16, 2^16=65536,
%            2^65536 = mmmh... ?
%------------------------------------------------------------------------------
%----Include Orevkov formula
include('Axioms/SYN002+0.ax').
%------------------------------------------------------------------------------
fof(ck,conjecture,
    ? [Z0] : r(zero,zero,Z0) ).

%------------------------------------------------------------------------------
