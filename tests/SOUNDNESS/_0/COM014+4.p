%------------------------------------------------------------------------------
% File     : COM014+4 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Computing Theory
% Problem  : Newman's lemma on rewriting systems 03+, 03 expansion
% Version  : Especial.
% English  :

% Refs     : [VLP07] Verchinine et al. (2007), System for Automated Deduction
%          : [PV+07] Paskevich et al. (2007), Reasoning Inside a Formula an
%          : [Pas08] Paskevich (2008), Email to G. Sutcliffe
% Source   : [Pas08]
% Names    : newman_03+.03 [Pas08]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0, 0.33 v7.0.0, 0.00 v6.4.0, 0.33 v6.2.0, 0.27 v6.1.0, 0.36 v6.0.0, 0.54 v5.5.0, 0.25 v5.4.0, 0.43 v5.3.0, 0.57 v5.2.0, 0.50 v5.0.0, 0.57 v4.1.0, 0.80 v4.0.1, 1.00 v4.0.0
% Syntax   : Number of formulae    :   15 (   0 unt;   6 def)
%            Number of atoms       :  145 (   7 equ)
%            Maximal formula atoms :   64 (   9 avg)
%            Number of connectives :  131 (   1   ~;  21   |;  74   &)
%                                         (   6 <=>;  29  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   22 (   9 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   12 (  10 usr;   1 prp; 0-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   63 (  49   !;  14   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : Problem generated by the SAD system [VLP07]
%------------------------------------------------------------------------------
fof(mElmSort,axiom,
    ! [W0] :
      ( aElement0(W0)
     => $true ) ).

fof(mRelSort,axiom,
    ! [W0] :
      ( aRewritingSystem0(W0)
     => $true ) ).

fof(mReduct,axiom,
    ! [W0,W1] :
      ( ( aElement0(W0)
        & aRewritingSystem0(W1) )
     => ! [W2] :
          ( aReductOfIn0(W2,W0,W1)
         => aElement0(W2) ) ) ).

fof(mWFOrd,axiom,
    ! [W0,W1] :
      ( ( aElement0(W0)
        & aElement0(W1) )
     => ( iLess0(W0,W1)
       => $true ) ) ).

fof(mTCbr,axiom,
    ! [W0,W1,W2] :
      ( ( aElement0(W0)
        & aRewritingSystem0(W1)
        & aElement0(W2) )
     => ( sdtmndtplgtdt0(W0,W1,W2)
       => $true ) ) ).

fof(mTCDef,definition,
    ! [W0,W1,W2] :
      ( ( aElement0(W0)
        & aRewritingSystem0(W1)
        & aElement0(W2) )
     => ( sdtmndtplgtdt0(W0,W1,W2)
      <=> ( aReductOfIn0(W2,W0,W1)
          | ? [W3] :
              ( aElement0(W3)
              & aReductOfIn0(W3,W0,W1)
              & sdtmndtplgtdt0(W3,W1,W2) ) ) ) ) ).

fof(mTCTrans,axiom,
    ! [W0,W1,W2,W3] :
      ( ( aElement0(W0)
        & aRewritingSystem0(W1)
        & aElement0(W2)
        & aElement0(W3) )
     => ( ( sdtmndtplgtdt0(W0,W1,W2)
          & sdtmndtplgtdt0(W2,W1,W3) )
       => sdtmndtplgtdt0(W0,W1,W3) ) ) ).

fof(mTCRDef,definition,
    ! [W0,W1,W2] :
      ( ( aElement0(W0)
        & aRewritingSystem0(W1)
        & aElement0(W2) )
     => ( sdtmndtasgtdt0(W0,W1,W2)
      <=> ( W0 = W2
          | sdtmndtplgtdt0(W0,W1,W2) ) ) ) ).

fof(mTCRTrans,axiom,
    ! [W0,W1,W2,W3] :
      ( ( aElement0(W0)
        & aRewritingSystem0(W1)
        & aElement0(W2)
        & aElement0(W3) )
     => ( ( sdtmndtasgtdt0(W0,W1,W2)
          & sdtmndtasgtdt0(W2,W1,W3) )
       => sdtmndtasgtdt0(W0,W1,W3) ) ) ).

fof(mCRDef,definition,
    ! [W0] :
      ( aRewritingSystem0(W0)
     => ( isConfluent0(W0)
      <=> ! [W1,W2,W3] :
            ( ( aElement0(W1)
              & aElement0(W2)
              & aElement0(W3)
              & sdtmndtasgtdt0(W1,W0,W2)
              & sdtmndtasgtdt0(W1,W0,W3) )
           => ? [W4] :
                ( aElement0(W4)
                & sdtmndtasgtdt0(W2,W0,W4)
                & sdtmndtasgtdt0(W3,W0,W4) ) ) ) ) ).

fof(mWCRDef,definition,
    ! [W0] :
      ( aRewritingSystem0(W0)
     => ( isLocallyConfluent0(W0)
      <=> ! [W1,W2,W3] :
            ( ( aElement0(W1)
              & aElement0(W2)
              & aElement0(W3)
              & aReductOfIn0(W2,W1,W0)
              & aReductOfIn0(W3,W1,W0) )
           => ? [W4] :
                ( aElement0(W4)
                & sdtmndtasgtdt0(W2,W0,W4)
                & sdtmndtasgtdt0(W3,W0,W4) ) ) ) ) ).

fof(mTermin,definition,
    ! [W0] :
      ( aRewritingSystem0(W0)
     => ( isTerminating0(W0)
      <=> ! [W1,W2] :
            ( ( aElement0(W1)
              & aElement0(W2) )
           => ( sdtmndtplgtdt0(W1,W0,W2)
             => iLess0(W2,W1) ) ) ) ) ).

fof(mNFRDef,definition,
    ! [W0,W1] :
      ( ( aElement0(W0)
        & aRewritingSystem0(W1) )
     => ! [W2] :
          ( aNormalFormOfIn0(W2,W0,W1)
        <=> ( aElement0(W2)
            & sdtmndtasgtdt0(W0,W1,W2)
            & ~ ? [W3] : aReductOfIn0(W3,W2,W1) ) ) ) ).

fof(mTermNF,axiom,
    ! [W0] :
      ( ( aRewritingSystem0(W0)
        & isTerminating0(W0) )
     => ! [W1] :
          ( aElement0(W1)
         => ? [W2] : aNormalFormOfIn0(W2,W1,W0) ) ) ).

fof(m__,conjecture,
    ! [W0] :
      ( ( aRewritingSystem0(W0)
        & ! [W1,W2] :
            ( ( aElement0(W1)
              & aElement0(W2) )
           => ( ( aReductOfIn0(W2,W1,W0)
                | ? [W3] :
                    ( aElement0(W3)
                    & aReductOfIn0(W3,W1,W0)
                    & sdtmndtplgtdt0(W3,W0,W2) )
                | sdtmndtplgtdt0(W1,W0,W2) )
             => iLess0(W2,W1) ) )
        & isTerminating0(W0)
        & ! [W1,W2,W3] :
            ( ( aElement0(W1)
              & aElement0(W2)
              & aElement0(W3)
              & aReductOfIn0(W2,W1,W0)
              & aReductOfIn0(W3,W1,W0) )
           => ? [W4] :
                ( aElement0(W4)
                & ( W2 = W4
                  | ( ( aReductOfIn0(W4,W2,W0)
                      | ? [W5] :
                          ( aElement0(W5)
                          & aReductOfIn0(W5,W2,W0)
                          & sdtmndtplgtdt0(W5,W0,W4) ) )
                    & sdtmndtplgtdt0(W2,W0,W4) ) )
                & sdtmndtasgtdt0(W2,W0,W4)
                & ( W3 = W4
                  | ( ( aReductOfIn0(W4,W3,W0)
                      | ? [W5] :
                          ( aElement0(W5)
                          & aReductOfIn0(W5,W3,W0)
                          & sdtmndtplgtdt0(W5,W0,W4) ) )
                    & sdtmndtplgtdt0(W3,W0,W4) ) )
                & sdtmndtasgtdt0(W3,W0,W4) ) )
        & isLocallyConfluent0(W0) )
     => ( ! [W1,W2,W3] :
            ( ( aElement0(W1)
              & aElement0(W2)
              & aElement0(W3)
              & ( W1 = W2
                | ( ( aReductOfIn0(W2,W1,W0)
                    | ? [W4] :
                        ( aElement0(W4)
                        & aReductOfIn0(W4,W1,W0)
                        & sdtmndtplgtdt0(W4,W0,W2) ) )
                  & sdtmndtplgtdt0(W1,W0,W2) ) )
              & sdtmndtasgtdt0(W1,W0,W2)
              & ( W1 = W3
                | ( ( aReductOfIn0(W3,W1,W0)
                    | ? [W4] :
                        ( aElement0(W4)
                        & aReductOfIn0(W4,W1,W0)
                        & sdtmndtplgtdt0(W4,W0,W3) ) )
                  & sdtmndtplgtdt0(W1,W0,W3) ) )
              & sdtmndtasgtdt0(W1,W0,W3) )
           => ? [W4] :
                ( aElement0(W4)
                & ( W2 = W4
                  | aReductOfIn0(W4,W2,W0)
                  | ? [W5] :
                      ( aElement0(W5)
                      & aReductOfIn0(W5,W2,W0)
                      & sdtmndtplgtdt0(W5,W0,W4) )
                  | sdtmndtplgtdt0(W2,W0,W4)
                  | sdtmndtasgtdt0(W2,W0,W4) )
                & ( W3 = W4
                  | aReductOfIn0(W4,W3,W0)
                  | ? [W5] :
                      ( aElement0(W5)
                      & aReductOfIn0(W5,W3,W0)
                      & sdtmndtplgtdt0(W5,W0,W4) )
                  | sdtmndtplgtdt0(W3,W0,W4)
                  | sdtmndtasgtdt0(W3,W0,W4) ) ) )
        | isConfluent0(W0) ) ) ).

%------------------------------------------------------------------------------