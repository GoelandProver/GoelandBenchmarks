%------------------------------------------------------------------------------
% File     : ARI619_2 : TPTP v8.1.2. Released v5.1.0.
% Domain   : Arithmetic
% Problem  : 5 is not a power of 2
% Version  : Especial.
% English  :

% Refs     : [Wal10] Waldmann (2010), Email to Geoff Sutcliffe
% Source   : [Wal10]
% Names    :

% Status   : Theorem
% Rating   : 0.25 v8.1.0, 0.38 v7.5.0, 0.40 v7.4.0, 0.50 v7.3.0, 0.67 v7.0.0, 0.29 v6.4.0, 0.00 v6.3.0, 0.29 v6.2.0, 0.62 v6.1.0, 0.78 v6.0.0, 0.71 v5.5.0, 0.78 v5.4.0, 0.62 v5.3.0, 0.80 v5.2.0, 0.67 v5.1.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :    6 (   2 equ)
%            Maximal formula atoms :    6 (   3 avg)
%            Number of connectives :    6 (   1   ~;   1   |;   2   &)
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

% Comments : 
%------------------------------------------------------------------------------
tff(pow2_type,type,
    pow2: $rat > $o ).

tff(not_pow_of_2_5,conjecture,
    ( ! [X: $rat] :
        ( pow2(X)
      <=> ( ( X = 1/1 )
          | ( $lesseq(2/1,X)
            & ? [Y: $rat] :
                ( ( $product(2/1,Y) = X )
                & pow2(Y) ) ) ) )
   => ~ pow2(5/1) ) ).

%------------------------------------------------------------------------------
