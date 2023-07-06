%------------------------------------------------------------------------------
% File     : GEO497+1 : TPTP v8.1.0. Released v7.0.0.
% Domain   : Geometry
% Problem  : Property of a and b being on the same side of point p
% Version  : Especial.
% English  :

% Refs     : [Urb16] Urban (2016), Email to Geoff Sutcliffe
%          : [BW17]  Beeson & Wos (2017), Finding Proofs in Tarskian Geomet
% Source   : [Urb16]
% Names    : Satz6.11a.in.p [BW17]

% Status   : Theorem
% Rating   : 0.64 v8.1.0, 0.56 v7.5.0, 0.66 v7.4.0, 0.50 v7.3.0, 0.52 v7.1.0, 0.48 v7.0.0
% Syntax   : Number of formulae    :   85 (  15 unt;   0 def)
%            Number of atoms       :  339 (  46 equ)
%            Maximal formula atoms :   19 (   3 avg)
%            Number of connectives :  444 ( 190   ~; 212   |;  42   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   22 (   8 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   10 (   9 usr;   0 prp; 2-8 aty)
%            Number of functors    :   11 (  11 usr;   4 con; 0-6 aty)
%            Number of variables   :  335 ( 335   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%------------------------------------------------------------------------------
% File     : GEO011+0 : TPTP v8.1.0. Released v7.0.0.
% Domain   : Geometry
% Axioms   : Tarskian geometry
% Version  : [Urb16] axioms : Especial.
% English  :

% Refs     : [Urb16] Urban (2016), Email to Geoff Sutcliffe
%          : [BW17]  Beeson & Wos (2017), Finding Proofs in Tarskian Geomet
% Source   : [Urb16]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :    8 (   1 unt;   0 def)
%            Number of atoms       :   27 (   3 equ)
%            Maximal formula atoms :    8 (   3 avg)
%            Number of connectives :   36 (  17   ~;  15   |;   4   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   16 (   8 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    3 (   2 usr;   0 prp; 2-4 aty)
%            Number of functors    :    5 (   5 usr;   3 con; 0-5 aty)
%            Number of variables   :   30 (  30   !;   0   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(aA1,axiom,
    ! [X,Y] : s_e(X,Y,Y,X) ).

fof(aA2,axiom,
    ! [X,Y,Z,V,Z2,V2] :
      ( ~ s_e(X,Y,Z,V)
      | ~ s_e(X,Y,Z2,V2)
      | s_e(Z,V,Z2,V2) ) ).

fof(aA3,axiom,
    ! [X,Y,Z] :
      ( ~ s_e(X,Y,Z,Z)
      | X = Y ) ).

fof(aA4,axiom,
    ! [X,Y,W,V] :
      ( s_t(X,Y,ext(X,Y,W,V))
      & s_e(Y,ext(X,Y,W,V),W,V) ) ).

fof(aA5,axiom,
    ! [X,Y,X1,Y1,Z,Z1,V,V1] :
      ( ~ s_e(X,Y,X1,Y1)
      | ~ s_e(Y,Z,Y1,Z1)
      | ~ s_e(X,V,X1,V1)
      | ~ s_e(Y,V,Y1,V1)
      | ~ s_t(X,Y,Z)
      | ~ s_t(X1,Y1,Z1)
      | X = Y
      | s_e(Z,V,Z1,V1) ) ).

fof(aA6,axiom,
    ! [X,Y] :
      ( ~ s_t(X,Y,X)
      | X = Y ) ).

fof(aA7,axiom,
    ! [Xa,Xp,Xc,Xb,Xq] :
      ( ( ~ s_t(Xa,Xp,Xc)
        | ~ s_t(Xb,Xq,Xc)
        | s_t(Xp,ip(Xa,Xp,Xc,Xb,Xq),Xb) )
      & ( ~ s_t(Xa,Xp,Xc)
        | ~ s_t(Xb,Xq,Xc)
        | s_t(Xq,ip(Xa,Xp,Xc,Xb,Xq),Xa) ) ) ).

fof(aA8,axiom,
    ( ~ s_t(alpha,beta,gamma)
    & ~ s_t(beta,gamma,alpha)
    & ~ s_t(gamma,alpha,beta) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(aSatz2_1,axiom,
    ! [Xa,Xb] : s_e(Xa,Xb,Xa,Xb) ).

fof(aSatz2_2,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_e(Xa,Xb,Xc,Xd)
      | s_e(Xc,Xd,Xa,Xb) ) ).

fof(aSatz2_3,axiom,
    ! [Xa,Xb,Xc,Xd,Xe,Xf] :
      ( ~ s_e(Xa,Xb,Xc,Xd)
      | ~ s_e(Xc,Xd,Xe,Xf)
      | s_e(Xa,Xb,Xe,Xf) ) ).

fof(aSatz2_4,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_e(Xa,Xb,Xc,Xd)
      | s_e(Xb,Xa,Xc,Xd) ) ).

fof(aSatz2_5,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_e(Xa,Xb,Xc,Xd)
      | s_e(Xa,Xb,Xd,Xc) ) ).

fof(aSatz2_8,axiom,
    ! [Xa,Xb] : s_e(Xa,Xa,Xb,Xb) ).

fof(aSatz2_11,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_t(Xa1,Xb1,Xc1)
      | ~ s_e(Xa,Xb,Xa1,Xb1)
      | ~ s_e(Xb,Xc,Xb1,Xc1)
      | s_e(Xa,Xc,Xa1,Xc1) ) ).

fof(aSatz2_12,axiom,
    ! [Xq,Xa,Xd,Xb,Xc] :
      ( Xq = Xa
      | ~ s_t(Xq,Xa,Xd)
      | ~ s_e(Xa,Xd,Xb,Xc)
      | Xd = ext(Xq,Xa,Xb,Xc) ) ).

fof(aSatz2_13,axiom,
    ! [Xb,Xc,Xa] :
      ( ~ s_e(Xb,Xc,Xa,Xa)
      | Xb = Xc ) ).

fof(aSatz2_14,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_e(Xa,Xb,Xc,Xd)
      | s_e(Xb,Xa,Xd,Xc) ) ).

fof(aSatz2_15,axiom,
    ! [Xa,Xb,Xc,XA,XB,XC] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_t(XA,XB,XC)
      | ~ s_e(Xa,Xb,XB,XC)
      | ~ s_e(Xb,Xc,XA,XB)
      | s_e(Xa,Xc,XA,XC) ) ).

fof(aSatz3_1,axiom,
    ! [Xa,Xb] : s_t(Xa,Xb,Xb) ).

fof(aSatz3_2,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_t(Xa,Xb,Xc)
      | s_t(Xc,Xb,Xa) ) ).

fof(aSatz3_3,axiom,
    ! [Xa1,Xb1] : s_t(Xa1,Xa1,Xb1) ).

fof(aSatz3_4,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_t(Xb,Xa,Xc)
      | Xa = Xb ) ).

fof(aSatz3_5a,axiom,
    ! [Xa,Xb,Xd,Xc] :
      ( ~ s_t(Xa,Xb,Xd)
      | ~ s_t(Xb,Xc,Xd)
      | s_t(Xa,Xb,Xc) ) ).

fof(aSatz3_6a,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_t(Xa,Xc,Xd)
      | s_t(Xb,Xc,Xd) ) ).

fof(aSatz3_7a,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_t(Xb,Xc,Xd)
      | Xb = Xc
      | s_t(Xa,Xc,Xd) ) ).

fof(aSatz3_5b,axiom,
    ! [Xa,Xb,Xd,Xc] :
      ( ~ s_t(Xa,Xb,Xd)
      | ~ s_t(Xb,Xc,Xd)
      | s_t(Xa,Xc,Xd) ) ).

fof(aSatz3_6b,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_t(Xa,Xc,Xd)
      | s_t(Xa,Xb,Xd) ) ).

fof(aSatz3_7b,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_t(Xb,Xc,Xd)
      | Xb = Xc
      | s_t(Xa,Xb,Xd) ) ).

fof(aSatz3_13a,axiom,
    alpha != beta ).

fof(aSatz3_13b,axiom,
    beta != gamma ).

fof(aSatz3_13c,axiom,
    alpha != gamma ).

fof(aSatz3_14a,axiom,
    ! [Xa,Xb] : s_t(Xa,Xb,ext(Xa,Xb,alpha,gamma)) ).

fof(aSatz3_14b,axiom,
    ! [Xb,Xa] : Xb != ext(Xa,Xb,alpha,gamma) ).

fof(aSatz3_17,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xp] :
      ( ( ~ s_t(Xa,Xb,Xc)
        | ~ s_t(Xa1,Xb1,Xc)
        | ~ s_t(Xa,Xp,Xa1)
        | s_t(Xp,crossbar(Xa,Xb,Xc,Xa1,Xb1,Xp),Xc) )
      & ( ~ s_t(Xa,Xb,Xc)
        | ~ s_t(Xa1,Xb1,Xc)
        | ~ s_t(Xa,Xp,Xa1)
        | s_t(Xb,crossbar(Xa,Xb,Xc,Xa1,Xb1,Xp),Xb1) ) ) ).

fof(aSatz4_2,axiom,
    ! [Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1] :
      ( ~ s_ifs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
      | s_e(Xb,Xd,Xb1,Xd1) ) ).

fof(aSatz4_3,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_t(Xa1,Xb1,Xc1)
      | ~ s_e(Xa,Xc,Xa1,Xc1)
      | ~ s_e(Xb,Xc,Xb1,Xc1)
      | s_e(Xa,Xb,Xa1,Xb1) ) ).

fof(aSatz4_5,axiom,
    ! [Xa,Xb,Xc,Xa1,Xc1] :
      ( ( ~ s_t(Xa,Xb,Xc)
        | ~ s_e(Xa,Xc,Xa1,Xc1)
        | s_t(Xa1,insert(Xa,Xb,Xa1,Xc1),Xc1) )
      & ( ~ s_t(Xa,Xb,Xc)
        | ~ s_e(Xa,Xc,Xa1,Xc1)
        | s_e3(Xa,Xb,Xc,Xa1,insert(Xa,Xb,Xa1,Xc1),Xc1) ) ) ).

fof(aSatz4_6,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_e3(Xa,Xb,Xc,Xa1,Xb1,Xc1)
      | s_t(Xa1,Xb1,Xc1) ) ).

fof(aSatz4_11a,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_col(Xb,Xc,Xa) ) ).

fof(aSatz4_11b,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_col(Xc,Xa,Xb) ) ).

fof(aSatz4_11c,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_col(Xc,Xb,Xa) ) ).

fof(aSatz4_11d,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_col(Xb,Xa,Xc) ) ).

fof(aSatz4_11e,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_col(Xa,Xc,Xb) ) ).

fof(aSatz4_12,axiom,
    ! [Xa,Xb] : s_col(Xa,Xa,Xb) ).

fof(aSatz4_12b,axiom,
    ! [Xa,Xb] : s_col(Xa,Xb,Xa) ).

fof(aSatz4_13,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( ~ s_col(Xa,Xb,Xc)
      | ~ s_e3(Xa,Xb,Xc,Xa1,Xb1,Xc1)
      | s_col(Xa1,Xb1,Xc1) ) ).

fof(aSatz4_14,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1] :
      ( ~ s_col(Xa,Xb,Xc)
      | ~ s_e(Xa,Xb,Xa1,Xb1)
      | s_e3(Xa,Xb,Xc,Xa1,Xb1,insert5(Xa,Xb,Xc,Xa1,Xb1)) ) ).

fof(aSatz4_16,axiom,
    ! [Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1] :
      ( ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
      | Xa = Xb
      | s_e(Xc,Xd,Xc1,Xd1) ) ).

fof(aSatz4_17,axiom,
    ! [Xa,Xb,Xc,Xp,Xq] :
      ( Xa = Xb
      | ~ s_col(Xa,Xb,Xc)
      | ~ s_e(Xa,Xp,Xa,Xq)
      | ~ s_e(Xb,Xp,Xb,Xq)
      | s_e(Xc,Xp,Xc,Xq) ) ).

fof(aSatz4_18,axiom,
    ! [Xa,Xb,Xc,Xc1] :
      ( Xa = Xb
      | ~ s_col(Xa,Xb,Xc)
      | ~ s_e(Xa,Xc,Xa,Xc1)
      | ~ s_e(Xb,Xc,Xb,Xc1)
      | Xc = Xc1 ) ).

fof(aSatz4_19,axiom,
    ! [Xa,Xc,Xb,Xc1] :
      ( ~ s_t(Xa,Xc,Xb)
      | ~ s_e(Xa,Xc,Xa,Xc1)
      | ~ s_e(Xb,Xc,Xb,Xc1)
      | Xc = Xc1 ) ).

fof(aSatz5_1,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( Xa = Xb
      | ~ s_t(Xa,Xb,Xc)
      | ~ s_t(Xa,Xb,Xd)
      | s_t(Xa,Xc,Xd)
      | s_t(Xa,Xd,Xc) ) ).

fof(aSatz5_2,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( Xa = Xb
      | ~ s_t(Xa,Xb,Xc)
      | ~ s_t(Xa,Xb,Xd)
      | s_t(Xb,Xc,Xd)
      | s_t(Xb,Xd,Xc) ) ).

fof(aSatz5_3,axiom,
    ! [Xa,Xb,Xd,Xc] :
      ( ~ s_t(Xa,Xb,Xd)
      | ~ s_t(Xa,Xc,Xd)
      | s_t(Xa,Xb,Xc)
      | s_t(Xa,Xc,Xb) ) ).

fof(aSatz5_5a,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ( ~ le(Xa,Xb,Xc,Xd)
        | s_t(Xa,Xb,ins(Xc,Xd,Xa,Xb)) )
      & ( ~ le(Xa,Xb,Xc,Xd)
        | s_e(Xa,ins(Xc,Xd,Xa,Xb),Xc,Xd) )
      & ( ~ le(Xa,Xb,Xc,Xd)
        | ins(Xc,Xd,Xa,Xb) = ext(Xa,Xb,insert(Xa,Xb,Xc,Xd),Xd) ) ) ).

fof(aSatz5_5b,axiom,
    ! [Xa,Xb,Xc,Xd,Xe] :
      ( le(Xa,Xb,Xc,Xd)
      | ~ s_t(Xa,Xb,Xe)
      | ~ s_e(Xa,Xe,Xc,Xd) ) ).

fof(aSatz5_6,axiom,
    ! [Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1] :
      ( ~ le(Xa,Xb,Xc,Xd)
      | ~ s_e(Xa,Xb,Xa1,Xb1)
      | ~ s_e(Xc,Xd,Xc1,Xd1)
      | le(Xa1,Xb1,Xc1,Xd1) ) ).

fof(aSatz5_7,axiom,
    ! [Xa,Xb] : le(Xa,Xb,Xa,Xb) ).

fof(aSatz5_8,axiom,
    ! [Xa,Xb,Xc,Xd,Xe,Xf] :
      ( ~ le(Xa,Xb,Xc,Xd)
      | ~ le(Xc,Xd,Xe,Xf)
      | le(Xa,Xb,Xe,Xf) ) ).

fof(aSatz5_9,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ le(Xa,Xb,Xc,Xd)
      | ~ le(Xc,Xd,Xa,Xb)
      | s_e(Xa,Xb,Xc,Xd) ) ).

fof(aSatz5_10,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( le(Xa,Xb,Xc,Xd)
      | le(Xc,Xd,Xa,Xb) ) ).

fof(aSatz5_11,axiom,
    ! [Xa,Xc,Xd] : le(Xa,Xa,Xc,Xd) ).

fof(aSatz5_12a1,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | ~ s_t(Xa,Xb,Xc)
      | le(Xa,Xb,Xa,Xc) ) ).

fof(aSatz5_12a2,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | ~ s_t(Xa,Xb,Xc)
      | le(Xb,Xc,Xa,Xc) ) ).

fof(aNarbouxLemma1,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_e(Xa,Xc,Xa,Xb)
      | Xc = Xb ) ).

fof(aSatz5_12b,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_t(Xa,Xb,Xc)
      | ~ le(Xa,Xb,Xa,Xc)
      | ~ le(Xb,Xc,Xa,Xc) ) ).

fof(aSatz6_2a,axiom,
    ! [Xa,Xp,Xb,Xc] :
      ( Xa = Xp
      | Xb = Xp
      | Xc = Xp
      | ~ s_t(Xa,Xp,Xc)
      | ~ s_t(Xb,Xp,Xc)
      | sameside(Xa,Xp,Xb) ) ).

fof(aSatz6_2b,axiom,
    ! [Xa,Xp,Xb,Xc] :
      ( Xa = Xp
      | Xb = Xp
      | Xc = Xp
      | ~ s_t(Xa,Xp,Xc)
      | s_t(Xb,Xp,Xc)
      | ~ sameside(Xa,Xp,Xb) ) ).

fof(aSatz6_3a,axiom,
    ! [Xa,Xp,Xb] :
      ( ( ~ sameside(Xa,Xp,Xb)
        | Xa != Xp )
      & ( ~ sameside(Xa,Xp,Xb)
        | Xb != Xp )
      & ( ~ sameside(Xa,Xp,Xb)
        | c63(Xa,Xp,Xb) != Xp )
      & ( ~ sameside(Xa,Xp,Xb)
        | s_t(Xa,Xp,c63(Xa,Xp,Xb)) )
      & ( ~ sameside(Xa,Xp,Xb)
        | s_t(Xb,Xp,c63(Xa,Xp,Xb)) ) ) ).

fof(aSatz6_3b,axiom,
    ! [Xa,Xp,Xb,Xc] :
      ( sameside(Xa,Xp,Xb)
      | Xa = Xp
      | Xb = Xp
      | Xc = Xp
      | ~ s_t(Xa,Xp,Xc)
      | ~ s_t(Xb,Xp,Xc) ) ).

fof(aSatz6_4a,axiom,
    ! [Xa,Xp,Xb] :
      ( ( ~ sameside(Xa,Xp,Xb)
        | s_col(Xa,Xp,Xb) )
      & ( ~ sameside(Xa,Xp,Xb)
        | ~ s_t(Xa,Xp,Xb) ) ) ).

fof(aSatz6_4b,axiom,
    ! [Xa,Xp,Xb] :
      ( sameside(Xa,Xp,Xb)
      | ~ s_col(Xa,Xp,Xb)
      | s_t(Xa,Xp,Xb) ) ).

fof(aSatz6_5,axiom,
    ! [Xa,Xp] :
      ( Xa = Xp
      | sameside(Xa,Xp,Xa) ) ).

fof(aSatz6_6,axiom,
    ! [Xa,Xp,Xb] :
      ( ~ sameside(Xa,Xp,Xb)
      | sameside(Xb,Xp,Xa) ) ).

fof(aSatz6_7,axiom,
    ! [Xa,Xp,Xb,Xc] :
      ( ~ sameside(Xa,Xp,Xb)
      | ~ sameside(Xb,Xp,Xc)
      | sameside(Xa,Xp,Xc) ) ).

fof(aSatz6_11a,conjecture,
    ! [Xr,Xa,Xb,Xc] :
      ( ( Xr = Xa
        | Xb = Xc
        | sameside(insert(Xb,Xc,Xa,Xr),Xa,Xr) )
      & ( Xr = Xa
        | Xb = Xc
        | s_e(Xa,insert(Xb,Xc,Xa,Xr),Xb,Xc) ) ) ).

fof(d_insert,axiom,
    ! [Xa,Xb,Xa1,Xc1] : insert(Xa,Xb,Xa1,Xc1) = ext(ext(Xc1,Xa1,alpha,gamma),Xa1,Xa,Xb) ).

fof(d_Defn2_10,axiom,
    ! [Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd] :
      ( ( ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_t(Xa,Xb,Xc) )
      & ( ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_t(Za,Zb,Zc) )
      & ( ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xa,Xb,Za,Zb) )
      & ( ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xb,Xc,Zb,Zc) )
      & ( ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xa,Xd,Za,Zd) )
      & ( ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xb,Xd,Zb,Zd) )
      & ( ~ s_t(Xa,Xb,Xc)
        | ~ s_t(Za,Zb,Zc)
        | ~ s_e(Xa,Xb,Za,Zb)
        | ~ s_e(Xb,Xc,Zb,Zc)
        | ~ s_e(Xa,Xd,Za,Zd)
        | ~ s_e(Xb,Xd,Zb,Zd)
        | s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd) ) ) ).

fof(d_Defn4_1,axiom,
    ! [Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd] :
      ( ( ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_t(Xa,Xb,Xc) )
      & ( ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_t(Za,Zb,Zc) )
      & ( ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xa,Xc,Za,Zc) )
      & ( ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xb,Xc,Zb,Zc) )
      & ( ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xa,Xd,Za,Zd) )
      & ( ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xc,Xd,Zc,Zd) )
      & ( ~ s_t(Xa,Xb,Xc)
        | ~ s_t(Za,Zb,Zc)
        | ~ s_e(Xa,Xc,Za,Zc)
        | ~ s_e(Xb,Xc,Zb,Zc)
        | ~ s_e(Xa,Xd,Za,Zd)
        | ~ s_e(Xc,Xd,Zc,Zd)
        | s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd) ) ) ).

fof(d_Defn4_4,axiom,
    ! [Xa1,Xa2,Xa3,Xb1,Xb2,Xb3] :
      ( ( ~ s_e3(Xa1,Xa2,Xa3,Xb1,Xb2,Xb3)
        | s_e(Xa1,Xa2,Xb1,Xb2) )
      & ( ~ s_e3(Xa1,Xa2,Xa3,Xb1,Xb2,Xb3)
        | s_e(Xa1,Xa3,Xb1,Xb3) )
      & ( ~ s_e3(Xa1,Xa2,Xa3,Xb1,Xb2,Xb3)
        | s_e(Xa2,Xa3,Xb2,Xb3) )
      & ( ~ s_e(Xa1,Xa2,Xb1,Xb2)
        | ~ s_e(Xa1,Xa3,Xb1,Xb3)
        | ~ s_e(Xa2,Xa3,Xb2,Xb3)
        | s_e3(Xa1,Xa2,Xa3,Xb1,Xb2,Xb3) ) ) ).

fof(d_Defn4_10,axiom,
    ! [Xa,Xb,Xc] :
      ( ( ~ s_col(Xa,Xb,Xc)
        | s_t(Xa,Xb,Xc)
        | s_t(Xb,Xc,Xa)
        | s_t(Xc,Xa,Xb) )
      & ( s_col(Xa,Xb,Xc)
        | ~ s_t(Xa,Xb,Xc) )
      & ( s_col(Xa,Xb,Xc)
        | ~ s_t(Xb,Xc,Xa) )
      & ( s_col(Xa,Xb,Xc)
        | ~ s_t(Xc,Xa,Xb) ) ) ).

fof(d_Defn4_15,axiom,
    ! [Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1] :
      ( ( ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
        | s_col(Xa,Xb,Xc) )
      & ( ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
        | s_e3(Xa,Xb,Xc,Xa1,Xb1,Xc1) )
      & ( ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
        | s_e(Xa,Xd,Xa1,Xd1) )
      & ( ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
        | s_e(Xb,Xd,Xb1,Xd1) )
      & ( ~ s_col(Xa,Xb,Xc)
        | ~ s_e3(Xa,Xb,Xc,Xa1,Xb1,Xc1)
        | ~ s_e(Xa,Xd,Xa1,Xd1)
        | ~ s_e(Xb,Xd,Xb1,Xd1)
        | s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1) ) ) ).

fof(d_Defn5_4,axiom,
    ! [Xa,Xb,Xc,Xd,Y] :
      ( ( ~ le(Xa,Xb,Xc,Xd)
        | s_t(Xc,insert(Xa,Xb,Xc,Xd),Xd) )
      & ( ~ le(Xa,Xb,Xc,Xd)
        | s_e(Xa,Xb,Xc,insert(Xa,Xb,Xc,Xd)) )
      & ( ~ s_t(Xc,Y,Xd)
        | ~ s_e(Xa,Xb,Xc,Y)
        | le(Xa,Xb,Xc,Xd) ) ) ).

fof(d_Defn6_1,axiom,
    ! [Xa,Xp,Xb] :
      ( ( ~ sameside(Xa,Xp,Xb)
        | Xa != Xp )
      & ( ~ sameside(Xa,Xp,Xb)
        | Xb != Xp )
      & ( ~ sameside(Xa,Xp,Xb)
        | s_t(Xp,Xa,Xb)
        | s_t(Xp,Xb,Xa) )
      & ( ~ s_t(Xp,Xa,Xb)
        | Xa = Xp
        | xb = Xp
        | sameside(Xa,Xp,Xb) )
      & ( ~ s_t(Xp,Xb,Xa)
        | Xa = Xp
        | Xb = Xp
        | sameside(Xa,Xp,Xb) ) ) ).

%------------------------------------------------------------------------------