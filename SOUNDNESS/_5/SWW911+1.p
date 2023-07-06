%------------------------------------------------------------------------------
% File     : SWW911+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : word_to_stackProof__242__stack_move_alloc_arg__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : word_to_stackProof__242__stack_move_alloc_arg__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   17 (   5 unt;   0 def)
%            Number of atoms       :  108 (  44 equ)
%            Maximal formula atoms :   38 (   6 avg)
%            Number of connectives :   95 (   4   ~;   1   |;  47   &)
%                                         (  21 <=>;  22  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   40 (   7 avg)
%            Maximal term depth    :   12 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   52 (  52 usr;  11 con; 0-6 aty)
%            Number of variables   :  109 ( 109   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof('HL_TRUTH',axiom,
    p__01(s__02(cbool__00,cT__00)) ).

fof('HL_FALSITY',axiom,
    ~ p__01(s__02(cbool__00,cF__00)) ).

fof('HL_BOOL_CASES',axiom,
    ! [Vt] :
      ( s__02(cbool__00,Vt) = s__02(cbool__00,cT__00)
      | s__02(cbool__00,Vt) = s__02(cbool__00,cF__00) ) ).

fof('HL_EXT',axiom,
    ! [V_3f2384,V_3f2380,Vf,Vg] :
      ( ! [Vx] : s__02(V_3f2380,chapp__02(s__02(cfun__02(V_3f2384,V_3f2380),Vf),s__02(V_3f2384,Vx))) = s__02(V_3f2380,chapp__02(s__02(cfun__02(V_3f2384,V_3f2380),Vg),s__02(V_3f2384,Vx)))
     => s__02(cfun__02(V_3f2384,V_3f2380),Vf) = s__02(cfun__02(V_3f2384,V_3f2380),Vg) ) ).

fof('thm.bool.ETA_AX',axiom,
    ! [V_27B_27,V_27A_27,V_27t_27,Vx] : s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27t_27),s__02(V_27A_27,Vx))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27t_27),s__02(V_27A_27,Vx))) ).

fof('thm.bool.TRUTH',axiom,
    p__01(s__02(cbool__00,cT__00)) ).

fof('thm.bool.AND_CLAUSES',axiom,
    ! [V_27t_27] :
      ( ( ( p__01(s__02(cbool__00,cT__00))
          & p__01(s__02(cbool__00,V_27t_27)) )
      <=> p__01(s__02(cbool__00,V_27t_27)) )
      & ( ( p__01(s__02(cbool__00,V_27t_27))
          & p__01(s__02(cbool__00,cT__00)) )
      <=> p__01(s__02(cbool__00,V_27t_27)) )
      & ( ( p__01(s__02(cbool__00,cF__00))
          & p__01(s__02(cbool__00,V_27t_27)) )
      <=> p__01(s__02(cbool__00,cF__00)) )
      & ( ( p__01(s__02(cbool__00,V_27t_27))
          & p__01(s__02(cbool__00,cF__00)) )
      <=> p__01(s__02(cbool__00,cF__00)) )
      & ( ( p__01(s__02(cbool__00,V_27t_27))
          & p__01(s__02(cbool__00,V_27t_27)) )
      <=> p__01(s__02(cbool__00,V_27t_27)) ) ) ).

fof('thm.bool.IMP_CLAUSES',axiom,
    ! [V_27t_27] :
      ( ( ( p__01(s__02(cbool__00,cT__00))
         => p__01(s__02(cbool__00,V_27t_27)) )
      <=> p__01(s__02(cbool__00,V_27t_27)) )
      & ( ( p__01(s__02(cbool__00,V_27t_27))
         => p__01(s__02(cbool__00,cT__00)) )
      <=> p__01(s__02(cbool__00,cT__00)) )
      & ( ( p__01(s__02(cbool__00,cF__00))
         => p__01(s__02(cbool__00,V_27t_27)) )
      <=> p__01(s__02(cbool__00,cT__00)) )
      & ( ( p__01(s__02(cbool__00,V_27t_27))
         => p__01(s__02(cbool__00,V_27t_27)) )
      <=> p__01(s__02(cbool__00,cT__00)) )
      & ( ( p__01(s__02(cbool__00,V_27t_27))
         => p__01(s__02(cbool__00,cF__00)) )
      <=> ~ p__01(s__02(cbool__00,V_27t_27)) ) ) ).

fof('thm.bool.EQ_SYM_EQ',axiom,
    ! [V_27A_27,V_27x_27,V_27y_27] :
      ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27y_27)
    <=> s__02(V_27A_27,V_27y_27) = s__02(V_27A_27,V_27x_27) ) ).

fof('thm.bool.EQ_CLAUSES',axiom,
    ! [V_27t_27] :
      ( ( s__02(cbool__00,cT__00) = s__02(cbool__00,V_27t_27)
      <=> p__01(s__02(cbool__00,V_27t_27)) )
      & ( s__02(cbool__00,V_27t_27) = s__02(cbool__00,cT__00)
      <=> p__01(s__02(cbool__00,V_27t_27)) )
      & ( s__02(cbool__00,cF__00) = s__02(cbool__00,V_27t_27)
      <=> ~ p__01(s__02(cbool__00,V_27t_27)) )
      & ( s__02(cbool__00,V_27t_27) = s__02(cbool__00,cF__00)
      <=> ~ p__01(s__02(cbool__00,V_27t_27)) ) ) ).

fof('thm.bool.AND_IMP_INTRO',axiom,
    ! [V_27t1_27,V_27t2_27,V_27t3_27] :
      ( ( p__01(s__02(cbool__00,V_27t1_27))
       => ( p__01(s__02(cbool__00,V_27t2_27))
         => p__01(s__02(cbool__00,V_27t3_27)) ) )
    <=> ( ( p__01(s__02(cbool__00,V_27t1_27))
          & p__01(s__02(cbool__00,V_27t2_27)) )
       => p__01(s__02(cbool__00,V_27t3_27)) ) ) ).

fof('thm.bool.IMP_CONG',axiom,
    ! [V_27x_27,V_27x_7c39_7c_27,V_27y_27,V_27y_7c39_7c_27] :
      ( ( s__02(cbool__00,V_27x_27) = s__02(cbool__00,V_27x_7c39_7c_27)
        & ( p__01(s__02(cbool__00,V_27x_7c39_7c_27))
         => s__02(cbool__00,V_27y_27) = s__02(cbool__00,V_27y_7c39_7c_27) ) )
     => ( ( p__01(s__02(cbool__00,V_27x_27))
         => p__01(s__02(cbool__00,V_27y_27)) )
      <=> ( p__01(s__02(cbool__00,V_27x_7c39_7c_27))
         => p__01(s__02(cbool__00,V_27y_7c39_7c_27)) ) ) ) ).

fof('thm.num.INDUCTION',axiom,
    ! [V_27P_27] :
      ( ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))))
        & ! [V_27n_27] :
            ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))))
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27)))))) ) )
     => ! [V_27n_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27)))) ) ).

fof('thm.arithmetic.ADD_COMM',axiom,
    ! [V_27m_27,V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27))) ).

fof('thm.word_to_stack.stack_move_def',axiom,
    ! [V_27A_27] :
      ( ! [V_27start_27,V_27offset_27,V_27i_27,V_27p_27] : s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2eword__to__stack_2estack__move_27__05(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,V_27start_27),s__02(c_27type_2enum_2enum_27__00,V_27offset_27),s__02(c_27type_2enum_2enum_27__00,V_27i_27),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p_27))) = s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p_27)
      & ! [V_27n_27,V_27start_27,V_27offset_27,V_27i_27,V_27p_27] : s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2eword__to__stack_2estack__move_27__05(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,V_27start_27),s__02(c_27type_2enum_2enum_27__00,V_27offset_27),s__02(c_27type_2enum_2enum_27__00,V_27i_27),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p_27))) = s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eSeq_27__02(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2eword__to__stack_2estack__move_27__05(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27start_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))))),s__02(c_27type_2enum_2enum_27__00,V_27offset_27),s__02(c_27type_2enum_2enum_27__00,V_27i_27),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p_27))),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eSeq_27__02(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eStackLoad_27__02(s__02(c_27type_2enum_2enum_27__00,V_27i_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27start_27),s__02(c_27type_2enum_2enum_27__00,V_27offset_27))))),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eStackStore_27__02(s__02(c_27type_2enum_2enum_27__00,V_27i_27),s__02(c_27type_2enum_2enum_27__00,V_27start_27))))))) ) ).

fof('thm.stackProps.alloc_arg_def',axiom,
    ! [V_27A_27,V__5] :
      ( ! [V_27v1_27,V_27v2_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cbool__00)),V__5),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27v1_27))),s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27v2_27))) = s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27v1_27)))
     => ! [V__4] :
          ( ! [V_27v1_27] : s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cbool__00)),V__4),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27v1_27))) = s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cbool__00)),V__5),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27v1_27)))
         => ! [V__3] :
              ( ! [V_27v_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),cbool__00),V__3),s__02(c_27type_2epair_2eprod_27__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),V_27v_27))) = s__02(cbool__00,c_27const_2epair_2epair__CASE_27__02(s__02(c_27type_2epair_2eprod_27__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),V_27v_27),s__02(cfun__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cbool__00)),V__4)))
             => ! [V__2] :
                  ( ! [V_27v1_27,V_27v2_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),cbool__00),chapp__02(s__02(cfun__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),cbool__00)),V__2),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27v1_27))),s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),V_27v2_27))) = s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27v1_27)))
                 => ! [V__1] :
                      ( ! [V_27v1_27] : s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),cbool__00),chapp__02(s__02(cfun__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),cbool__00)),V__1),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27v1_27))) = s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),cbool__00),chapp__02(s__02(cfun__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),cbool__00)),V__2),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27v1_27)))
                     => ! [V__0] :
                          ( ! [V_27v_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),cbool__00),V__0),s__02(c_27type_2epair_2eprod_27__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),V_27v_27))) = s__02(cbool__00,c_27const_2epair_2epair__CASE_27__02(s__02(c_27type_2epair_2eprod_27__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),V_27v_27),s__02(cfun__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),cbool__00)),V__1)))
                         => ( ! [V_27v_27] :
                                ( p__01(s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eAlloc_27__01(s__02(c_27type_2enum_2enum_27__00,V_27v_27))))))
                              <=> s__02(c_27type_2enum_2enum_27__00,V_27v_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))) )
                            & ! [V_27p2_27,V_27p1_27] :
                                ( p__01(s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eSeq_27__02(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p1_27),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p2_27))))))
                              <=> ( p__01(s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p1_27))))
                                  & p__01(s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p2_27)))) ) )
                            & ! [V_27ri_27,V_27r_27,V_27p2_27,V_27p1_27,V_27c_27] :
                                ( p__01(s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eIf_27__05(s__02(c_27type_2easm_2ecmp_27__00,V_27c_27),s__02(c_27type_2enum_2enum_27__00,V_27r_27),s__02(c_27type_2easm_2ereg__imm_27__01(V_27A_27),V_27ri_27),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p1_27),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p2_27))))))
                              <=> ( p__01(s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p1_27))))
                                  & p__01(s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p2_27)))) ) )
                            & ! [V_27ri_27,V_27r_27,V_27p1_27,V_27c_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eWhile_27__04(s__02(c_27type_2easm_2ecmp_27__00,V_27c_27),s__02(c_27type_2enum_2enum_27__00,V_27r_27),s__02(c_27type_2easm_2ereg__imm_27__01(V_27A_27),V_27ri_27),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p1_27))))) = s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p1_27)))
                            & ! [V_27x2_27,V_27x1_27,V_27v0_27] :
                                ( p__01(s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eCall_27__03(s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)))),V_27x1_27),s__02(c_27type_2esum_2esum_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27v0_27),s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),V_27x2_27))))))
                              <=> ( p__01(s__02(cbool__00,c_27const_2eoption_2eoption__CASE_27__03(s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)))),V_27x1_27),s__02(cbool__00,cT__00),s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),cbool__00),V__0))))
                                  & p__01(s__02(cbool__00,c_27const_2eoption_2eoption__CASE_27__03(s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),V_27x2_27),s__02(cbool__00,cT__00),s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),cbool__00),V__3)))) ) )
                            & s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eSkip_27__00))) = s__02(cbool__00,cT__00)
                            & ! [V_27v3_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eInst_27__01(s__02(c_27type_2easm_2einst_27__01(V_27A_27),V_27v3_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v5_27,V_27v4_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eGet_27__02(s__02(c_27type_2enum_2enum_27__00,V_27v4_27),s__02(c_27type_2estackLang_2estore__name_27__00,V_27v5_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v7_27,V_27v6_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eSet_27__02(s__02(c_27type_2estackLang_2estore__name_27__00,V_27v6_27),s__02(c_27type_2enum_2enum_27__00,V_27v7_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v24_27,V_27v23_27,V_27v22_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eJumpLower_27__03(s__02(c_27type_2enum_2enum_27__00,V_27v22_27),s__02(c_27type_2enum_2enum_27__00,V_27v23_27),s__02(c_27type_2enum_2enum_27__00,V_27v24_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v26_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eRaise_27__01(s__02(c_27type_2enum_2enum_27__00,V_27v26_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v28_27,V_27v27_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eReturn_27__02(s__02(c_27type_2enum_2enum_27__00,V_27v27_27),s__02(c_27type_2enum_2enum_27__00,V_27v28_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v34_27,V_27v33_27,V_27v32_27,V_27v31_27,V_27v30_27,V_27v29_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eFFI_27__06(s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),V_27v29_27),s__02(c_27type_2enum_2enum_27__00,V_27v30_27),s__02(c_27type_2enum_2enum_27__00,V_27v31_27),s__02(c_27type_2enum_2enum_27__00,V_27v32_27),s__02(c_27type_2enum_2enum_27__00,V_27v33_27),s__02(c_27type_2enum_2enum_27__00,V_27v34_27))))) = s__02(cbool__00,cT__00)
                            & s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eTick_27__00))) = s__02(cbool__00,cT__00)
                            & ! [V_27v37_27,V_27v36_27,V_27v35_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eLocValue_27__03(s__02(c_27type_2enum_2enum_27__00,V_27v35_27),s__02(c_27type_2enum_2enum_27__00,V_27v36_27),s__02(c_27type_2enum_2enum_27__00,V_27v37_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v38_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eStackAlloc_27__01(s__02(c_27type_2enum_2enum_27__00,V_27v38_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v39_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eStackFree_27__01(s__02(c_27type_2enum_2enum_27__00,V_27v39_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v41_27,V_27v40_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eStackStore_27__02(s__02(c_27type_2enum_2enum_27__00,V_27v40_27),s__02(c_27type_2enum_2enum_27__00,V_27v41_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v43_27,V_27v42_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eStackStoreAny_27__02(s__02(c_27type_2enum_2enum_27__00,V_27v42_27),s__02(c_27type_2enum_2enum_27__00,V_27v43_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v45_27,V_27v44_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eStackLoad_27__02(s__02(c_27type_2enum_2enum_27__00,V_27v44_27),s__02(c_27type_2enum_2enum_27__00,V_27v45_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v47_27,V_27v46_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eStackLoadAny_27__02(s__02(c_27type_2enum_2enum_27__00,V_27v46_27),s__02(c_27type_2enum_2enum_27__00,V_27v47_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v48_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eStackGetSize_27__01(s__02(c_27type_2enum_2enum_27__00,V_27v48_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v49_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eStackSetSize_27__01(s__02(c_27type_2enum_2enum_27__00,V_27v49_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v51_27,V_27v50_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eBitmapLoad_27__02(s__02(c_27type_2enum_2enum_27__00,V_27v50_27),s__02(c_27type_2enum_2enum_27__00,V_27v51_27))))) = s__02(cbool__00,cT__00)
                            & ! [V_27v52_27] : s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2estackLang_2eHalt_27__01(s__02(c_27type_2enum_2enum_27__00,V_27v52_27))))) = s__02(cbool__00,cT__00) ) ) ) ) ) ) ) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27n_27,V_27st_27,V_27off_27,V_27i_27,V_27p_27] :
      ( p__01(s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p_27))))
     => p__01(s__02(cbool__00,c_27const_2estackProps_2ealloc__arg_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),c_27const_2eword__to__stack_2estack__move_27__05(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27st_27),s__02(c_27type_2enum_2enum_27__00,V_27off_27),s__02(c_27type_2enum_2enum_27__00,V_27i_27),s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27p_27)))))) ) ).

%------------------------------------------------------------------------------