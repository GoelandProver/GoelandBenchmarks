%------------------------------------------------------------------------------
% File     : CSR164+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Common Sense Reasoning
% Problem  : Antonym pattern 20355
% Version  : Especial.
% English  :

% Refs     : [ALR12] Alvez et al. (2012), Adimen-SUMO: Reengineering an Ont
%          : [AGR18] Alvez et al. (2018), Cross-checking WordNet and SUMO U
%          : [Alv18] Alvez, J. (2018), Email to Geoff Sutcliffe
% Source   : [Alv18]
% Names    : antonymPattern20355 [Alv18]

% Status   : CounterSatisfiable
% Rating   : 1.00 v7.3.0
% Syntax   : Number of formulae    : 7433 (4642 unt;   0 def)
%            Number of atoms       : 16527 ( 373 equ)
%            Maximal formula atoms :   50 (   2 avg)
%            Number of connectives : 9470 ( 376   ~; 270   |;5285   &)
%                                         ( 709 <=>;2830  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   30 (   3 avg)
%            Maximal term depth    :    5 (   1 avg)
%            Number of predicates  :  607 ( 606 usr;   0 prp; 1-7 aty)
%            Number of functors    : 3311 (3311 usr;3238 con; 0-4 aty)
%            Number of variables   : 6727 (5554   !;1173   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : Work done by Javier Alvez, Paqui Lucio and German Rigau, of
%            IXA & LoRea Groups, University of the Basque Country UPV/EHU.
%------------------------------------------------------------------------------
include('Axioms/CSR006+0.ax').
%------------------------------------------------------------------------------
fof(antonymPattern20355,conjecture,
    ? [X] :
      ( p__d__instance(X,c__Speaking)
      & ! [Y] :
          ( p__d__instance(Y,c__Writing)
         => X != Y ) ) ).

%------------------------------------------------------------------------------
