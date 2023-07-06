%------------------------------------------------------------------------------
% File     : RNG110+4 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Ring Theory
% Problem  : Chinese remainder theorem in a ring 07_04+, 03 expansion
% Version  : Especial.
% English  :

% Refs     : [VLP07] Verchinine et al. (2007), System for Automated Deduction
%          : [Pas08] Paskevich (2008), Email to G. Sutcliffe
% Source   : [Pas08]
% Names    : chines_07_04+.03 [Pas08]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0, 0.33 v7.0.0, 0.00 v6.4.0, 0.33 v6.2.0, 0.36 v6.0.0, 0.54 v5.5.0, 0.25 v5.4.0, 0.57 v5.3.0, 0.71 v5.2.0, 0.67 v5.0.0, 0.57 v4.1.0, 0.80 v4.0.1, 1.00 v4.0.0
% Syntax   : Number of formulae    :   45 (   3 unt;   9 def)
%            Number of atoms       :  231 (  54 equ)
%            Maximal formula atoms :   23 (   5 avg)
%            Number of connectives :  196 (  10   ~;   7   |; 109   &)
%                                         (  17 <=>;  53  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   6 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   13 (  11 usr;   1 prp; 0-3 aty)
%            Number of functors    :   13 (  13 usr;   6 con; 0-2 aty)
%            Number of variables   :  117 (  87   !;  30   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : Problem generated by the SAD system [VLP07]
%------------------------------------------------------------------------------
fof(mElmSort,axiom,
    ! [W0] :
      ( aElement0(W0)
     => $true ) ).

fof(mSortsC,axiom,
    aElement0(sz00) ).

fof(mSortsC_01,axiom,
    aElement0(sz10) ).

fof(mSortsU,axiom,
    ! [W0] :
      ( aElement0(W0)
     => aElement0(smndt0(W0)) ) ).

fof(mSortsB,axiom,
    ! [W0,W1] :
      ( ( aElement0(W0)
        & aElement0(W1) )
     => aElement0(sdtpldt0(W0,W1)) ) ).

fof(mSortsB_02,axiom,
    ! [W0,W1] :
      ( ( aElement0(W0)
        & aElement0(W1) )
     => aElement0(sdtasdt0(W0,W1)) ) ).

fof(mAddComm,axiom,
    ! [W0,W1] :
      ( ( aElement0(W0)
        & aElement0(W1) )
     => sdtpldt0(W0,W1) = sdtpldt0(W1,W0) ) ).

fof(mAddAsso,axiom,
    ! [W0,W1,W2] :
      ( ( aElement0(W0)
        & aElement0(W1)
        & aElement0(W2) )
     => sdtpldt0(sdtpldt0(W0,W1),W2) = sdtpldt0(W0,sdtpldt0(W1,W2)) ) ).

fof(mAddZero,axiom,
    ! [W0] :
      ( aElement0(W0)
     => ( sdtpldt0(W0,sz00) = W0
        & W0 = sdtpldt0(sz00,W0) ) ) ).

fof(mAddInvr,axiom,
    ! [W0] :
      ( aElement0(W0)
     => ( sdtpldt0(W0,smndt0(W0)) = sz00
        & sz00 = sdtpldt0(smndt0(W0),W0) ) ) ).

fof(mMulComm,axiom,
    ! [W0,W1] :
      ( ( aElement0(W0)
        & aElement0(W1) )
     => sdtasdt0(W0,W1) = sdtasdt0(W1,W0) ) ).

fof(mMulAsso,axiom,
    ! [W0,W1,W2] :
      ( ( aElement0(W0)
        & aElement0(W1)
        & aElement0(W2) )
     => sdtasdt0(sdtasdt0(W0,W1),W2) = sdtasdt0(W0,sdtasdt0(W1,W2)) ) ).

fof(mMulUnit,axiom,
    ! [W0] :
      ( aElement0(W0)
     => ( sdtasdt0(W0,sz10) = W0
        & W0 = sdtasdt0(sz10,W0) ) ) ).

fof(mAMDistr,axiom,
    ! [W0,W1,W2] :
      ( ( aElement0(W0)
        & aElement0(W1)
        & aElement0(W2) )
     => ( sdtasdt0(W0,sdtpldt0(W1,W2)) = sdtpldt0(sdtasdt0(W0,W1),sdtasdt0(W0,W2))
        & sdtasdt0(sdtpldt0(W1,W2),W0) = sdtpldt0(sdtasdt0(W1,W0),sdtasdt0(W2,W0)) ) ) ).

fof(mMulMnOne,axiom,
    ! [W0] :
      ( aElement0(W0)
     => ( sdtasdt0(smndt0(sz10),W0) = smndt0(W0)
        & smndt0(W0) = sdtasdt0(W0,smndt0(sz10)) ) ) ).

fof(mMulZero,axiom,
    ! [W0] :
      ( aElement0(W0)
     => ( sdtasdt0(W0,sz00) = sz00
        & sz00 = sdtasdt0(sz00,W0) ) ) ).

fof(mCancel,axiom,
    ! [W0,W1] :
      ( ( aElement0(W0)
        & aElement0(W1) )
     => ( sdtasdt0(W0,W1) = sz00
       => ( W0 = sz00
          | W1 = sz00 ) ) ) ).

fof(mUnNeZr,axiom,
    sz10 != sz00 ).

fof(mSetSort,axiom,
    ! [W0] :
      ( aSet0(W0)
     => $true ) ).

fof(mEOfElem,axiom,
    ! [W0] :
      ( aSet0(W0)
     => ! [W1] :
          ( aElementOf0(W1,W0)
         => aElement0(W1) ) ) ).

fof(mSetEq,axiom,
    ! [W0,W1] :
      ( ( aSet0(W0)
        & aSet0(W1) )
     => ( ( ! [W2] :
              ( aElementOf0(W2,W0)
             => aElementOf0(W2,W1) )
          & ! [W2] :
              ( aElementOf0(W2,W1)
             => aElementOf0(W2,W0) ) )
       => W0 = W1 ) ) ).

fof(mDefSSum,definition,
    ! [W0,W1] :
      ( ( aSet0(W0)
        & aSet0(W1) )
     => ! [W2] :
          ( W2 = sdtpldt1(W0,W1)
        <=> ( aSet0(W2)
            & ! [W3] :
                ( aElementOf0(W3,W2)
              <=> ? [W4,W5] :
                    ( aElementOf0(W4,W0)
                    & aElementOf0(W5,W1)
                    & sdtpldt0(W4,W5) = W3 ) ) ) ) ) ).

fof(mDefSInt,definition,
    ! [W0,W1] :
      ( ( aSet0(W0)
        & aSet0(W1) )
     => ! [W2] :
          ( W2 = sdtasasdt0(W0,W1)
        <=> ( aSet0(W2)
            & ! [W3] :
                ( aElementOf0(W3,W2)
              <=> ( aElementOf0(W3,W0)
                  & aElementOf0(W3,W1) ) ) ) ) ) ).

fof(mDefIdeal,definition,
    ! [W0] :
      ( aIdeal0(W0)
    <=> ( aSet0(W0)
        & ! [W1] :
            ( aElementOf0(W1,W0)
           => ( ! [W2] :
                  ( aElementOf0(W2,W0)
                 => aElementOf0(sdtpldt0(W1,W2),W0) )
              & ! [W2] :
                  ( aElement0(W2)
                 => aElementOf0(sdtasdt0(W2,W1),W0) ) ) ) ) ) ).

fof(mIdeSum,axiom,
    ! [W0,W1] :
      ( ( aIdeal0(W0)
        & aIdeal0(W1) )
     => aIdeal0(sdtpldt1(W0,W1)) ) ).

fof(mIdeInt,axiom,
    ! [W0,W1] :
      ( ( aIdeal0(W0)
        & aIdeal0(W1) )
     => aIdeal0(sdtasasdt0(W0,W1)) ) ).

fof(mDefMod,definition,
    ! [W0,W1,W2] :
      ( ( aElement0(W0)
        & aElement0(W1)
        & aIdeal0(W2) )
     => ( sdteqdtlpzmzozddtrp0(W0,W1,W2)
      <=> aElementOf0(sdtpldt0(W0,smndt0(W1)),W2) ) ) ).

fof(mChineseRemainder,axiom,
    ! [W0,W1] :
      ( ( aIdeal0(W0)
        & aIdeal0(W1) )
     => ( ! [W2] :
            ( aElement0(W2)
           => aElementOf0(W2,sdtpldt1(W0,W1)) )
       => ! [W2,W3] :
            ( ( aElement0(W2)
              & aElement0(W3) )
           => ? [W4] :
                ( aElement0(W4)
                & sdteqdtlpzmzozddtrp0(W4,W2,W0)
                & sdteqdtlpzmzozddtrp0(W4,W3,W1) ) ) ) ) ).

fof(mNatSort,axiom,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => $true ) ).

fof(mEucSort,axiom,
    ! [W0] :
      ( ( aElement0(W0)
        & W0 != sz00 )
     => aNaturalNumber0(sbrdtbr0(W0)) ) ).

fof(mNatLess,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) )
     => ( iLess0(W0,W1)
       => $true ) ) ).

fof(mDivision,axiom,
    ! [W0,W1] :
      ( ( aElement0(W0)
        & aElement0(W1)
        & W1 != sz00 )
     => ? [W2,W3] :
          ( aElement0(W2)
          & aElement0(W3)
          & W0 = sdtpldt0(sdtasdt0(W2,W1),W3)
          & ( W3 != sz00
           => iLess0(sbrdtbr0(W3),sbrdtbr0(W1)) ) ) ) ).

fof(mDefDiv,definition,
    ! [W0,W1] :
      ( ( aElement0(W0)
        & aElement0(W1) )
     => ( doDivides0(W0,W1)
      <=> ? [W2] :
            ( aElement0(W2)
            & sdtasdt0(W0,W2) = W1 ) ) ) ).

fof(mDefDvs,definition,
    ! [W0] :
      ( aElement0(W0)
     => ! [W1] :
          ( aDivisorOf0(W1,W0)
        <=> ( aElement0(W1)
            & doDivides0(W1,W0) ) ) ) ).

fof(mDefGCD,definition,
    ! [W0,W1] :
      ( ( aElement0(W0)
        & aElement0(W1) )
     => ! [W2] :
          ( aGcdOfAnd0(W2,W0,W1)
        <=> ( aDivisorOf0(W2,W0)
            & aDivisorOf0(W2,W1)
            & ! [W3] :
                ( ( aDivisorOf0(W3,W0)
                  & aDivisorOf0(W3,W1) )
               => doDivides0(W3,W2) ) ) ) ) ).

fof(mDefRel,definition,
    ! [W0,W1] :
      ( ( aElement0(W0)
        & aElement0(W1) )
     => ( misRelativelyPrime0(W0,W1)
      <=> aGcdOfAnd0(sz10,W0,W1) ) ) ).

fof(mDefPrIdeal,definition,
    ! [W0] :
      ( aElement0(W0)
     => ! [W1] :
          ( W1 = slsdtgt0(W0)
        <=> ( aSet0(W1)
            & ! [W2] :
                ( aElementOf0(W2,W1)
              <=> ? [W3] :
                    ( aElement0(W3)
                    & sdtasdt0(W0,W3) = W2 ) ) ) ) ) ).

fof(mPrIdeal,axiom,
    ! [W0] :
      ( aElement0(W0)
     => aIdeal0(slsdtgt0(W0)) ) ).

fof(m__2091,hypothesis,
    ( aElement0(xa)
    & aElement0(xb) ) ).

fof(m__2110,hypothesis,
    ( xa != sz00
    | xb != sz00 ) ).

fof(m__2129,hypothesis,
    ( aElement0(xc)
    & ? [W0] :
        ( aElement0(W0)
        & sdtasdt0(xc,W0) = xa )
    & doDivides0(xc,xa)
    & aDivisorOf0(xc,xa)
    & aElement0(xc)
    & ? [W0] :
        ( aElement0(W0)
        & sdtasdt0(xc,W0) = xb )
    & doDivides0(xc,xb)
    & aDivisorOf0(xc,xb)
    & ! [W0] :
        ( ( ( ( aElement0(W0)
              & ( ? [W1] :
                    ( aElement0(W1)
                    & sdtasdt0(W0,W1) = xa )
                | doDivides0(W0,xa) ) )
            | aDivisorOf0(W0,xa) )
          & ( ? [W1] :
                ( aElement0(W1)
                & sdtasdt0(W0,W1) = xb )
            | doDivides0(W0,xb)
            | aDivisorOf0(W0,xb) ) )
       => ( ? [W1] :
              ( aElement0(W1)
              & sdtasdt0(W0,W1) = xc )
          & doDivides0(W0,xc) ) )
    & aGcdOfAnd0(xc,xa,xb) ) ).

fof(m__2174,hypothesis,
    ( aSet0(xI)
    & ! [W0] :
        ( aElementOf0(W0,xI)
       => ( ! [W1] :
              ( aElementOf0(W1,xI)
             => aElementOf0(sdtpldt0(W0,W1),xI) )
          & ! [W1] :
              ( aElement0(W1)
             => aElementOf0(sdtasdt0(W1,W0),xI) ) ) )
    & aIdeal0(xI)
    & ! [W0] :
        ( aElementOf0(W0,slsdtgt0(xa))
      <=> ? [W1] :
            ( aElement0(W1)
            & sdtasdt0(xa,W1) = W0 ) )
    & ! [W0] :
        ( aElementOf0(W0,slsdtgt0(xb))
      <=> ? [W1] :
            ( aElement0(W1)
            & sdtasdt0(xb,W1) = W0 ) )
    & ! [W0] :
        ( aElementOf0(W0,xI)
      <=> ? [W1,W2] :
            ( aElementOf0(W1,slsdtgt0(xa))
            & aElementOf0(W2,slsdtgt0(xb))
            & sdtpldt0(W1,W2) = W0 ) )
    & xI = sdtpldt1(slsdtgt0(xa),slsdtgt0(xb)) ) ).

fof(m__2203,hypothesis,
    ( ? [W0] :
        ( aElement0(W0)
        & sdtasdt0(xa,W0) = sz00 )
    & aElementOf0(sz00,slsdtgt0(xa))
    & ? [W0] :
        ( aElement0(W0)
        & sdtasdt0(xa,W0) = xa )
    & aElementOf0(xa,slsdtgt0(xa))
    & ? [W0] :
        ( aElement0(W0)
        & sdtasdt0(xb,W0) = sz00 )
    & aElementOf0(sz00,slsdtgt0(xb))
    & ? [W0] :
        ( aElement0(W0)
        & sdtasdt0(xb,W0) = xb )
    & aElementOf0(xb,slsdtgt0(xb)) ) ).

fof(m__2228,hypothesis,
    ? [W0] :
      ( ! [W1] :
          ( aElementOf0(W1,slsdtgt0(xa))
        <=> ? [W2] :
              ( aElement0(W2)
              & sdtasdt0(xa,W2) = W1 ) )
      & ! [W1] :
          ( aElementOf0(W1,slsdtgt0(xb))
        <=> ? [W2] :
              ( aElement0(W2)
              & sdtasdt0(xb,W2) = W1 ) )
      & ? [W1,W2] :
          ( aElementOf0(W1,slsdtgt0(xa))
          & aElementOf0(W2,slsdtgt0(xb))
          & sdtpldt0(W1,W2) = W0 )
      & aElementOf0(W0,sdtpldt1(slsdtgt0(xa),slsdtgt0(xb)))
      & W0 != sz00 ) ).

fof(m__,conjecture,
    ? [W0] :
      ( ( ? [W1,W2] :
            ( aElementOf0(W1,slsdtgt0(xa))
            & aElementOf0(W2,slsdtgt0(xb))
            & sdtpldt0(W1,W2) = W0 )
        | aElementOf0(W0,xI) )
      & W0 != sz00
      & ! [W1] :
          ( ( ? [W2,W3] :
                ( aElementOf0(W2,slsdtgt0(xa))
                & aElementOf0(W3,slsdtgt0(xb))
                & sdtpldt0(W2,W3) = W1 )
            & aElementOf0(W1,xI)
            & W1 != sz00 )
         => ~ iLess0(sbrdtbr0(W1),sbrdtbr0(W0)) ) ) ).

%------------------------------------------------------------------------------