%------------------------------------------------------------------------------
% File     : ARI630_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : Example 2
% Version  : Especial.
% English  :

% Refs     : [ALR14] Avigad et al. (2014), A Heuristic Prover for Real Ineq
%          : [LAR14] Lewis et al. (2014), A Heuristic Prover for Real Inequ
%          : [Lew14] Lewis (2014), Email to Geoff Sutcliffe
% Source   : [Lew14]
% Names    : Example 2 [Lew14]

% Status   : Theorem
% Rating   : 0.33 v7.5.0, 0.40 v7.4.0, 0.50 v7.1.0, 0.67 v6.4.0, 1.00 v6.3.0
% Syntax   : Number of formulae    :    4 (   3 unt;   1 typ;   0 def)
%            Number of atoms       :    3 (   0 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number arithmetic     :   18 (   3 atm;   7 fun;   8 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    7 (   1 usr;   4 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_NEQ_ARI

% Comments :
%------------------------------------------------------------------------------
tff(x_type,type,
    x: $real ).

tff(hypothesis_00,hypothesis,
    $greater(x,0.0) ).

tff(hypothesis_01,hypothesis,
    $less(x,1.0) ).

tff(conclusion,conjecture,
    $greater($quotient(1.0,$sum($product(-1.0,x),1.0)),$quotient(1.0,$sum($product(-1.0,$product(x,x)),1.0))) ).

%------------------------------------------------------------------------------
