%------------------------------------------------------------------------------
% File     : LAT384+4 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Lattice Theory
% Problem  : Tarski-Knaster fixed point theorem 03_01+, 03 expansion
% Version  : Especial.
% English  :

% Refs     : [VLP07] Verchinine et al. (2007), System for Automated Deduction
%          : [Pas08] Paskevich (2008), Email to G. Sutcliffe
%          : [VL+08] Verchinine et al. (2008), On Correctness of Mathematic
% Source   : [Pas08]
% Names    : tarski_03_01+.03 [Pas08]

% Status   : CounterSatisfiable
% Rating   : 1.00 v4.0.0
% Syntax   : Number of formulae    :   27 (   0 unt;  10 def)
%            Number of atoms       :  159 (  11 equ)
%            Maximal formula atoms :   37 (   5 avg)
%            Number of connectives :  133 (   1   ~;   6   |;  57   &)
%                                         (  10 <=>;  59  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   24 (   7 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   17 (  15 usr;   1 prp; 0-3 aty)
%            Number of functors    :    8 (   8 usr;   4 con; 0-2 aty)
%            Number of variables   :   75 (  69   !;   6   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : Problem generated by the SAD system [VLP07]
%------------------------------------------------------------------------------
fof(mSetSort,axiom,
    ! [W0] :
      ( aSet0(W0)
     => $true ) ).

fof(mElmSort,axiom,
    ! [W0] :
      ( aElement0(W0)
     => $true ) ).

fof(mEOfElem,axiom,
    ! [W0] :
      ( aSet0(W0)
     => ! [W1] :
          ( aElementOf0(W1,W0)
         => aElement0(W1) ) ) ).

fof(mDefEmpty,definition,
    ! [W0] :
      ( aSet0(W0)
     => ( isEmpty0(W0)
      <=> ~ ? [W1] : aElementOf0(W1,W0) ) ) ).

fof(mDefSub,definition,
    ! [W0] :
      ( aSet0(W0)
     => ! [W1] :
          ( aSubsetOf0(W1,W0)
        <=> ( aSet0(W1)
            & ! [W2] :
                ( aElementOf0(W2,W1)
               => aElementOf0(W2,W0) ) ) ) ) ).

fof(mLessRel,axiom,
    ! [W0,W1] :
      ( ( aElement0(W0)
        & aElement0(W1) )
     => ( sdtlseqdt0(W0,W1)
       => $true ) ) ).

fof(mARefl,axiom,
    ! [W0] :
      ( aElement0(W0)
     => sdtlseqdt0(W0,W0) ) ).

fof(mASymm,axiom,
    ! [W0,W1] :
      ( ( aElement0(W0)
        & aElement0(W1) )
     => ( ( sdtlseqdt0(W0,W1)
          & sdtlseqdt0(W1,W0) )
       => W0 = W1 ) ) ).

fof(mTrans,axiom,
    ! [W0,W1,W2] :
      ( ( aElement0(W0)
        & aElement0(W1)
        & aElement0(W2) )
     => ( ( sdtlseqdt0(W0,W1)
          & sdtlseqdt0(W1,W2) )
       => sdtlseqdt0(W0,W2) ) ) ).

fof(mDefLB,definition,
    ! [W0] :
      ( aSet0(W0)
     => ! [W1] :
          ( aSubsetOf0(W1,W0)
         => ! [W2] :
              ( aLowerBoundOfIn0(W2,W1,W0)
            <=> ( aElementOf0(W2,W0)
                & ! [W3] :
                    ( aElementOf0(W3,W1)
                   => sdtlseqdt0(W2,W3) ) ) ) ) ) ).

fof(mDefUB,definition,
    ! [W0] :
      ( aSet0(W0)
     => ! [W1] :
          ( aSubsetOf0(W1,W0)
         => ! [W2] :
              ( aUpperBoundOfIn0(W2,W1,W0)
            <=> ( aElementOf0(W2,W0)
                & ! [W3] :
                    ( aElementOf0(W3,W1)
                   => sdtlseqdt0(W3,W2) ) ) ) ) ) ).

fof(mDefInf,definition,
    ! [W0] :
      ( aSet0(W0)
     => ! [W1] :
          ( aSubsetOf0(W1,W0)
         => ! [W2] :
              ( aInfimumOfIn0(W2,W1,W0)
            <=> ( aElementOf0(W2,W0)
                & aLowerBoundOfIn0(W2,W1,W0)
                & ! [W3] :
                    ( aLowerBoundOfIn0(W3,W1,W0)
                   => sdtlseqdt0(W3,W2) ) ) ) ) ) ).

fof(mDefSup,definition,
    ! [W0] :
      ( aSet0(W0)
     => ! [W1] :
          ( aSubsetOf0(W1,W0)
         => ! [W2] :
              ( aSupremumOfIn0(W2,W1,W0)
            <=> ( aElementOf0(W2,W0)
                & aUpperBoundOfIn0(W2,W1,W0)
                & ! [W3] :
                    ( aUpperBoundOfIn0(W3,W1,W0)
                   => sdtlseqdt0(W2,W3) ) ) ) ) ) ).

fof(mSupUn,axiom,
    ! [W0] :
      ( aSet0(W0)
     => ! [W1] :
          ( aSubsetOf0(W1,W0)
         => ! [W2,W3] :
              ( ( aSupremumOfIn0(W2,W1,W0)
                & aSupremumOfIn0(W3,W1,W0) )
             => W2 = W3 ) ) ) ).

fof(mInfUn,axiom,
    ! [W0] :
      ( aSet0(W0)
     => ! [W1] :
          ( aSubsetOf0(W1,W0)
         => ! [W2,W3] :
              ( ( aInfimumOfIn0(W2,W1,W0)
                & aInfimumOfIn0(W3,W1,W0) )
             => W2 = W3 ) ) ) ).

fof(mDefCLat,definition,
    ! [W0] :
      ( aCompleteLattice0(W0)
    <=> ( aSet0(W0)
        & ! [W1] :
            ( aSubsetOf0(W1,W0)
           => ? [W2] :
                ( aInfimumOfIn0(W2,W1,W0)
                & ? [W3] : aSupremumOfIn0(W3,W1,W0) ) ) ) ) ).

fof(mConMap,axiom,
    ! [W0] :
      ( aFunction0(W0)
     => $true ) ).

fof(mDomSort,axiom,
    ! [W0] :
      ( aFunction0(W0)
     => aSet0(szDzozmdt0(W0)) ) ).

fof(mRanSort,axiom,
    ! [W0] :
      ( aFunction0(W0)
     => aSet0(szRzazndt0(W0)) ) ).

fof(mDefDom,definition,
    ! [W0,W1] :
      ( ( aFunction0(W0)
        & aSet0(W1) )
     => ( isOn0(W0,W1)
      <=> ( szDzozmdt0(W0) = szRzazndt0(W0)
          & szRzazndt0(W0) = W1 ) ) ) ).

fof(mImgSort,axiom,
    ! [W0] :
      ( aFunction0(W0)
     => ! [W1] :
          ( aElementOf0(W1,szDzozmdt0(W0))
         => aElementOf0(sdtlpdtrp0(W0,W1),szRzazndt0(W0)) ) ) ).

fof(mDefFix,definition,
    ! [W0] :
      ( aFunction0(W0)
     => ! [W1] :
          ( aFixedPointOf0(W1,W0)
        <=> ( aElementOf0(W1,szDzozmdt0(W0))
            & sdtlpdtrp0(W0,W1) = W1 ) ) ) ).

fof(mDefMonot,definition,
    ! [W0] :
      ( aFunction0(W0)
     => ( isMonotone0(W0)
      <=> ! [W1,W2] :
            ( ( aElementOf0(W1,szDzozmdt0(W0))
              & aElementOf0(W2,szDzozmdt0(W0)) )
           => ( sdtlseqdt0(W1,W2)
             => sdtlseqdt0(sdtlpdtrp0(W0,W1),sdtlpdtrp0(W0,W2)) ) ) ) ) ).

fof(m__1123,hypothesis,
    ( aSet0(xU)
    & ! [W0] :
        ( ( ( aSet0(W0)
            & ! [W1] :
                ( aElementOf0(W1,W0)
               => aElementOf0(W1,xU) ) )
          | aSubsetOf0(W0,xU) )
       => ? [W1] :
            ( aElementOf0(W1,xU)
            & aElementOf0(W1,xU)
            & ! [W2] :
                ( aElementOf0(W2,W0)
               => sdtlseqdt0(W1,W2) )
            & aLowerBoundOfIn0(W1,W0,xU)
            & ! [W2] :
                ( ( ( aElementOf0(W2,xU)
                    & ! [W3] :
                        ( aElementOf0(W3,W0)
                       => sdtlseqdt0(W2,W3) ) )
                  | aLowerBoundOfIn0(W2,W0,xU) )
               => sdtlseqdt0(W2,W1) )
            & aInfimumOfIn0(W1,W0,xU)
            & ? [W2] :
                ( aElementOf0(W2,xU)
                & aElementOf0(W2,xU)
                & ! [W3] :
                    ( aElementOf0(W3,W0)
                   => sdtlseqdt0(W3,W2) )
                & aUpperBoundOfIn0(W2,W0,xU)
                & ! [W3] :
                    ( ( ( aElementOf0(W3,xU)
                        & ! [W4] :
                            ( aElementOf0(W4,W0)
                           => sdtlseqdt0(W4,W3) ) )
                      | aUpperBoundOfIn0(W3,W0,xU) )
                   => sdtlseqdt0(W2,W3) )
                & aSupremumOfIn0(W2,W0,xU) ) ) )
    & aCompleteLattice0(xU)
    & aFunction0(xf)
    & ! [W0,W1] :
        ( ( aElementOf0(W0,szDzozmdt0(xf))
          & aElementOf0(W1,szDzozmdt0(xf)) )
       => ( sdtlseqdt0(W0,W1)
         => sdtlseqdt0(sdtlpdtrp0(xf,W0),sdtlpdtrp0(xf,W1)) ) )
    & isMonotone0(xf)
    & szDzozmdt0(xf) = szRzazndt0(xf)
    & szRzazndt0(xf) = xU
    & isOn0(xf,xU) ) ).

fof(m__1144,hypothesis,
    ( aSet0(xS)
    & ! [W0] :
        ( ( aElementOf0(W0,xS)
         => ( aElementOf0(W0,szDzozmdt0(xf))
            & sdtlpdtrp0(xf,W0) = W0
            & aFixedPointOf0(W0,xf) ) )
        & ( ( ( aElementOf0(W0,szDzozmdt0(xf))
              & sdtlpdtrp0(xf,W0) = W0 )
            | aFixedPointOf0(W0,xf) )
         => aElementOf0(W0,xS) ) )
    & xS = cS1142(xf) ) ).

fof(m__1173,hypothesis,
    ( aSet0(xT)
    & ! [W0] :
        ( aElementOf0(W0,xT)
       => aElementOf0(W0,xS) )
    & aSubsetOf0(xT,xS) ) ).

fof(m__,conjecture,
    ? [W0] :
      ( ( aElementOf0(W0,xS)
        & ( ( aElementOf0(W0,xS)
            & ! [W1] :
                ( aElementOf0(W1,xT)
               => sdtlseqdt0(W1,W0) ) )
          | aUpperBoundOfIn0(W0,xT,xS) )
        & ! [W1] :
            ( ( aElementOf0(W1,xS)
              & ! [W2] :
                  ( aElementOf0(W2,xT)
                 => sdtlseqdt0(W2,W1) )
              & aUpperBoundOfIn0(W1,xT,xS) )
           => sdtlseqdt0(W0,W1) ) )
      | aSupremumOfIn0(W0,xT,xS) ) ).

%------------------------------------------------------------------------------