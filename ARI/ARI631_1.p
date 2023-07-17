%------------------------------------------------------------------------------
% File     : ARI631_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : Example 3
% Version  : Especial.
% English  :

% Refs     : [ALR14] Avigad et al. (2014), A Heuristic Prover for Real Ineq
%          : [LAR14] Lewis et al. (2014), A Heuristic Prover for Real Inequ
%          : [Lew14] Lewis (2014), Email to Geoff Sutcliffe
% Source   : [Lew14]
% Names    : Example 3 [Lew14]

% Status   : Theorem
% Rating   : 0.33 v7.5.0, 0.40 v7.4.0, 0.33 v7.3.0, 0.25 v7.1.0, 0.33 v7.0.0, 0.67 v6.4.0, 1.00 v6.3.0
% Syntax   : Number of formulae    :    9 (   5 unt;   4 typ;   0 def)
%            Number of atoms       :    5 (   0 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    8 (   2 avg)
%            Number arithmetic     :   41 (   5 atm;  28 fun;   8 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    8 (   4 usr;   6 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_NEQ_ARI

% Comments :
%------------------------------------------------------------------------------
tff(u_type,type,
    u: $real ).

tff(v_type,type,
    v: $real ).

tff(w_type,type,
    w: $real ).

tff(z_type,type,
    z: $real ).

tff(hypothesis,hypothesis,
    $greater(u,0.0) ).

tff(hypothesis_01,hypothesis,
    $less(u,v) ).

tff(hypothesis_02,hypothesis,
    $greater(z,0.0) ).

tff(hypothesis_03,hypothesis,
    $less($sum(1.0,z),w) ).

tff(conclusion,conjecture,
    $less($product($product($sum($sum(u,v),z),$sum($sum(u,v),z)),$sum($sum(u,v),z)),$product($product($product($product($sum($sum($sum(u,v),w),1.0),$sum($sum($sum(u,v),w),1.0)),$sum($sum($sum(u,v),w),1.0)),$sum($sum($sum(u,v),w),1.0)),$sum($sum($sum(u,v),w),1.0))) ).

%------------------------------------------------------------------------------
