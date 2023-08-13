%------------------------------------------------------------------------------
% File     : SET792+4 : TPTP v8.1.2. Released v3.2.0.
% Domain   : Set Theory (Order relations)
% Problem  : The least element, if it existes, is minimal
% Version  : [Pas05] axioms.
% English  :

% Refs     : [Pas05] Pastre (2005), Email to G. Sutcliffe
% Source   : [Pas05]
% Names    :

% Status   : Theorem
% Rating   : 0.06 v8.1.0, 0.03 v7.2.0, 0.00 v7.0.0, 0.03 v6.4.0, 0.08 v6.2.0, 0.04 v6.1.0, 0.07 v6.0.0, 0.09 v5.5.0, 0.04 v5.3.0, 0.07 v5.2.0, 0.05 v5.0.0, 0.00 v3.4.0, 0.08 v3.3.0, 0.11 v3.2.0
% Syntax   : Number of formulae    :   11 (   0 unt;   0 def)
%            Number of atoms       :   59 (   3 equ)
%            Maximal formula atoms :   14 (   5 avg)
%            Number of connectives :   48 (   0   ~;   1   |;  22   &)
%                                         (  10 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   9 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   13 (  12 usr;   0 prp; 2-4 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   49 (  49   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Include order relation axioms
include('Axioms/SET006+3.ax').
%------------------------------------------------------------------------------
fof(thIV4,conjecture,
    ! [R,E,M] :
      ( ( order(R,E)
        & least(M,R,E) )
     => min(M,R,E) ) ).

%------------------------------------------------------------------------------