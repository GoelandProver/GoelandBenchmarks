%------------------------------------------------------------------------------
% File     : ARI620_1 : TPTP v8.1.2. Released v5.1.0.
% Domain   : Arithmetic
% Problem  : 8 is a power of 2
% Version  : Especial.
% English  :

% Refs     : [Wal10] Waldmann (2010), Email to Geoff Sutcliffe
% Source   : [Wal10]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v6.2.0, 0.38 v6.1.0, 0.56 v6.0.0, 0.57 v5.5.0, 0.67 v5.4.0, 0.62 v5.3.0, 0.70 v5.2.0, 0.67 v5.1.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :    6 (   2 equ)
%            Maximal formula atoms :    6 (   3 avg)
%            Number of connectives :    5 (   0   ~;   1   |;   2   &)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   8 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    8 (   1 atm;   1 fun;   4 num;   2 var)
%            Number of types       :    2 (   0 usr;   1 ari)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    4 (   0 usr;   3 con; 0-2 aty)
%            Number of variables   :    2 (   1   !;   1   ?;   2   :)
% SPC      : TF0_THM_EQU_ARI

% Comments : Also a theorem for $rat and $real
%------------------------------------------------------------------------------
tff(pow2_type,type,
    pow2: $int > $o ).

tff(pow_of_2_8,conjecture,
    ( ! [X: $int] :
        ( pow2(X)
      <=> ( ( X = 1 )
          | ( $lesseq(2,X)
            & ? [Y: $int] :
                ( ( $product(2,Y) = X )
                & pow2(Y) ) ) ) )
   => pow2(8) ) ).

%------------------------------------------------------------------------------