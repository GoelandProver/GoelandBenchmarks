%------------------------------------------------------------------------------
% File     : ARI636_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : Example 10
% Version  : Especial.
% English  :

% Refs     : [ALR14] Avigad et al. (2014), A Heuristic Prover for Real Ineq
%          : [LAR14] Lewis et al. (2014), A Heuristic Prover for Real Inequ
%          : [Lew14] Lewis (2014), Email to Geoff Sutcliffe
% Source   : [Lew14]
% Names    : Example 10 [Lew14]

% Status   : Theorem
% Rating   : 0.50 v7.5.0, 0.40 v7.4.0, 0.50 v7.3.0, 0.62 v7.1.0, 0.50 v7.0.0, 1.00 v6.3.0
% Syntax   : Number of formulae    :   10 (   4 unt;   5 typ;   0 def)
%            Number of atoms       :    6 (   0 equ)
%            Maximal formula atoms :    2 (   0 avg)
%            Number of connectives :    1 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   2 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number arithmetic     :   12 (   6 atm;   3 fun;   1 num;   2 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    8 (   5 usr;   5 con; 0-2 aty)
%            Number of variables   :    2 (   2   !;   0   ?;   2   :)
% SPC      : TF0_THM_NEQ_ARI

% Comments :
%------------------------------------------------------------------------------
tff(u_type,type,
    u: $real ).

tff(v_type,type,
    v: $real ).

tff(x_type,type,
    x: $real ).

tff(y_type,type,
    y: $real ).

tff(f_type,type,
    f: $real > $real ).

tff(f_non_decreasing,axiom,
    ! [X: $real,Y: $real] :
      ( $greatereq(X,Y)
     => $greatereq(f(X),f(Y)) ) ).

tff(hypothesis,hypothesis,
    $less(u,v) ).

tff(hypothesis_01,hypothesis,
    $greater(v,1.0) ).

tff(hypothesis_02,hypothesis,
    $lesseq(x,y) ).

tff(conclusion,conjecture,
    $less($sum(f(x),u),$sum($product(v,v),f(y))) ).

%------------------------------------------------------------------------------
