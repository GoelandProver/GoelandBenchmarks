%------------------------------------------------------------------------------
% File     : ARI626_1 : TPTP v8.1.2. Released v6.1.0.
% Domain   : Arithmetic
% Problem  : Overflow checking on the integers
% Version  : Biased.
% English  : A simple test that should go over 2^64 (more than machine 
%            integers) and therefore detect whether the prover uses arbitrary 
%            precision arithmetic.

% Refs     : [Cru14] Cruanes (2014), Email to Geoff Sutcliffe
% Source   : [Cru14]
% Names    :

% Status   : Theorem
% Rating   : 0.25 v7.5.0, 0.30 v7.4.0, 0.38 v7.3.0, 0.33 v7.0.0, 0.43 v6.4.0, 0.33 v6.3.0, 0.43 v6.2.0, 0.38 v6.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 typ;   0 def)
%            Number of atoms       :    2 (   1 equ)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :    1 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    6 (   1 atm;   1 fun;   3 num;   1 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    3 (   0 usr;   2 con; 0-2 aty)
%            Number of variables   :    1 (   0   !;   1   ?;   1   :)
% SPC      : TF0_THM_EQU_ARI

% Comments : 
%------------------------------------------------------------------------------
tff(the,conjecture,
    ? [X: $int] :
      ( ( X = $sum(18446744073709551616,18446744073709551616) )
      & $greater(X,0) ) ).

%------------------------------------------------------------------------------
