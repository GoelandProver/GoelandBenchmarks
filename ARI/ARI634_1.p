%------------------------------------------------------------------------------
% File     : ARI634_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : Example 8
% Version  : Especial.
% English  :

% Refs     : [ALR14] Avigad et al. (2014), A Heuristic Prover for Real Ineq
%          : [LAR14] Lewis et al. (2014), A Heuristic Prover for Real Inequ
%          : [Lew14] Lewis (2014), Email to Geoff Sutcliffe
% Source   : [Lew14]
% Names    : Example 8 [Lew14]

% Status   : Theorem
% Rating   : 0.67 v7.5.0, 0.60 v7.4.0, 0.67 v7.3.0, 0.75 v7.1.0, 0.67 v7.0.0, 1.00 v6.3.0
% Syntax   : Number of formulae    :    9 (   4 unt;   5 typ;   0 def)
%            Number of atoms       :    4 (   0 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   1 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number arithmetic     :   12 (   4 atm;   4 fun;   3 num;   1 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :   10 (   5 usr;   7 con; 0-2 aty)
%            Number of variables   :    1 (   1   !;   0   ?;   1   :)
% SPC      : TF0_THM_NEQ_ARI

% Comments :
%------------------------------------------------------------------------------
tff(u_type,type,
    u: $real ).

tff(v_type,type,
    v: $real ).

tff(w_type,type,
    w: $real ).

tff(x_type,type,
    x: $real ).

tff(f_type,type,
    f: $real > $real ).

tff(f_less_equal_2,axiom,
    ! [X: $real] : $lesseq(f(X),2.0) ).

tff(hypothesis,hypothesis,
    $less(u,v) ).

tff(hypothesis_01,hypothesis,
    $greater(w,0.0) ).

tff(conclusion,conjecture,
    $less($sum(u,$product(w,$sum(-1.0,f(x)))),$sum(v,w)) ).

%------------------------------------------------------------------------------
