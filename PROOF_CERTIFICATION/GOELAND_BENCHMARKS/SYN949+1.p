%--------------------------------------------------------------------------
% File     : SYN949+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Syntactic
% Problem  : Syntactic from Shults
% Version  : Especial.
% English  :

% Refs     : [Shu04] Shults (2004), Email to G. Sutcliffe
% Source   : [Shu04]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.09 v5.2.0, 0.00 v3.2.0, 0.11 v3.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    9 (   0 equ)
%            Maximal formula atoms :    9 (   9 avg)
%            Number of connectives :    8 (   0   ~;   0   |;   5   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (  12 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    4 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    8 (   6   !;   2   ?)
% SPC      : FOF_THM_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(prove_this,conjecture,
    ! [A,B,C] :
      ( ( s(A)
        & s(B)
        & r(B,C)
        & ! [X] :
            ( s(X)
           => p(X) )
        & ! [X,Y] :
            ( r(X,Y)
           => q(X,Y) ) )
     => ? [X,Y] :
          ( p(X)
          & q(X,Y) ) ) ).

%--------------------------------------------------------------------------