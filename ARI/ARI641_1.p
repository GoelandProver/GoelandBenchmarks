%------------------------------------------------------------------------------
% File     : ARI641_1 : TPTP v8.1.2. Released v6.3.0.
% Domain   : Arithmetic
% Problem  : Example 22
% Version  : Especial.
% English  :

% Refs     : [LAR14] Lewis et al. (2014), A Heuristic Prover for Real Inequ
%          : [Lew14] Lewis (2014), Email to Geoff Sutcliffe
% Source   : [Lew14]
% Names    : Example 22 [Lew14]

% Status   : Theorem
% Rating   : 0.67 v7.5.0, 0.60 v7.4.0, 0.83 v7.3.0, 0.88 v7.1.0, 0.83 v7.0.0, 1.00 v6.3.0
% Syntax   : Number of formulae    :    8 (   4 unt;   4 typ;   0 def)
%            Number of atoms       :    4 (   0 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number arithmetic     :   23 (   4 atm;  13 fun;   6 num;   0 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :   10 (   4 usr;   6 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TF0_THM_NEQ_ARI

% Comments :
%------------------------------------------------------------------------------
%----Should be known property Axiom: Forall([x], ceil(x) >= x)
tff(m_type,type,
    m: $real ).

tff(x_type,type,
    x: $real ).

tff(a_type,type,
    a: $real ).

tff(b_type,type,
    b: $real ).

tff(hypothesis,hypothesis,
    $less(a,b) ).

tff(hypothesis_01,hypothesis,
    $greater(x,a) ).

tff(hypothesis_02,hypothesis,
    $greatereq(m,$ceiling($product($quotient(1.0,$sum($product(-1.0,a),x)),$sum($product(-1.0,a),b)))) ).

tff(conclusion,conjecture,
    $less($sum(a,$product($quotient(1.0,$sum(1.0,m)),$sum($product(-1.0,a),b))),x) ).

%------------------------------------------------------------------------------
