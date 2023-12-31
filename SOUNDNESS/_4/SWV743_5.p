%------------------------------------------------------------------------------
% File     : SWV743_5 : TPTP v8.1.2. Released v6.0.0.
% Domain   : Software Verification
% Problem  : Needham-Schroeder shared-key protocol line 267
% Version  : Especial.
% English  : 

% Refs     : [BN10]  Boehme & Nipkow (2010), Sledgehammer: Judgement Day
%          : [Bla13] Blanchette (2011), Email to Geoff Sutcliffe
% Source   : [Bla13]
% Names    : ns_267 [Bla13]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.4.0, 1.00 v6.4.0
% Syntax   : Number of formulae    :  147 (  49 unt;  41 typ;   0 def)
%            Number of atoms       :  207 (  76 equ)
%            Maximal formula atoms :    7 (   1 avg)
%            Number of connectives :  158 (  57   ~;   3   |;  16   &)
%                                         (  18 <=>;  64  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   17 (   5 avg)
%            Maximal term depth    :    9 (   2 avg)
%            Number of types       :    7 (   6 usr)
%            Number of type conns  :   33 (  21   >;  12   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-3 aty)
%            Number of functors    :   33 (  33 usr;  13 con; 0-4 aty)
%            Number of variables   :  319 ( 310   !;   1   ?; 319   :)
%                                         (   8  !>;   0  ?*;   0  @-;   0  @+)
% SPC      : TF1_CSA_EQU_NAR

% Comments : This file was generated by Isabelle (most likely Sledgehammer)
%            2011-12-13 16:17:02
%------------------------------------------------------------------------------
%----Should-be-implicit typings (8)
tff(ty_tc_Event_Oevent,type,
    event: $tType ).

tff(ty_tc_HOL_Obool,type,
    bool: $tType ).

tff(ty_tc_List_Olist,type,
    list: $tType > $tType ).

tff(ty_tc_Message_Oagent,type,
    agent1: $tType ).

tff(ty_tc_Message_Omsg,type,
    msg: $tType ).

tff(ty_tc_Nat_Onat,type,
    nat: $tType ).

tff(ty_tc_Public_Okeymode,type,
    keymode: $tType ).

tff(ty_tc_fun,type,
    fun: ( $tType * $tType ) > $tType ).

%----Explicit typings (33)
tff(sy_c_Event_Obad,type,
    bad: fun(agent1,bool) ).

tff(sy_c_Event_Oevent_OGets,type,
    gets: ( agent1 * msg ) > event ).

tff(sy_c_Event_Oevent_ONotes,type,
    notes: ( agent1 * msg ) > event ).

tff(sy_c_Event_Oevent_OSays,type,
    says: ( agent1 * agent1 * msg ) > event ).

tff(sy_c_Event_OinitState,type,
    initState: agent1 > fun(msg,bool) ).

tff(sy_c_Event_Oknows,type,
    knows: ( agent1 * list(event) ) > fun(msg,bool) ).

tff(sy_c_List_Olist_OCons,type,
    cons: 
      !>[A2: $tType] : ( ( A2 * list(A2) ) > list(A2) ) ).

tff(sy_c_List_Oset,type,
    set: 
      !>[A2: $tType] : ( list(A2) > fun(A2,bool) ) ).

tff(sy_c_Message_Oagent_OServer,type,
    server: agent1 ).

tff(sy_c_Message_Oagent_OSpy,type,
    spy: agent1 ).

tff(sy_c_Message_Oanalz,type,
    analz: fun(msg,bool) > fun(msg,bool) ).

tff(sy_c_Message_Omsg_OAgent,type,
    agent: agent1 > msg ).

tff(sy_c_Message_Omsg_OCrypt,type,
    crypt: ( nat * msg ) > msg ).

tff(sy_c_Message_Omsg_OKey,type,
    key: nat > msg ).

tff(sy_c_Message_Omsg_OMPair,type,
    mPair: ( msg * msg ) > msg ).

tff(sy_c_Message_Omsg_ONonce,type,
    nonce: nat > msg ).

tff(sy_c_Message_Oparts,type,
    parts: fun(msg,bool) > fun(msg,bool) ).

tff(sy_c_Message_OsymKeys,type,
    symKeys: fun(nat,bool) ).

tff(sy_c_NS__Shared__Mirabelle__iywubrjwsc_Ons__shared,type,
    nS_Sha254967238shared: fun(list(event),bool) ).

tff(sy_c_Orderings_Otop__class_Otop,type,
    top_top: 
      !>[A2: $tType] : A2 ).

tff(sy_c_Public_OpublicKey,type,
    publicKey: keymode > fun(agent1,nat) ).

tff(sy_c_Public_OshrK,type,
    shrK: fun(agent1,nat) ).

tff(sy_c_Set_Oimage,type,
    image: 
      !>[A2: $tType,B2: $tType] : ( ( fun(A2,B2) * fun(A2,bool) ) > fun(B2,bool) ) ).

tff(sy_c_aa,type,
    aa: 
      !>[A2: $tType,B2: $tType] : ( ( fun(A2,B2) * A2 ) > B2 ) ).

tff(sy_c_fFalse,type,
    fFalse: bool ).

tff(sy_c_fTrue,type,
    fTrue: bool ).

tff(sy_c_member,type,
    member: 
      !>[A2: $tType] : ( ( A2 * fun(A2,bool) ) > $o ) ).

tff(sy_c_pp,type,
    pp: bool > $o ).

tff(sy_v_A,type,
    a: agent1 ).

tff(sy_v_B,type,
    b: agent1 ).

tff(sy_v_K,type,
    k: nat ).

tff(sy_v_NA,type,
    na: msg ).

tff(sy_v_evs,type,
    evs: list(event) ).

%----Relevant facts (100)
tff(fact_0_Spy__analz__shrK,axiom,
    ! [Aa: agent1,Evsa: list(event)] :
      ( member(list(event),Evsa,nS_Sha254967238shared)
     => ( member(msg,key(aa(agent1,nat,shrK,Aa)),analz(knows(spy,Evsa)))
      <=> member(agent1,Aa,bad) ) ) ).

tff(fact_1_unique__session__keys,axiom,
    ! [X4: msg,B3: agent1,NA: msg,A3: agent1,Evsa: list(event),X: msg,Ka: nat,Ba: agent1,NAa: msg,Aa: agent1] :
      ( member(event,says(server,Aa,crypt(aa(agent1,nat,shrK,Aa),mPair(NAa,mPair(agent(Ba),mPair(key(Ka),X))))),set(event,Evsa))
     => ( member(event,says(server,A3,crypt(aa(agent1,nat,shrK,A3),mPair(NA,mPair(agent(B3),mPair(key(Ka),X4))))),set(event,Evsa))
       => ( member(list(event),Evsa,nS_Sha254967238shared)
         => ( ( Aa = A3 )
            & ( NAa = NA )
            & ( Ba = B3 )
            & ( X = X4 ) ) ) ) ) ).

tff(fact_2_Spy__spies__bad__shrK,axiom,
    ! [Evsa: list(event),Aa: agent1] :
      ( member(agent1,Aa,bad)
     => member(msg,key(aa(agent1,nat,shrK,Aa)),knows(spy,Evsa)) ) ).

tff(fact_3_shrK__in__knows,axiom,
    ! [Evsa: list(event),Aa: agent1] : member(msg,key(aa(agent1,nat,shrK,Aa)),knows(Aa,Evsa)) ).

tff(fact_4_Crypt__Spy__analz__bad,axiom,
    ! [Evsa: list(event),X: msg,Aa: agent1] :
      ( member(msg,crypt(aa(agent1,nat,shrK,Aa),X),analz(knows(spy,Evsa)))
     => ( member(agent1,Aa,bad)
       => member(msg,X,analz(knows(spy,Evsa))) ) ) ).

tff(fact_5_Spy__in__bad,axiom,
    member(agent1,spy,bad) ).

tff(fact_6_Notes__imp__knows__Spy,axiom,
    ! [Evsa: list(event),X: msg,Aa: agent1] :
      ( member(event,notes(Aa,X),set(event,Evsa))
     => ( member(agent1,Aa,bad)
       => member(msg,X,knows(spy,Evsa)) ) ) ).

tff(fact_7_Says__imp__analz__Spy,axiom,
    ! [Evsa: list(event),X: msg,Ba: agent1,Aa: agent1] :
      ( member(event,says(Aa,Ba,X),set(event,Evsa))
     => member(msg,X,analz(knows(spy,Evsa))) ) ).

tff(fact_8_MPair__analz,axiom,
    ! [H: fun(msg,bool),Y1: msg,X: msg] :
      ( member(msg,mPair(X,Y1),analz(H))
     => ~ ( member(msg,X,analz(H))
         => ~ member(msg,Y1,analz(H)) ) ) ).

tff(fact_9_Says__imp__spies,axiom,
    ! [Evsa: list(event),X: msg,Ba: agent1,Aa: agent1] :
      ( member(event,says(Aa,Ba,X),set(event,Evsa))
     => member(msg,X,knows(spy,Evsa)) ) ).

tff(fact_10_analz__shrK__Decrypt,axiom,
    ! [H: fun(msg,bool),X: msg,Aa: agent1] :
      ( member(msg,crypt(aa(agent1,nat,shrK,Aa),X),analz(H))
     => ( member(msg,key(aa(agent1,nat,shrK,Aa)),analz(H))
       => member(msg,X,analz(H)) ) ) ).

tff(fact_11_A__trusts__NS2,axiom,
    ! [Evsa: list(event),X: msg,Ka: nat,Ba: agent1,NAa: msg,Aa: agent1] :
      ( member(msg,crypt(aa(agent1,nat,shrK,Aa),mPair(NAa,mPair(agent(Ba),mPair(key(Ka),X)))),parts(knows(spy,Evsa)))
     => ( ~ member(agent1,Aa,bad)
       => ( member(list(event),Evsa,nS_Sha254967238shared)
         => member(event,says(server,Aa,crypt(aa(agent1,nat,shrK,Aa),mPair(NAa,mPair(agent(Ba),mPair(key(Ka),X))))),set(event,Evsa)) ) ) ) ).

tff(fact_12_Notes__imp__knows,axiom,
    ! [Evsa: list(event),X: msg,Aa: agent1] :
      ( member(event,notes(Aa,X),set(event,Evsa))
     => member(msg,X,knows(Aa,Evsa)) ) ).

tff(fact_13_Says__imp__knows,axiom,
    ! [Evsa: list(event),X: msg,Ba: agent1,Aa: agent1] :
      ( member(event,says(Aa,Ba,X),set(event,Evsa))
     => member(msg,X,knows(Aa,Evsa)) ) ).

tff(fact_14_analz_OInj,axiom,
    ! [H: fun(msg,bool),X: msg] :
      ( member(msg,X,H)
     => member(msg,X,analz(H)) ) ).

tff(fact_15_analz__idem,axiom,
    ! [H: fun(msg,bool)] : ( analz(analz(H)) = analz(H) ) ).

tff(fact_16_parts__idem,axiom,
    ! [H: fun(msg,bool)] : ( parts(parts(H)) = parts(H) ) ).

tff(fact_17_parts_OInj,axiom,
    ! [H: fun(msg,bool),X: msg] :
      ( member(msg,X,H)
     => member(msg,X,parts(H)) ) ).

tff(fact_18_msg_Osimps_I6_J,axiom,
    ! [Msg23: msg,Msg14: msg,Msg22: msg,Msg13: msg] :
      ( ( mPair(Msg13,Msg22) = mPair(Msg14,Msg23) )
    <=> ( ( Msg13 = Msg14 )
        & ( Msg22 = Msg23 ) ) ) ).

tff(fact_19_msg_Osimps_I4_J,axiom,
    ! [Nat3: nat,Nat2: nat] :
      ( ( key(Nat2) = key(Nat3) )
    <=> ( Nat2 = Nat3 ) ) ).

tff(fact_20_msg_Osimps_I7_J,axiom,
    ! [Msg4: msg,Nat3: nat,Msg3: msg,Nat2: nat] :
      ( ( crypt(Nat2,Msg3) = crypt(Nat3,Msg4) )
    <=> ( ( Nat2 = Nat3 )
        & ( Msg3 = Msg4 ) ) ) ).

tff(fact_21_msg_Osimps_I1_J,axiom,
    ! [Agent5: agent1,Agent4: agent1] :
      ( ( agent(Agent4) = agent(Agent5) )
    <=> ( Agent4 = Agent5 ) ) ).

tff(fact_22_event_Osimps_I1_J,axiom,
    ! [Msg4: msg,Agent22: agent1,Agent12: agent1,Msg3: msg,Agent21: agent1,Agent11: agent1] :
      ( ( says(Agent11,Agent21,Msg3) = says(Agent12,Agent22,Msg4) )
    <=> ( ( Agent11 = Agent12 )
        & ( Agent21 = Agent22 )
        & ( Msg3 = Msg4 ) ) ) ).

tff(fact_23_shrK__injective,axiom,
    ! [Y2: agent1,X1: agent1] :
      ( ( aa(agent1,nat,shrK,X1) = aa(agent1,nat,shrK,Y2) )
    <=> ( X1 = Y2 ) ) ).

tff(fact_24_event_Osimps_I3_J,axiom,
    ! [Msg4: msg,Agent5: agent1,Msg3: msg,Agent4: agent1] :
      ( ( notes(Agent4,Msg3) = notes(Agent5,Msg4) )
    <=> ( ( Agent4 = Agent5 )
        & ( Msg3 = Msg4 ) ) ) ).

tff(fact_25_analz__disj__parts,axiom,
    ! [H: fun(msg,bool),X: msg] :
      ( ( member(msg,X,analz(H))
        | member(msg,X,parts(H)) )
    <=> member(msg,X,parts(H)) ) ).

tff(fact_26_analz__conj__parts,axiom,
    ! [H: fun(msg,bool),X: msg] :
      ( ( member(msg,X,analz(H))
        & member(msg,X,parts(H)) )
    <=> member(msg,X,analz(H)) ) ).

tff(fact_27_parts__analz,axiom,
    ! [H: fun(msg,bool)] : ( parts(analz(H)) = parts(H) ) ).

tff(fact_28_analz__parts,axiom,
    ! [H: fun(msg,bool)] : ( analz(parts(H)) = parts(H) ) ).

tff(fact_29_MPair__parts,axiom,
    ! [H: fun(msg,bool),Y1: msg,X: msg] :
      ( member(msg,mPair(X,Y1),parts(H))
     => ~ ( member(msg,X,parts(H))
         => ~ member(msg,Y1,parts(H)) ) ) ).

tff(fact_30_parts__partsD,axiom,
    ! [H: fun(msg,bool),X: msg] :
      ( member(msg,X,parts(parts(H)))
     => member(msg,X,parts(H)) ) ).

tff(fact_31_analz__into__parts,axiom,
    ! [H: fun(msg,bool),C: msg] :
      ( member(msg,C,analz(H))
     => member(msg,C,parts(H)) ) ).

tff(fact_32_not__parts__not__analz,axiom,
    ! [H: fun(msg,bool),C: msg] :
      ( ~ member(msg,C,parts(H))
     => ~ member(msg,C,analz(H)) ) ).

tff(fact_33_parts_OSnd,axiom,
    ! [H: fun(msg,bool),Y1: msg,X: msg] :
      ( member(msg,mPair(X,Y1),parts(H))
     => member(msg,Y1,parts(H)) ) ).

tff(fact_34_parts_OFst,axiom,
    ! [H: fun(msg,bool),Y1: msg,X: msg] :
      ( member(msg,mPair(X,Y1),parts(H))
     => member(msg,X,parts(H)) ) ).

tff(fact_35_spies__partsEs_I2_J,axiom,
    ! [H: fun(msg,bool),X: msg,Ka: nat] :
      ( member(msg,crypt(Ka,X),parts(H))
     => member(msg,X,parts(H)) ) ).

tff(fact_36_parts_OBody,axiom,
    ! [H: fun(msg,bool),X: msg,Ka: nat] :
      ( member(msg,crypt(Ka,X),parts(H))
     => member(msg,X,parts(H)) ) ).

tff(fact_37_Says__imp__parts__knows__Spy,axiom,
    ! [Evsa: list(event),X: msg,Ba: agent1,Aa: agent1] :
      ( member(event,says(Aa,Ba,X),set(event,Evsa))
     => member(msg,X,parts(knows(spy,Evsa))) ) ).

tff(fact_38_analz__analzD,axiom,
    ! [H: fun(msg,bool),X: msg] :
      ( member(msg,X,analz(analz(H)))
     => member(msg,X,analz(H)) ) ).

tff(fact_39_NS3__msg__in__parts__spies,axiom,
    ! [Evsa: list(event),X: msg,Ka: msg,Ba: msg,N: msg,KA: nat,Aa: agent1,S: agent1] :
      ( member(event,says(S,Aa,crypt(KA,mPair(N,mPair(Ba,mPair(Ka,X))))),set(event,Evsa))
     => member(msg,X,parts(knows(spy,Evsa))) ) ).

tff(fact_40_Spy__see__shrK,axiom,
    ! [Aa: agent1,Evsa: list(event)] :
      ( member(list(event),Evsa,nS_Sha254967238shared)
     => ( member(msg,key(aa(agent1,nat,shrK,Aa)),parts(knows(spy,Evsa)))
      <=> member(agent1,Aa,bad) ) ) ).

tff(fact_41_analz_OSnd,axiom,
    ! [H: fun(msg,bool),Y1: msg,X: msg] :
      ( member(msg,mPair(X,Y1),analz(H))
     => member(msg,Y1,analz(H)) ) ).

tff(fact_42_analz_OFst,axiom,
    ! [H: fun(msg,bool),Y1: msg,X: msg] :
      ( member(msg,mPair(X,Y1),analz(H))
     => member(msg,X,analz(H)) ) ).

tff(fact_43_msg_Osimps_I41_J,axiom,
    ! [Nat1: nat,Msg2: msg,Msg11: msg] : ( mPair(Msg11,Msg2) != key(Nat1) ) ).

tff(fact_44_msg_Osimps_I40_J,axiom,
    ! [Msg2: msg,Msg11: msg,Nat1: nat] : ( key(Nat1) != mPair(Msg11,Msg2) ) ).

tff(fact_45_msg_Osimps_I48_J,axiom,
    ! [Msg: msg,Nat: nat,Msg21: msg,Msg12: msg] : ( mPair(Msg12,Msg21) != crypt(Nat,Msg) ) ).

tff(fact_46_msg_Osimps_I49_J,axiom,
    ! [Msg21: msg,Msg12: msg,Msg: msg,Nat: nat] : ( crypt(Nat,Msg) != mPair(Msg12,Msg21) ) ).

tff(fact_47_msg_Osimps_I43_J,axiom,
    ! [Nat1: nat,Msg: msg,Nat: nat] : ( crypt(Nat,Msg) != key(Nat1) ) ).

tff(fact_48_msg_Osimps_I42_J,axiom,
    ! [Msg: msg,Nat: nat,Nat1: nat] : ( key(Nat1) != crypt(Nat,Msg) ) ).

tff(fact_49_msg_Osimps_I17_J,axiom,
    ! [Agent3: agent1,Msg2: msg,Msg11: msg] : ( mPair(Msg11,Msg2) != agent(Agent3) ) ).

tff(fact_50_msg_Osimps_I16_J,axiom,
    ! [Msg2: msg,Msg11: msg,Agent3: agent1] : ( agent(Agent3) != mPair(Msg11,Msg2) ) ).

tff(fact_51_msg_Osimps_I12_J,axiom,
    ! [Nat: nat,Agent3: agent1] : ( agent(Agent3) != key(Nat) ) ).

tff(fact_52_msg_Osimps_I13_J,axiom,
    ! [Agent3: agent1,Nat: nat] : ( key(Nat) != agent(Agent3) ) ).

tff(fact_53_msg_Osimps_I19_J,axiom,
    ! [Agent3: agent1,Msg: msg,Nat: nat] : ( crypt(Nat,Msg) != agent(Agent3) ) ).

tff(fact_54_msg_Osimps_I18_J,axiom,
    ! [Msg: msg,Nat: nat,Agent3: agent1] : ( agent(Agent3) != crypt(Nat,Msg) ) ).

tff(fact_55_agent_Osimps_I4_J,axiom,
    server != spy ).

tff(fact_56_agent_Osimps_I5_J,axiom,
    spy != server ).

tff(fact_57_event_Osimps_I6_J,axiom,
    ! [Msg: msg,Agent: agent1,Msg1: msg,Agent2: agent1,Agent1: agent1] : ( says(Agent1,Agent2,Msg1) != notes(Agent,Msg) ) ).

tff(fact_58_event_Osimps_I7_J,axiom,
    ! [Msg1: msg,Agent2: agent1,Agent1: agent1,Msg: msg,Agent: agent1] : ( notes(Agent,Msg) != says(Agent1,Agent2,Msg1) ) ).

tff(fact_59_Oops__parts__spies,axiom,
    ! [Evsa: list(event),X: msg,Ka: msg,Ba: msg,NAa: msg,Aa: agent1] :
      ( member(event,says(server,Aa,crypt(aa(agent1,nat,shrK,Aa),mPair(NAa,mPair(Ba,mPair(Ka,X))))),set(event,Evsa))
     => member(msg,Ka,parts(knows(spy,Evsa))) ) ).

tff(fact_60_Server__not__bad,axiom,
    ~ member(agent1,server,bad) ).

tff(fact_61_analz__impI,axiom,
    ! [Q: bool,Evsa: list(event),Y1: msg] :
      ( ( ~ member(msg,Y1,analz(knows(spy,Evsa)))
       => pp(Q) )
     => ( ~ member(msg,Y1,analz(knows(spy,Evsa)))
       => pp(Q) ) ) ).

tff(fact_62_analz__trivial,axiom,
    ! [H: fun(msg,bool)] :
      ( ! [X3: msg,Y: msg] : ~ member(msg,mPair(X3,Y),H)
     => ( ! [X3: msg,K1: nat] : ~ member(msg,crypt(K1,X3),H)
       => ( analz(H) = H ) ) ) ).

tff(fact_63_ns__shared_OOops,axiom,
    ! [X: msg,NAa: nat,NB1: nat,Ka: nat,Aa: agent1,Ba: agent1,Evso: list(event)] :
      ( member(list(event),Evso,nS_Sha254967238shared)
     => ( member(event,says(Ba,Aa,crypt(Ka,nonce(NB1))),set(event,Evso))
       => ( member(event,says(server,Aa,crypt(aa(agent1,nat,shrK,Aa),mPair(nonce(NAa),mPair(agent(Ba),mPair(key(Ka),X))))),set(event,Evso))
         => member(list(event),cons(event,notes(spy,mPair(nonce(NAa),mPair(nonce(NB1),key(Ka)))),Evso),nS_Sha254967238shared) ) ) ) ).

tff(fact_64_analz__spies__pubK,axiom,
    ! [Evsa: list(event),Aa: agent1,B1: keymode] : member(msg,key(aa(agent1,nat,publicKey(B1),Aa)),analz(knows(spy,Evsa))) ).

tff(fact_65_cert__A__form,axiom,
    ! [Evsa: list(event),X: msg,Ka: nat,Ba: agent1,NAa: msg,Aa: agent1] :
      ( member(msg,crypt(aa(agent1,nat,shrK,Aa),mPair(NAa,mPair(agent(Ba),mPair(key(Ka),X)))),parts(knows(spy,Evsa)))
     => ( ~ member(agent1,Aa,bad)
       => ( member(list(event),Evsa,nS_Sha254967238shared)
         => ( ~ member(nat,Ka,image(agent1,nat,shrK,top_top(fun(agent1,bool))))
            & ( X = crypt(aa(agent1,nat,shrK,Ba),mPair(key(Ka),agent(Aa))) ) ) ) ) ) ).

tff(fact_66_Gets__imp__knows__agents,axiom,
    ! [Evsa: list(event),X: msg,Aa: agent1] :
      ( ( Aa != spy )
     => ( member(event,gets(Aa,X),set(event,Evsa))
       => member(msg,X,knows(Aa,Evsa)) ) ) ).

tff(fact_67_analz__Decrypt_H,axiom,
    ! [H: fun(msg,bool),X: msg,Ka: nat] :
      ( member(msg,crypt(Ka,X),analz(H))
     => ( member(nat,Ka,symKeys)
       => ( member(msg,key(Ka),analz(H))
         => member(msg,X,analz(H)) ) ) ) ).

tff(fact_68_shrK__in__initState,axiom,
    ! [Aa: agent1] : member(msg,key(aa(agent1,nat,shrK,Aa)),initState(Aa)) ).

tff(fact_69_Says__Server__message__form,axiom,
    ! [Evsa: list(event),X: msg,Ka: nat,Ba: agent1,N: msg,K: nat,Aa: agent1] :
      ( member(event,says(server,Aa,crypt(K,mPair(N,mPair(agent(Ba),mPair(key(Ka),X))))),set(event,Evsa))
     => ( member(list(event),Evsa,nS_Sha254967238shared)
       => ( ~ member(nat,Ka,image(agent1,nat,shrK,top_top(fun(agent1,bool))))
          & ( X = crypt(aa(agent1,nat,shrK,Ba),mPair(key(Ka),agent(Aa))) )
          & ( K = aa(agent1,nat,shrK,Aa) ) ) ) ) ).

tff(fact_70_ns__shared_ONS3,axiom,
    ! [X: msg,Ka: nat,Ba: agent1,NAa: nat,S: agent1,Aa: agent1,Evs3: list(event)] :
      ( member(list(event),Evs3,nS_Sha254967238shared)
     => ( ( Aa != server )
       => ( member(event,says(S,Aa,crypt(aa(agent1,nat,shrK,Aa),mPair(nonce(NAa),mPair(agent(Ba),mPair(key(Ka),X))))),set(event,Evs3))
         => ( member(event,says(Aa,server,mPair(agent(Aa),mPair(agent(Ba),nonce(NAa)))),set(event,Evs3))
           => member(list(event),cons(event,says(Aa,Ba,X),Evs3),nS_Sha254967238shared) ) ) ) ) ).

tff(fact_71_msg_Osimps_I3_J,axiom,
    ! [Nat3: nat,Nat2: nat] :
      ( ( nonce(Nat2) = nonce(Nat3) )
    <=> ( Nat2 = Nat3 ) ) ).

tff(fact_72_publicKey__inject,axiom,
    ! [A3: agent1,C: keymode,Aa: agent1,B1: keymode] :
      ( ( aa(agent1,nat,publicKey(B1),Aa) = aa(agent1,nat,publicKey(C),A3) )
    <=> ( ( B1 = C )
        & ( Aa = A3 ) ) ) ).

tff(fact_73_event_Osimps_I2_J,axiom,
    ! [Msg4: msg,Agent5: agent1,Msg3: msg,Agent4: agent1] :
      ( ( gets(Agent4,Msg3) = gets(Agent5,Msg4) )
    <=> ( ( Agent4 = Agent5 )
        & ( Msg3 = Msg4 ) ) ) ).

tff(fact_74_shrK__image__eq,axiom,
    ! [AA: fun(agent1,bool),X1: agent1] :
      ( member(nat,aa(agent1,nat,shrK,X1),image(agent1,nat,shrK,AA))
    <=> member(agent1,X1,AA) ) ).

tff(fact_75_ext,axiom,
    ! [B2: $tType,A2: $tType,G: fun(A2,B2),F: fun(A2,B2)] :
      ( ! [X2: A2] : ( aa(A2,B2,F,X2) = aa(A2,B2,G,X2) )
     => ( F = G ) ) ).

tff(fact_76_mem__def,axiom,
    ! [A2: $tType,Aa: fun(A2,bool),X1: A2] :
      ( member(A2,X1,Aa)
    <=> pp(aa(A2,bool,Aa,X1)) ) ).

tff(fact_77_publicKey__image__eq,axiom,
    ! [AA: fun(agent1,bool),C: keymode,X1: agent1,B1: keymode] :
      ( member(nat,aa(agent1,nat,publicKey(B1),X1),image(agent1,nat,publicKey(C),AA))
    <=> ( ( B1 = C )
        & member(agent1,X1,AA) ) ) ).

tff(fact_78_sym__shrK,axiom,
    ! [X: agent1] : member(nat,aa(agent1,nat,shrK,X),symKeys) ).

tff(fact_79_publicKey__in__initState,axiom,
    ! [Ba: agent1,Aa: agent1,B1: keymode] : member(msg,key(aa(agent1,nat,publicKey(B1),Aa)),initState(Ba)) ).

tff(fact_80_spies__pubK,axiom,
    ! [Evsa: list(event),Aa: agent1,B1: keymode] : member(msg,key(aa(agent1,nat,publicKey(B1),Aa)),knows(spy,Evsa)) ).

tff(fact_81_knows__Spy__Gets,axiom,
    ! [Evsa: list(event),X: msg,Aa: agent1] : ( knows(spy,cons(event,gets(Aa,X),Evsa)) = knows(spy,Evsa) ) ).

tff(fact_82_shrK__notin__image__publicKey,axiom,
    ! [AA: fun(agent1,bool),B1: keymode,X1: agent1] : ~ member(nat,aa(agent1,nat,shrK,X1),image(agent1,nat,publicKey(B1),AA)) ).

tff(fact_83_not__symKeys__pubK,axiom,
    ! [Aa: agent1,B1: keymode] : ~ member(nat,aa(agent1,nat,publicKey(B1),Aa),symKeys) ).

tff(fact_84_publicKey__notin__image__shrK,axiom,
    ! [AA: fun(agent1,bool),X1: agent1,B1: keymode] : ~ member(nat,aa(agent1,nat,publicKey(B1),X1),image(agent1,nat,shrK,AA)) ).

tff(fact_85_symKeys__neq__imp__neq,axiom,
    ! [K: nat,Ka: nat] :
      ( ~ ( member(nat,Ka,symKeys)
        <=> member(nat,K,symKeys) )
     => ( Ka != K ) ) ).

tff(fact_86_injective__publicKey,axiom,
    ! [A1: agent1,C2: keymode,A: agent1,B: keymode] :
      ( ( aa(agent1,nat,publicKey(B),A) = aa(agent1,nat,publicKey(C2),A1) )
     => ( ( B = C2 )
        & ( A = A1 ) ) ) ).

tff(fact_87_Nonce__notin__initState,axiom,
    ! [Ba: agent1,N: nat] : ~ member(msg,nonce(N),parts(initState(Ba))) ).

tff(fact_88_msg_Osimps_I31_J,axiom,
    ! [Nat1: nat,Nat: nat] : ( key(Nat) != nonce(Nat1) ) ).

tff(fact_89_msg_Osimps_I30_J,axiom,
    ! [Nat: nat,Nat1: nat] : ( nonce(Nat1) != key(Nat) ) ).

tff(fact_90_msg_Osimps_I34_J,axiom,
    ! [Msg2: msg,Msg11: msg,Nat1: nat] : ( nonce(Nat1) != mPair(Msg11,Msg2) ) ).

tff(fact_91_msg_Osimps_I35_J,axiom,
    ! [Nat1: nat,Msg2: msg,Msg11: msg] : ( mPair(Msg11,Msg2) != nonce(Nat1) ) ).

tff(fact_92_msg_Osimps_I36_J,axiom,
    ! [Msg: msg,Nat: nat,Nat1: nat] : ( nonce(Nat1) != crypt(Nat,Msg) ) ).

tff(fact_93_msg_Osimps_I37_J,axiom,
    ! [Nat1: nat,Msg: msg,Nat: nat] : ( crypt(Nat,Msg) != nonce(Nat1) ) ).

tff(fact_94_msg_Osimps_I10_J,axiom,
    ! [Nat: nat,Agent3: agent1] : ( agent(Agent3) != nonce(Nat) ) ).

tff(fact_95_msg_Osimps_I11_J,axiom,
    ! [Agent3: agent1,Nat: nat] : ( nonce(Nat) != agent(Agent3) ) ).

tff(fact_96_pubK__neq__shrK,axiom,
    ! [C1: agent1,B: keymode,A: agent1] : ( aa(agent1,nat,shrK,A) != aa(agent1,nat,publicKey(B),C1) ) ).

tff(fact_97_shrK__neq__pubK,axiom,
    ! [A: agent1,C1: agent1,B: keymode] : ( aa(agent1,nat,publicKey(B),C1) != aa(agent1,nat,shrK,A) ) ).

tff(fact_98_analz__mono__contra_I3_J,axiom,
    ! [Evsa: list(event),X: msg,Aa: agent1,C: msg] :
      ( ~ member(msg,C,analz(knows(spy,cons(event,gets(Aa,X),Evsa))))
     => ~ member(msg,C,analz(knows(spy,Evsa))) ) ).

tff(fact_99_event_Osimps_I5_J,axiom,
    ! [Msg1: msg,Agent2: agent1,Agent1: agent1,Msg: msg,Agent: agent1] : ( gets(Agent,Msg) != says(Agent1,Agent2,Msg1) ) ).

%----Helper facts (2)
tff(help_pp_1_1_U,axiom,
    ~ pp(fFalse) ).

tff(help_pp_2_1_U,axiom,
    pp(fTrue) ).

%----Conjectures (4)
tff(conj_0,hypothesis,
    ~ member(agent1,a,bad) ).

tff(conj_1,hypothesis,
    ~ member(agent1,b,bad) ).

tff(conj_2,hypothesis,
    member(list(event),evs,nS_Sha254967238shared) ).

tff(conj_3,conjecture,
    ( ~ member(event,says(server,a,crypt(aa(agent1,nat,shrK,a),mPair(na,mPair(agent(b),mPair(key(k),crypt(aa(agent1,nat,shrK,b),mPair(key(k),agent(a)))))))),set(event,evs))
    | ? [NB: msg] : member(event,notes(spy,mPair(na,mPair(NB,key(k)))),set(event,evs))
    | ~ member(msg,key(k),analz(knows(spy,evs))) ) ).

%------------------------------------------------------------------------------
