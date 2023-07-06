%--------------------------------------------------------------------------
% File     : AGT022+2 : TPTP v8.1.0. Bugfixed v3.1.0.
% Domain   : Agents
% Problem  : Problem for the CPlanT system
% Version  : [Bar03] axioms : Especial.
% English  :

% Refs     : [Bar03] Barta, J. (2003), Email to G. Sutcliffe
%          : [BT+03] Barta et al. (2003), Meta-Reasoning in CPlanT Multi-Ag
%          : [TBP03] Tozicka et al. (2003), Meta-reasoning for Agents' Priv
% Source   : [Bar03]
% Names    :

% Status   : Theorem
% Rating   : 0.67 v7.5.0, 0.72 v7.4.0, 0.70 v7.3.0, 0.72 v7.2.0, 0.69 .0, 0.65 v7.0.0, 0.77 v6.3.0, 0.71 v6.2.0, 0.76 .0, 0.87 v6.0.0, 0.83 v5.5.0, 0.93 v5.3.0, 0.96 v5.2.0, 0.90 .0, 0.86 v5.0.0, 0.83 v4.0.0, 0.79 v3.7.0, 0.85 v3.5.0, 0.79 v3.4.0, 0.84 v3.3.0, 0.93 v3.2.0, 0.82 .0
% Syntax   : Number of formulae    :  923 ( 891 unt;   0 def)
%            Number of atoms       : 1023 (   2 equ)
%            Maximal formula atoms :    6 (   1 avg)
%            Number of connectives :  149 (  49   ~;   1   |;  67   &)
%                                         (  16 <=>;  16  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   1 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   17 (  16 usr;   0 prp; 1-4 aty)
%            Number of functors    :  290 ( 290 usr; 286 con; 0-2 aty)
%            Number of variables   :   72 (  70   !;   2   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
% Bugfixes : v3.0.0 - Bugfixes in NUM005+1.ax
%          : v3.1.0 - Changes to NUM005 axioms
%--------------------------------------------------------------------------
%----Include axioms of CPlanT
%------------------------------------------------------------------------------
% File     : AGT001+0 : TPTP v8.1.0. Released v2.7.0.
% Domain   : Agents
% Axioms   : CPlanT system
% Version  : [Bar03] axioms : Especial.
% English  :

% Refs     : [Bar03] Barta, J. (2003), Email to G. Sutcliffe
% Source   : [Bar03]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   20 (   0 unt;   0 def)
%            Number of atoms       :   98 (   0 equ)
%            Maximal formula atoms :    6 (   4 avg)
%            Number of connectives :   79 (   1   ~;   0   |;  58   &)
%                                         (  14 <=>;   6  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   7 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   10 (  10 usr;   0 prp; 2-4 aty)
%            Number of functors    :   47 (  47 usr;  47 con; 0-0 aty)
%            Number of variables   :   35 (  35   !;   0   ?)
% SPC      : 

% Comments : Requires NUM005+0.ax NUM005+1.ax
%------------------------------------------------------------------------------
fof(a1_1,axiom,
    ! [A,C,N,L] :
      ( accept_team(A,L,C,N)
    <=> ( accept_city(A,C)
        & accept_leader(A,L)
        & accept_number(A,N) ) ) ).

fof(a1_2,axiom,
    ! [A,N,M] :
      ( ( accept_number(A,N)
        & less(M,N) )
     => accept_number(A,M) ) ).

fof(a1_3,axiom,
    ! [A,N,M,P] :
      ( ( accept_population(A,P,N)
        & less(M,N) )
     => accept_population(A,P,M) ) ).

fof(a1_4,axiom,
    ! [A,L,C] :
      ( the_agent_in_all_proposed_teams(A,L,C)
     => ( accept_leader(A,L)
        & accept_city(A,C) ) ) ).

fof(a1_5,axiom,
    ! [A,L,C] :
      ( any_agent_in_all_proposed_teams(A,L,C)
     => accept_leader(A,L) ) ).

fof(a1_6,axiom,
    ! [A,L,C] :
      ( the_agent_not_in_any_proposed_teams(A,L,C)
     => ~ ( accept_city(A,C)
          & accept_leader(A,L) ) ) ).

fof(a1_7,axiom,
    ! [A,N] :
      ( min_number_of_proposed_agents(A,N)
     => accept_number(A,N) ) ).

fof(a2_1,axiom,
    ! [A] :
      ( ( accept_population(A,atheist,n65)
        & accept_population(A,christian,n20)
        & accept_population(A,muslim,n7)
        & accept_population(A,native,n4)
        & accept_population(A,other,n4) )
    <=> accept_city(A,suffertown) ) ).

fof(a2_2,axiom,
    ! [A] :
      ( ( accept_population(A,atheist,n54)
        & accept_population(A,christian,n23)
        & accept_population(A,muslim,n3)
        & accept_population(A,native,n1)
        & accept_population(A,other,n9) )
    <=> accept_city(A,centraltown) ) ).

fof(a2_3,axiom,
    ! [A] :
      ( ( accept_population(A,atheist,n30)
        & accept_population(A,christian,n8)
        & accept_population(A,muslim,n60)
        & accept_population(A,native,n1)
        & accept_population(A,other,n1) )
    <=> accept_city(A,sunnysideport) ) ).

fof(a2_4,axiom,
    ! [A] :
      ( ( accept_population(A,atheist,n70)
        & accept_population(A,christian,n15)
        & accept_population(A,muslim,n1)
        & accept_population(A,native,n10)
        & accept_population(A,other,n4) )
    <=> accept_city(A,centrallakecity) ) ).

fof(a2_5,axiom,
    ! [A] :
      ( ( accept_population(A,atheist,n68)
        & accept_population(A,christian,n16)
        & accept_population(A,muslim,n1)
        & accept_population(A,native,n11)
        & accept_population(A,other,n4) )
    <=> accept_city(A,stjosephburgh) ) ).

fof(a2_6,axiom,
    ! [A] :
      ( ( accept_population(A,atheist,n70)
        & accept_population(A,christian,n13)
        & accept_population(A,muslim,n0)
        & accept_population(A,native,n15)
        & accept_population(A,other,n2) )
    <=> accept_city(A,northport) ) ).

fof(a2_7,axiom,
    ! [A] :
      ( ( accept_population(A,atheist,n12)
        & accept_population(A,christian,n3)
        & accept_population(A,muslim,n0)
        & accept_population(A,native,n85)
        & accept_population(A,other,n0) )
    <=> accept_city(A,coastvillage) ) ).

fof(a2_8,axiom,
    ! [A] :
      ( ( accept_population(A,atheist,n0)
        & accept_population(A,christian,n0)
        & accept_population(A,muslim,n0)
        & accept_population(A,native,n100)
        & accept_population(A,other,n0) )
    <=> accept_city(A,sunsetpoint) ) ).

fof(a2_9,axiom,
    ! [A] :
      ( ( accept_population(A,atheist,n75)
        & accept_population(A,christian,n24)
        & accept_population(A,muslim,n1)
        & accept_population(A,native,n0)
        & accept_population(A,other,n0) )
    <=> accept_city(A,towna) ) ).

fof(a2_10,axiom,
    ! [A] :
      ( ( accept_population(A,atheist,n75)
        & accept_population(A,christian,n25)
        & accept_population(A,muslim,n0)
        & accept_population(A,native,n0)
        & accept_population(A,other,n0) )
    <=> accept_city(A,citya) ) ).

fof(a2_11,axiom,
    ! [A] :
      ( ( accept_population(A,atheist,n70)
        & accept_population(A,christian,n20)
        & accept_population(A,muslim,n8)
        & accept_population(A,native,n0)
        & accept_population(A,other,n2) )
    <=> accept_city(A,townb) ) ).

fof(a2_12,axiom,
    ! [A] :
      ( ( accept_population(A,atheist,n78)
        & accept_population(A,christian,n20)
        & accept_population(A,muslim,n1)
        & accept_population(A,native,n0)
        & accept_population(A,other,n1) )
    <=> accept_city(A,cityb) ) ).

fof(a2_13,axiom,
    ! [A] :
      ( ( accept_population(A,atheist,n30)
        & accept_population(A,christian,n0)
        & accept_population(A,muslim,n65)
        & accept_population(A,native,n0)
        & accept_population(A,other,n5) )
    <=> accept_city(A,townc) ) ).

%------------------------------------------------------------------------------

%----Include events of CPlanT
%--------------------------------------------------------------------------
% File     : AGT001+1 : TPTP v8.1.0. Released v2.7.0.
% Domain   : Agents
% Axioms   : CPlanT events
% Version  : [Bar03] axioms : Especial.
% English  :

% Refs     : [Bar03] Barta, J. (2003), Email to G. Sutcliffe
% Source   : [Bar03]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :  249 ( 249 unt;   0 def)
%            Number of atoms       :  249 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :   40 (  40   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   1 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   5 usr;   0 prp; 2-4 aty)
%            Number of functors    :   22 (  22 usr;  22 con; 0-0 aty)
%            Number of variables   :    0 (   0   !;   0   ?)
% SPC      : 

% Comments : Requires AGT001+0.ax
%--------------------------------------------------------------------------
fof(event_1,axiom,
    accept_team(countryahumanitarianorganization,countryacivilorganization,cityb,n6) ).

fof(event_2,axiom,
    accept_team(countryahumanitarianorganization,countryacivilorganization,towna,n6) ).

fof(event_3,axiom,
    accept_team(countryahumanitarianorganization,countryacivilorganization,coastvillage,n6) ).

fof(event_4,axiom,
    accept_team(countryahumanitarianorganization,countryafirstaidorganization,coastvillage,n6) ).

fof(event_5,axiom,
    the_agent_in_all_proposed_teams(countryahumanitarianorganization,christiancountrychumanitarianorganization,coastvillage) ).

fof(event_6,axiom,
    any_agent_in_all_proposed_teams(countryahumanitarianorganization,christiancountrychumanitarianorganization,coastvillage) ).

fof(event_7,axiom,
    accept_team(countryccivilorganization,countrybhumanitarianorganization,cityb,n2) ).

fof(event_8,axiom,
    accept_team(muslimcountrybhumanitarianorganization,countrybhumanitarianorganization,cityb,n4) ).

fof(event_9,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,countrycmedicalorganization,towna,n4) ).

fof(event_10,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,countrycmedicalorganization,towna,n5) ).

fof(event_11,axiom,
    the_agent_not_in_any_proposed_teams(muslimcountrybhumanitarianorganization,countryacivilorganization,towna) ).

fof(event_12,axiom,
    any_agent_in_all_proposed_teams(muslimcountrybhumanitarianorganization,countryacivilorganization,towna) ).

fof(event_13,axiom,
    accept_team(muslimcountrybhumanitarianorganization,christiancountrychumanitarianorganization,coastvillage,n5) ).

fof(event_14,axiom,
    accept_team(countryamedicalorganization,countryacivilorganization,cityb,n6) ).

fof(event_15,axiom,
    accept_team(christiancountrychumanitarianorganization,countrybhumanitarianorganization,cityb,n4) ).

fof(event_16,axiom,
    accept_team(countryafirstaidorganization,countryacivilorganization,cityb,n6) ).

fof(event_17,axiom,
    accept_number(countrybhumanitarianorganization,n4) ).

fof(event_18,axiom,
    accept_team(countrybcivilorganization,countrybhumanitarianorganization,cityb,n4) ).

fof(event_19,axiom,
    accept_team(christiansufferterrahumanitarianorganization,countryacivilorganization,cityb,n6) ).

fof(event_20,axiom,
    accept_team(sufferterragovernment,countryacivilorganization,cityb,n6) ).

fof(event_21,axiom,
    accept_number(countrybhumanitarianorganization,n1) ).

fof(event_22,axiom,
    the_agent_in_all_proposed_teams(countrybhumanitarianorganization,countryacivilorganization,towna) ).

fof(event_23,axiom,
    any_agent_in_all_proposed_teams(countrybhumanitarianorganization,countryacivilorganization,towna) ).

fof(event_24,axiom,
    accept_team(countrybhumanitarianorganization,christiancountrychumanitarianorganization,coastvillage,n5) ).

fof(event_25,axiom,
    accept_team(countrybhumanitarianorganization,christiancountrychumanitarianorganization,coastvillage,n6) ).

fof(event_26,axiom,
    accept_team(christiansufferterrahumanitarianorganization,countryacivilorganization,towna,n6) ).

fof(event_27,axiom,
    accept_team(countryamedicalorganization,countryacivilorganization,towna,n6) ).

fof(event_28,axiom,
    accept_number(countryahumanitarianorganization,n2) ).

fof(event_29,axiom,
    ~ accept_team(countryamedicalorganization,countryahumanitarianorganization,coastvillage,n2) ).

fof(event_30,axiom,
    ~ accept_team(countryamedicalorganization,countryafirstaidorganization,coastvillage,n2) ).

fof(event_31,axiom,
    ~ accept_team(countryamedicalorganization,countryacivilorganization,coastvillage,n2) ).

fof(event_32,axiom,
    ~ accept_team(countryamedicalorganization,christiansufferterrahumanitarianorganization,coastvillage,n2) ).

fof(event_33,axiom,
    ~ accept_team(countryamedicalorganization,sufferterragovernment,coastvillage,n2) ).

fof(event_34,axiom,
    ~ accept_team(countryamedicalorganization,countryahumanitarianorganization,coastvillage,n6) ).

fof(event_35,axiom,
    ~ accept_team(countryamedicalorganization,countryacivilorganization,coastvillage,n6) ).

fof(event_36,axiom,
    ~ accept_team(countryamedicalorganization,countryafirstaidorganization,coastvillage,n6) ).

fof(event_37,axiom,
    the_agent_not_in_any_proposed_teams(countryamedicalorganization,christiancountrychumanitarianorganization,coastvillage) ).

fof(event_38,axiom,
    any_agent_in_all_proposed_teams(countryamedicalorganization,christiancountrychumanitarianorganization,coastvillage) ).

fof(event_39,axiom,
    accept_team(countryccivilorganization,countrycmedicalorganization,towna,n4) ).

fof(event_40,axiom,
    ~ accept_team(countryccivilorganization,countrycmedicalorganization,towna,n5) ).

fof(event_41,axiom,
    the_agent_in_all_proposed_teams(countryccivilorganization,countryacivilorganization,towna) ).

fof(event_42,axiom,
    any_agent_in_all_proposed_teams(countryccivilorganization,countryacivilorganization,towna) ).

fof(event_43,axiom,
    accept_team(countrybcivilorganization,countrycmedicalorganization,towna,n4) ).

fof(event_44,axiom,
    accept_team(countrybcivilorganization,countrycmedicalorganization,towna,n5) ).

fof(event_45,axiom,
    accept_number(countrybcivilorganization,n5) ).

fof(event_46,axiom,
    the_agent_in_all_proposed_teams(countrybcivilorganization,countryacivilorganization,towna) ).

fof(event_47,axiom,
    any_agent_in_all_proposed_teams(countrybcivilorganization,countryacivilorganization,towna) ).

fof(event_48,axiom,
    accept_team(sufferterragovernment,countryacivilorganization,towna,n6) ).

fof(event_49,axiom,
    the_agent_in_all_proposed_teams(countrycmedicalorganization,countryacivilorganization,towna) ).

fof(event_50,axiom,
    any_agent_in_all_proposed_teams(countrycmedicalorganization,countryacivilorganization,towna) ).

fof(event_51,axiom,
    accept_team(countrycmedicalorganization,christiancountrychumanitarianorganization,coastvillage,n5) ).

fof(event_52,axiom,
    accept_number(countrycmedicalorganization,n4) ).

fof(event_53,axiom,
    accept_team(christiancountrychumanitarianorganization,countrycmedicalorganization,towna,n4) ).

fof(event_54,axiom,
    accept_number(countrycmedicalorganization,n5) ).

fof(event_55,axiom,
    accept_team(christiancountrychumanitarianorganization,countrycmedicalorganization,towna,n5) ).

fof(event_56,axiom,
    the_agent_in_all_proposed_teams(christiancountrychumanitarianorganization,countryacivilorganization,towna) ).

fof(event_57,axiom,
    any_agent_in_all_proposed_teams(christiancountrychumanitarianorganization,countryacivilorganization,towna) ).

fof(event_58,axiom,
    accept_team(countryafirstaidorganization,countryacivilorganization,towna,n6) ).

fof(event_59,axiom,
    accept_number(countryacivilorganization,n2) ).

fof(event_60,axiom,
    accept_team(countryacivilorganization,countryahumanitarianorganization,coastvillage,n5) ).

fof(event_61,axiom,
    accept_team(countryacivilorganization,countryahumanitarianorganization,coastvillage,n6) ).

fof(event_62,axiom,
    accept_team(countryacivilorganization,countryafirstaidorganization,coastvillage,n6) ).

fof(event_63,axiom,
    the_agent_in_all_proposed_teams(countryacivilorganization,christiancountrychumanitarianorganization,coastvillage) ).

fof(event_64,axiom,
    any_agent_in_all_proposed_teams(countryacivilorganization,christiancountrychumanitarianorganization,coastvillage) ).

fof(event_65,axiom,
    accept_number(countryafirstaidorganization,n2) ).

fof(event_66,axiom,
    accept_team(countryafirstaidorganization,countryahumanitarianorganization,coastvillage,n5) ).

fof(event_67,axiom,
    accept_team(countryafirstaidorganization,countryahumanitarianorganization,coastvillage,n6) ).

fof(event_68,axiom,
    accept_team(countryafirstaidorganization,countryacivilorganization,coastvillage,n6) ).

fof(event_69,axiom,
    the_agent_in_all_proposed_teams(countryafirstaidorganization,christiancountrychumanitarianorganization,coastvillage) ).

fof(event_70,axiom,
    any_agent_in_all_proposed_teams(countryafirstaidorganization,christiancountrychumanitarianorganization,coastvillage) ).

fof(event_71,axiom,
    ~ accept_team(countryccivilorganization,christiancountrychumanitarianorganization,coastvillage,n5) ).

fof(event_72,axiom,
    ~ accept_team(countryccivilorganization,christiancountrychumanitarianorganization,coastvillage,n6) ).

fof(event_73,axiom,
    accept_number(christiancountrychumanitarianorganization,n5) ).

fof(event_74,axiom,
    accept_team(countrybcivilorganization,christiancountrychumanitarianorganization,coastvillage,n5) ).

fof(event_75,axiom,
    accept_team(countrybcivilorganization,christiancountrychumanitarianorganization,coastvillage,n6) ).

fof(event_76,axiom,
    accept_team(countrybcivilorganization,muslimcountrybhumanitarianorganization,townc,n6) ).

fof(event_77,axiom,
    accept_team(countrybcivilorganization,countrybhumanitarianorganization,townc,n6) ).

fof(event_78,axiom,
    accept_team(countrybcivilorganization,christiancountrychumanitarianorganization,townc,n6) ).

fof(event_79,axiom,
    accept_team(countrybcivilorganization,countrycmedicalorganization,townc,n6) ).

fof(event_80,axiom,
    the_agent_in_all_proposed_teams(countrybcivilorganization,countryahumanitarianorganization,townc) ).

fof(event_81,axiom,
    any_agent_in_all_proposed_teams(countrybcivilorganization,countryahumanitarianorganization,townc) ).

fof(event_82,axiom,
    accept_team(sufferterragovernment,countryahumanitarianorganization,coastvillage,n5) ).

fof(event_83,axiom,
    accept_team(sufferterragovernment,countryahumanitarianorganization,coastvillage,n6) ).

fof(event_84,axiom,
    accept_team(sufferterragovernment,countryacivilorganization,coastvillage,n6) ).

fof(event_85,axiom,
    accept_team(sufferterragovernment,countryafirstaidorganization,coastvillage,n6) ).

fof(event_86,axiom,
    the_agent_in_all_proposed_teams(sufferterragovernment,christiancountrychumanitarianorganization,coastvillage) ).

fof(event_87,axiom,
    any_agent_in_all_proposed_teams(sufferterragovernment,christiancountrychumanitarianorganization,coastvillage) ).

fof(event_88,axiom,
    accept_number(christiansufferterrahumanitarianorganization,n2) ).

fof(event_89,axiom,
    accept_number(countryahumanitarianorganization,n5) ).

fof(event_90,axiom,
    accept_team(christiansufferterrahumanitarianorganization,countryahumanitarianorganization,coastvillage,n5) ).

fof(event_91,axiom,
    accept_team(christiansufferterrahumanitarianorganization,countryahumanitarianorganization,coastvillage,n6) ).

fof(event_92,axiom,
    accept_team(christiansufferterrahumanitarianorganization,countryacivilorganization,coastvillage,n6) ).

fof(event_93,axiom,
    accept_team(christiansufferterrahumanitarianorganization,countryafirstaidorganization,coastvillage,n6) ).

fof(event_94,axiom,
    the_agent_in_all_proposed_teams(christiansufferterrahumanitarianorganization,christiancountrychumanitarianorganization,coastvillage) ).

fof(event_95,axiom,
    any_agent_in_all_proposed_teams(christiansufferterrahumanitarianorganization,christiancountrychumanitarianorganization,coastvillage) ).

fof(event_96,axiom,
    accept_team(countrycmedicalorganization,christiancountrychumanitarianorganization,coastvillage,n6) ).

fof(event_97,axiom,
    accept_team(muslimcountrybhumanitarianorganization,christiancountrychumanitarianorganization,coastvillage,n6) ).

fof(event_98,axiom,
    accept_number(muslimcountrybhumanitarianorganization,n3) ).

fof(event_99,axiom,
    accept_team(muslimcountrybhumanitarianorganization,countryccivilorganization,townc,n4) ).

fof(event_100,axiom,
    accept_team(muslimcountrybhumanitarianorganization,countrybcivilorganization,townc,n6) ).

fof(event_101,axiom,
    accept_team(muslimcountrybhumanitarianorganization,countrybhumanitarianorganization,townc,n6) ).

fof(event_102,axiom,
    accept_team(muslimcountrybhumanitarianorganization,christiancountrychumanitarianorganization,townc,n6) ).

fof(event_103,axiom,
    accept_team(muslimcountrybhumanitarianorganization,countrycmedicalorganization,townc,n6) ).

fof(event_104,axiom,
    the_agent_in_all_proposed_teams(muslimcountrybhumanitarianorganization,countryahumanitarianorganization,townc) ).

fof(event_105,axiom,
    any_agent_in_all_proposed_teams(muslimcountrybhumanitarianorganization,countryahumanitarianorganization,townc) ).

fof(event_106,axiom,
    accept_team(countryacivilorganization,countryahumanitarianorganization,townc,n6) ).

fof(event_107,axiom,
    accept_team(countryafirstaidorganization,countryahumanitarianorganization,townc,n6) ).

fof(event_108,axiom,
    accept_team(christiancountrychumanitarianorganization,countryccivilorganization,townc,n4) ).

fof(event_109,axiom,
    accept_team(christiancountrychumanitarianorganization,muslimcountrybhumanitarianorganization,townc,n6) ).

fof(event_110,axiom,
    accept_team(christiancountrychumanitarianorganization,countrybcivilorganization,townc,n6) ).

fof(event_111,axiom,
    accept_team(christiancountrychumanitarianorganization,countrybhumanitarianorganization,townc,n6) ).

fof(event_112,axiom,
    accept_team(christiancountrychumanitarianorganization,countrycmedicalorganization,townc,n6) ).

fof(event_113,axiom,
    the_agent_in_all_proposed_teams(christiancountrychumanitarianorganization,countryahumanitarianorganization,townc) ).

fof(event_114,axiom,
    any_agent_in_all_proposed_teams(christiancountrychumanitarianorganization,countryahumanitarianorganization,townc) ).

fof(event_115,axiom,
    ~ accept_team(countryccivilorganization,muslimcountrybhumanitarianorganization,townc,n6) ).

fof(event_116,axiom,
    ~ accept_team(countryccivilorganization,countrybcivilorganization,townc,n6) ).

fof(event_117,axiom,
    ~ accept_team(countryccivilorganization,countrybhumanitarianorganization,townc,n6) ).

fof(event_118,axiom,
    ~ accept_team(countryccivilorganization,christiancountrychumanitarianorganization,townc,n6) ).

fof(event_119,axiom,
    ~ accept_team(countryccivilorganization,countrycmedicalorganization,townc,n6) ).

fof(event_120,axiom,
    the_agent_in_all_proposed_teams(countryccivilorganization,countryahumanitarianorganization,townc) ).

fof(event_121,axiom,
    any_agent_in_all_proposed_teams(countryccivilorganization,countryahumanitarianorganization,townc) ).

fof(event_122,axiom,
    accept_team(countrybhumanitarianorganization,countrybcivilorganization,townc,n2) ).

fof(event_123,axiom,
    accept_team(countrybhumanitarianorganization,muslimcountrybhumanitarianorganization,townc,n6) ).

fof(event_124,axiom,
    accept_team(sufferterragovernment,countryahumanitarianorganization,townc,n6) ).

fof(event_125,axiom,
    accept_team(christiansufferterrahumanitarianorganization,countryahumanitarianorganization,townc,n6) ).

fof(event_126,axiom,
    accept_team(countryamedicalorganization,countryahumanitarianorganization,townc,n6) ).

fof(event_127,axiom,
    accept_team(countrycmedicalorganization,countryccivilorganization,townc,n4) ).

fof(event_128,axiom,
    accept_team(countrycmedicalorganization,muslimcountrybhumanitarianorganization,townc,n6) ).

fof(event_129,axiom,
    accept_team(countrycmedicalorganization,countrybcivilorganization,townc,n6) ).

fof(event_130,axiom,
    accept_team(countrycmedicalorganization,countrybhumanitarianorganization,townc,n6) ).

fof(event_131,axiom,
    accept_team(countrycmedicalorganization,christiancountrychumanitarianorganization,townc,n6) ).

fof(event_132,axiom,
    the_agent_in_all_proposed_teams(countrycmedicalorganization,countryahumanitarianorganization,townc) ).

fof(event_133,axiom,
    any_agent_in_all_proposed_teams(countrycmedicalorganization,countryahumanitarianorganization,townc) ).

fof(event_134,axiom,
    accept_team(countrybhumanitarianorganization,countrybcivilorganization,townc,n6) ).

fof(event_135,axiom,
    accept_team(countrybhumanitarianorganization,christiancountrychumanitarianorganization,townc,n6) ).

fof(event_136,axiom,
    accept_team(countrybhumanitarianorganization,countrycmedicalorganization,townc,n6) ).

fof(event_137,axiom,
    the_agent_in_all_proposed_teams(countrybhumanitarianorganization,countryahumanitarianorganization,townc) ).

fof(event_138,axiom,
    any_agent_in_all_proposed_teams(countrybhumanitarianorganization,countryahumanitarianorganization,townc) ).

fof(event_139,axiom,
    accept_team(christiansufferterrahumanitarianorganization,countryahumanitarianorganization,cityb,n6) ).

fof(event_140,axiom,
    accept_number(christiansufferterrahumanitarianorganization,n6) ).

fof(event_141,axiom,
    the_agent_in_all_proposed_teams(christiansufferterrahumanitarianorganization,countrybhumanitarianorganization,cityb) ).

fof(event_142,axiom,
    any_agent_in_all_proposed_teams(christiansufferterrahumanitarianorganization,countrybhumanitarianorganization,cityb) ).

fof(event_143,axiom,
    ~ accept_team(countryccivilorganization,countrybhumanitarianorganization,cityb,n5) ).

fof(event_144,axiom,
    ~ accept_team(countryccivilorganization,countrybhumanitarianorganization,cityb,n6) ).

fof(event_145,axiom,
    accept_team(sufferterragovernment,countryahumanitarianorganization,cityb,n6) ).

fof(event_146,axiom,
    the_agent_in_all_proposed_teams(sufferterragovernment,countrybhumanitarianorganization,cityb) ).

fof(event_147,axiom,
    any_agent_in_all_proposed_teams(sufferterragovernment,countrybhumanitarianorganization,cityb) ).

fof(event_148,axiom,
    accept_team(countryafirstaidorganization,countryahumanitarianorganization,cityb,n6) ).

fof(event_149,axiom,
    accept_number(countryafirstaidorganization,n6) ).

fof(event_150,axiom,
    the_agent_in_all_proposed_teams(countryafirstaidorganization,countrybhumanitarianorganization,cityb) ).

fof(event_151,axiom,
    any_agent_in_all_proposed_teams(countryafirstaidorganization,countrybhumanitarianorganization,cityb) ).

fof(event_152,axiom,
    accept_team(countryafirstaidorganization,sufferterragovernment,towna,n5) ).

fof(event_153,axiom,
    accept_team(countryafirstaidorganization,sufferterragovernment,towna,n6) ).

fof(event_154,axiom,
    accept_team(countrycmedicalorganization,countrybhumanitarianorganization,cityb,n5) ).

fof(event_155,axiom,
    accept_team(countrycmedicalorganization,countrybhumanitarianorganization,cityb,n6) ).

fof(event_156,axiom,
    accept_team(countryamedicalorganization,countryahumanitarianorganization,cityb,n6) ).

fof(event_157,axiom,
    accept_number(countryamedicalorganization,n6) ).

fof(event_158,axiom,
    the_agent_in_all_proposed_teams(countryamedicalorganization,countrybhumanitarianorganization,cityb) ).

fof(event_159,axiom,
    any_agent_in_all_proposed_teams(countryamedicalorganization,countrybhumanitarianorganization,cityb) ).

fof(event_160,axiom,
    accept_team(countrybcivilorganization,countrybhumanitarianorganization,cityb,n5) ).

fof(event_161,axiom,
    accept_team(countrybcivilorganization,countrybhumanitarianorganization,cityb,n6) ).

fof(event_162,axiom,
    accept_team(christiancountrychumanitarianorganization,countrybhumanitarianorganization,cityb,n5) ).

fof(event_163,axiom,
    accept_team(christiancountrychumanitarianorganization,countrybhumanitarianorganization,cityb,n6) ).

fof(event_164,axiom,
    the_agent_in_all_proposed_teams(countryahumanitarianorganization,countrybhumanitarianorganization,cityb) ).

fof(event_165,axiom,
    any_agent_in_all_proposed_teams(countryahumanitarianorganization,countrybhumanitarianorganization,cityb) ).

fof(event_166,axiom,
    accept_number(countryahumanitarianorganization,n6) ).

fof(event_167,axiom,
    accept_team(countryacivilorganization,countryahumanitarianorganization,cityb,n6) ).

fof(event_168,axiom,
    accept_number(countryacivilorganization,n6) ).

fof(event_169,axiom,
    the_agent_in_all_proposed_teams(countryacivilorganization,countrybhumanitarianorganization,cityb) ).

fof(event_170,axiom,
    any_agent_in_all_proposed_teams(countryacivilorganization,countrybhumanitarianorganization,cityb) ).

fof(event_171,axiom,
    accept_number(countrybhumanitarianorganization,n5) ).

fof(event_172,axiom,
    accept_team(muslimcountrybhumanitarianorganization,countrybhumanitarianorganization,cityb,n5) ).

fof(event_173,axiom,
    accept_team(muslimcountrybhumanitarianorganization,countrybhumanitarianorganization,cityb,n6) ).

fof(event_174,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,countrybcivilorganization,towna,n2) ).

fof(event_175,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,countrycmedicalorganization,towna,n2) ).

fof(event_176,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,christiancountrychumanitarianorganization,towna,n2) ).

fof(event_177,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,countryccivilorganization,towna,n2) ).

fof(event_178,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,countrybcivilorganization,towna,n3) ).

fof(event_179,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,christiancountrychumanitarianorganization,towna,n3) ).

fof(event_180,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,countrycmedicalorganization,towna,n3) ).

fof(event_181,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,countryccivilorganization,towna,n3) ).

fof(event_182,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,countrybhumanitarianorganization,towna,n2) ).

fof(event_183,axiom,
    accept_number(muslimcountrybhumanitarianorganization,n2) ).

fof(event_184,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,countryccivilorganization,towna,n4) ).

fof(event_185,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,countrybcivilorganization,towna,n6) ).

fof(event_186,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,countrybhumanitarianorganization,towna,n6) ).

fof(event_187,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,christiancountrychumanitarianorganization,towna,n6) ).

fof(event_188,axiom,
    accept_team(countryamedicalorganization,sufferterragovernment,towna,n5) ).

fof(event_189,axiom,
    accept_team(countryamedicalorganization,sufferterragovernment,towna,n6) ).

fof(event_190,axiom,
    accept_team(countryahumanitarianorganization,sufferterragovernment,towna,n5) ).

fof(event_191,axiom,
    accept_team(countryahumanitarianorganization,sufferterragovernment,towna,n6) ).

fof(event_192,axiom,
    accept_number(christiancountrychumanitarianorganization,n2) ).

fof(event_193,axiom,
    accept_team(countrybhumanitarianorganization,countrybcivilorganization,towna,n3) ).

fof(event_194,axiom,
    accept_team(countrybhumanitarianorganization,christiancountrychumanitarianorganization,towna,n3) ).

fof(event_195,axiom,
    accept_team(countrybhumanitarianorganization,countrycmedicalorganization,towna,n3) ).

fof(event_196,axiom,
    accept_team(countrybhumanitarianorganization,countryccivilorganization,towna,n3) ).

fof(event_197,axiom,
    accept_number(countrybhumanitarianorganization,n2) ).

fof(event_198,axiom,
    accept_team(countrybhumanitarianorganization,countrybcivilorganization,towna,n6) ).

fof(event_199,axiom,
    accept_team(countrybhumanitarianorganization,christiancountrychumanitarianorganization,towna,n6) ).

fof(event_200,axiom,
    accept_team(countrybhumanitarianorganization,countrycmedicalorganization,towna,n6) ).

fof(event_201,axiom,
    the_agent_in_all_proposed_teams(countrybhumanitarianorganization,sufferterragovernment,towna) ).

fof(event_202,axiom,
    any_agent_in_all_proposed_teams(countrybhumanitarianorganization,sufferterragovernment,towna) ).

fof(event_203,axiom,
    accept_number(countrybcivilorganization,n2) ).

fof(event_204,axiom,
    accept_number(countrybcivilorganization,n3) ).

fof(event_205,axiom,
    accept_team(countrybcivilorganization,countryccivilorganization,towna,n4) ).

fof(event_206,axiom,
    accept_team(countrybcivilorganization,countrybhumanitarianorganization,towna,n6) ).

fof(event_207,axiom,
    accept_team(countrybcivilorganization,christiancountrychumanitarianorganization,towna,n6) ).

fof(event_208,axiom,
    accept_team(countrybcivilorganization,countrycmedicalorganization,towna,n6) ).

fof(event_209,axiom,
    the_agent_in_all_proposed_teams(countrybcivilorganization,sufferterragovernment,towna) ).

fof(event_210,axiom,
    any_agent_in_all_proposed_teams(countrybcivilorganization,sufferterragovernment,towna) ).

fof(event_211,axiom,
    accept_number(sufferterragovernment,n2) ).

fof(event_212,axiom,
    ~ accept_team(christiansufferterrahumanitarianorganization,sufferterragovernment,towna,n2) ).

fof(event_213,axiom,
    ~ accept_team(christiansufferterrahumanitarianorganization,sufferterragovernment,towna,n6) ).

fof(event_214,axiom,
    accept_number(countryccivilorganization,n2) ).

fof(event_215,axiom,
    accept_number(countryccivilorganization,n3) ).

fof(event_216,axiom,
    ~ accept_team(countryccivilorganization,countrybcivilorganization,towna,n6) ).

fof(event_217,axiom,
    ~ accept_team(countryccivilorganization,countrybhumanitarianorganization,towna,n6) ).

fof(event_218,axiom,
    ~ accept_team(countryccivilorganization,christiancountrychumanitarianorganization,towna,n6) ).

fof(event_219,axiom,
    ~ accept_team(countryccivilorganization,countrycmedicalorganization,towna,n6) ).

fof(event_220,axiom,
    the_agent_in_all_proposed_teams(countryccivilorganization,sufferterragovernment,towna) ).

fof(event_221,axiom,
    any_agent_in_all_proposed_teams(countryccivilorganization,sufferterragovernment,towna) ).

fof(event_222,axiom,
    accept_number(sufferterragovernment,n5) ).

fof(event_223,axiom,
    accept_team(countryacivilorganization,sufferterragovernment,towna,n5) ).

fof(event_224,axiom,
    accept_number(sufferterragovernment,n6) ).

fof(event_225,axiom,
    accept_team(countryacivilorganization,sufferterragovernment,towna,n6) ).

fof(event_226,axiom,
    accept_number(countrycmedicalorganization,n2) ).

fof(event_227,axiom,
    accept_number(countrycmedicalorganization,n3) ).

fof(event_228,axiom,
    accept_team(countrycmedicalorganization,countryccivilorganization,towna,n4) ).

fof(event_229,axiom,
    accept_team(countrycmedicalorganization,countrybcivilorganization,towna,n6) ).

fof(event_230,axiom,
    accept_team(countrycmedicalorganization,countrybhumanitarianorganization,towna,n6) ).

fof(event_231,axiom,
    accept_team(countrycmedicalorganization,christiancountrychumanitarianorganization,towna,n6) ).

fof(event_232,axiom,
    the_agent_in_all_proposed_teams(countrycmedicalorganization,sufferterragovernment,towna) ).

fof(event_233,axiom,
    any_agent_in_all_proposed_teams(countrycmedicalorganization,sufferterragovernment,towna) ).

fof(event_234,axiom,
    accept_number(christiancountrychumanitarianorganization,n3) ).

fof(event_235,axiom,
    accept_number(countryccivilorganization,n4) ).

fof(event_236,axiom,
    accept_team(christiancountrychumanitarianorganization,countryccivilorganization,towna,n4) ).

fof(event_237,axiom,
    accept_number(countrybcivilorganization,n6) ).

fof(event_238,axiom,
    accept_team(christiancountrychumanitarianorganization,countrybcivilorganization,towna,n6) ).

fof(event_239,axiom,
    accept_number(countrybhumanitarianorganization,n6) ).

fof(event_240,axiom,
    accept_team(christiancountrychumanitarianorganization,countrybhumanitarianorganization,towna,n6) ).

fof(event_241,axiom,
    accept_team(christiancountrychumanitarianorganization,countrycmedicalorganization,towna,n6) ).

fof(event_242,axiom,
    accept_number(christiancountrychumanitarianorganization,n6) ).

fof(event_243,axiom,
    the_agent_in_all_proposed_teams(christiancountrychumanitarianorganization,sufferterragovernment,towna) ).

fof(event_244,axiom,
    any_agent_in_all_proposed_teams(christiancountrychumanitarianorganization,sufferterragovernment,towna) ).

fof(event_245,axiom,
    accept_number(countrycmedicalorganization,n6) ).

fof(event_246,axiom,
    ~ accept_team(muslimcountrybhumanitarianorganization,countrycmedicalorganization,towna,n6) ).

fof(event_247,axiom,
    accept_number(muslimcountrybhumanitarianorganization,n6) ).

fof(event_248,axiom,
    the_agent_not_in_any_proposed_teams(muslimcountrybhumanitarianorganization,sufferterragovernment,towna) ).

fof(event_249,axiom,
    any_agent_in_all_proposed_teams(muslimcountrybhumanitarianorganization,sufferterragovernment,towna) ).

%--------------------------------------------------------------------------

%----Include lemmas of CPlanT
%--------------------------------------------------------------------------
% File     : AGT001+2 : TPTP v8.1.0. Released v2.7.0.
% Domain   : Agents
% Axioms   : CPlanT lemmas
% Version  : [Bar03] axioms : Especial.
% English  :

% Refs     : [Bar03] Barta, J. (2003), Email to G. Sutcliffe
% Source   : [Bar03]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :  367 ( 367 unt;   0 def)
%            Number of atoms       :  367 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    5 (   5   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   1 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    4 (   4 usr;   0 prp; 2-3 aty)
%            Number of functors    :   36 (  36 usr;  36 con; 0-0 aty)
%            Number of variables   :    0 (   0   !;   0   ?)
% SPC      : 

% Comments : Requires AGT001+0.ax
%--------------------------------------------------------------------------
fof(deduced_1,axiom,
    accept_leader(christiancountrychumanitarianorganization,countryacivilorganization) ).

fof(deduced_2,axiom,
    accept_leader(christiancountrychumanitarianorganization,muslimcountrybhumanitarianorganization) ).

fof(deduced_3,axiom,
    accept_population(christiancountrychumanitarianorganization,other,n5) ).

fof(deduced_4,axiom,
    accept_population(christiancountrychumanitarianorganization,muslim,n65) ).

fof(deduced_5,axiom,
    accept_population(christiancountrychumanitarianorganization,christian,n0) ).

fof(deduced_6,axiom,
    accept_population(christiancountrychumanitarianorganization,atheist,n30) ).

fof(deduced_7,axiom,
    accept_city(christiancountrychumanitarianorganization,townc) ).

fof(deduced_8,axiom,
    accept_leader(christiancountrychumanitarianorganization,countryahumanitarianorganization) ).

fof(deduced_9,axiom,
    accept_population(christiancountrychumanitarianorganization,other,n1) ).

fof(deduced_10,axiom,
    accept_population(christiancountrychumanitarianorganization,christian,n20) ).

fof(deduced_11,axiom,
    accept_population(christiancountrychumanitarianorganization,atheist,n78) ).

fof(deduced_12,axiom,
    accept_city(christiancountrychumanitarianorganization,cityb) ).

fof(deduced_13,axiom,
    ~ accept_city(countryamedicalorganization,coastvillage) ).

fof(deduced_14,axiom,
    accept_leader(countryamedicalorganization,christiancountrychumanitarianorganization) ).

fof(deduced_15,axiom,
    accept_population(countryamedicalorganization,other,n5) ).

fof(deduced_16,axiom,
    accept_population(countryamedicalorganization,muslim,n65) ).

fof(deduced_17,axiom,
    accept_population(countryamedicalorganization,christian,n0) ).

fof(deduced_18,axiom,
    accept_population(countryamedicalorganization,atheist,n30) ).

fof(deduced_19,axiom,
    accept_leader(countryamedicalorganization,countryahumanitarianorganization) ).

fof(deduced_20,axiom,
    accept_city(countryamedicalorganization,townc) ).

fof(deduced_21,axiom,
    accept_leader(countryahumanitarianorganization,countryamedicalorganization) ).

fof(deduced_22,axiom,
    accept_leader(countryahumanitarianorganization,countryafirstaidorganization) ).

fof(deduced_23,axiom,
    accept_population(countryahumanitarianorganization,native,n85) ).

fof(deduced_24,axiom,
    accept_population(countryahumanitarianorganization,muslim,n0) ).

fof(deduced_25,axiom,
    accept_population(countryahumanitarianorganization,christian,n3) ).

fof(deduced_26,axiom,
    accept_population(countryahumanitarianorganization,atheist,n12) ).

fof(deduced_27,axiom,
    accept_city(countryahumanitarianorganization,coastvillage) ).

fof(deduced_28,axiom,
    accept_leader(countryahumanitarianorganization,christiancountrychumanitarianorganization) ).

fof(deduced_29,axiom,
    accept_leader(countryafirstaidorganization,countryamedicalorganization) ).

fof(deduced_30,axiom,
    accept_leader(christiansufferterrahumanitarianorganization,countryamedicalorganization) ).

fof(deduced_31,axiom,
    accept_leader(countrycmedicalorganization,countryacivilorganization) ).

fof(deduced_32,axiom,
    accept_population(countrycmedicalorganization,native,n85) ).

fof(deduced_33,axiom,
    accept_population(countrycmedicalorganization,muslim,n0) ).

fof(deduced_34,axiom,
    accept_population(countrycmedicalorganization,christian,n3) ).

fof(deduced_35,axiom,
    accept_population(countrycmedicalorganization,atheist,n12) ).

fof(deduced_36,axiom,
    accept_city(countrycmedicalorganization,coastvillage) ).

fof(deduced_37,axiom,
    accept_leader(countrybcivilorganization,countryacivilorganization) ).

fof(deduced_38,axiom,
    accept_population(countrybcivilorganization,native,n85) ).

fof(deduced_39,axiom,
    accept_population(countrybcivilorganization,muslim,n0) ).

fof(deduced_40,axiom,
    accept_population(countrybcivilorganization,christian,n3) ).

fof(deduced_41,axiom,
    accept_population(countrybcivilorganization,atheist,n12) ).

fof(deduced_42,axiom,
    accept_city(countrybcivilorganization,coastvillage) ).

fof(deduced_43,axiom,
    accept_leader(countrybcivilorganization,muslimcountrybhumanitarianorganization) ).

fof(deduced_44,axiom,
    accept_population(countrybcivilorganization,other,n5) ).

fof(deduced_45,axiom,
    accept_population(countrybcivilorganization,muslim,n65) ).

fof(deduced_46,axiom,
    accept_population(countrybcivilorganization,christian,n0) ).

fof(deduced_47,axiom,
    accept_population(countrybcivilorganization,atheist,n30) ).

fof(deduced_48,axiom,
    accept_city(countrybcivilorganization,townc) ).

fof(deduced_49,axiom,
    accept_leader(countrybcivilorganization,countryahumanitarianorganization) ).

fof(deduced_50,axiom,
    accept_population(countrybcivilorganization,other,n1) ).

fof(deduced_51,axiom,
    accept_population(countrybcivilorganization,christian,n20) ).

fof(deduced_52,axiom,
    accept_population(countrybcivilorganization,atheist,n78) ).

fof(deduced_53,axiom,
    accept_city(countrybcivilorganization,cityb) ).

fof(deduced_54,axiom,
    accept_leader(sufferterragovernment,countryamedicalorganization) ).

fof(deduced_55,axiom,
    accept_population(sufferterragovernment,christian,n24) ).

fof(deduced_56,axiom,
    accept_population(sufferterragovernment,atheist,n75) ).

fof(deduced_57,axiom,
    accept_city(sufferterragovernment,towna) ).

fof(deduced_58,axiom,
    ~ accept_number(countryccivilorganization,n5) ).

fof(deduced_59,axiom,
    accept_population(countryccivilorganization,other,n1) ).

fof(deduced_60,axiom,
    accept_population(countryccivilorganization,christian,n20) ).

fof(deduced_61,axiom,
    accept_population(countryccivilorganization,atheist,n78) ).

fof(deduced_62,axiom,
    ~ accept_number(countryccivilorganization,n6) ).

fof(deduced_63,axiom,
    accept_leader(countryccivilorganization,countrybhumanitarianorganization) ).

fof(deduced_64,axiom,
    accept_city(countryccivilorganization,cityb) ).

fof(deduced_65,axiom,
    accept_leader(countryccivilorganization,countryacivilorganization) ).

fof(deduced_66,axiom,
    accept_leader(countryacivilorganization,countryamedicalorganization) ).

fof(deduced_67,axiom,
    accept_leader(countryacivilorganization,countryafirstaidorganization) ).

fof(deduced_68,axiom,
    accept_population(countryacivilorganization,native,n85) ).

fof(deduced_69,axiom,
    accept_population(countryacivilorganization,muslim,n0) ).

fof(deduced_70,axiom,
    accept_population(countryacivilorganization,christian,n3) ).

fof(deduced_71,axiom,
    accept_population(countryacivilorganization,atheist,n12) ).

fof(deduced_72,axiom,
    accept_city(countryacivilorganization,coastvillage) ).

fof(deduced_73,axiom,
    accept_leader(countryacivilorganization,christiancountrychumanitarianorganization) ).

fof(deduced_74,axiom,
    accept_population(countryacivilorganization,other,n5) ).

fof(deduced_75,axiom,
    accept_population(countryacivilorganization,muslim,n65) ).

fof(deduced_76,axiom,
    accept_population(countryacivilorganization,christian,n0) ).

fof(deduced_77,axiom,
    accept_population(countryacivilorganization,atheist,n30) ).

fof(deduced_78,axiom,
    accept_leader(countryacivilorganization,countryahumanitarianorganization) ).

fof(deduced_79,axiom,
    accept_city(countryacivilorganization,townc) ).

fof(deduced_80,axiom,
    accept_population(christiansufferterrahumanitarianorganization,christian,n24) ).

fof(deduced_81,axiom,
    accept_population(christiansufferterrahumanitarianorganization,atheist,n75) ).

fof(deduced_82,axiom,
    ~ accept_leader(christiansufferterrahumanitarianorganization,sufferterragovernment) ).

fof(deduced_83,axiom,
    accept_city(christiansufferterrahumanitarianorganization,towna) ).

fof(deduced_84,axiom,
    accept_leader(christiansufferterrahumanitarianorganization,countryafirstaidorganization) ).

fof(deduced_85,axiom,
    accept_population(christiansufferterrahumanitarianorganization,other,n0) ).

fof(deduced_86,axiom,
    accept_population(christiansufferterrahumanitarianorganization,native,n85) ).

fof(deduced_87,axiom,
    accept_population(christiansufferterrahumanitarianorganization,muslim,n0) ).

fof(deduced_88,axiom,
    accept_population(christiansufferterrahumanitarianorganization,christian,n3) ).

fof(deduced_89,axiom,
    accept_population(christiansufferterrahumanitarianorganization,atheist,n12) ).

fof(deduced_90,axiom,
    accept_city(christiansufferterrahumanitarianorganization,coastvillage) ).

fof(deduced_91,axiom,
    accept_leader(christiansufferterrahumanitarianorganization,christiancountrychumanitarianorganization) ).

fof(deduced_92,axiom,
    accept_leader(muslimcountrybhumanitarianorganization,countryacivilorganization) ).

fof(deduced_93,axiom,
    accept_population(muslimcountrybhumanitarianorganization,other,n0) ).

fof(deduced_94,axiom,
    accept_population(muslimcountrybhumanitarianorganization,native,n85) ).

fof(deduced_95,axiom,
    accept_population(muslimcountrybhumanitarianorganization,muslim,n0) ).

fof(deduced_96,axiom,
    accept_population(muslimcountrybhumanitarianorganization,christian,n3) ).

fof(deduced_97,axiom,
    accept_population(muslimcountrybhumanitarianorganization,atheist,n12) ).

fof(deduced_98,axiom,
    accept_city(muslimcountrybhumanitarianorganization,coastvillage) ).

fof(deduced_99,axiom,
    accept_population(countryafirstaidorganization,native,n85) ).

fof(deduced_100,axiom,
    accept_population(countryafirstaidorganization,muslim,n0) ).

fof(deduced_101,axiom,
    accept_population(countryafirstaidorganization,christian,n3) ).

fof(deduced_102,axiom,
    accept_population(countryafirstaidorganization,atheist,n12) ).

fof(deduced_103,axiom,
    accept_city(countryafirstaidorganization,coastvillage) ).

fof(deduced_104,axiom,
    accept_leader(countryafirstaidorganization,christiancountrychumanitarianorganization) ).

fof(deduced_105,axiom,
    accept_population(countryafirstaidorganization,other,n5) ).

fof(deduced_106,axiom,
    accept_population(countryafirstaidorganization,muslim,n65) ).

fof(deduced_107,axiom,
    accept_population(countryafirstaidorganization,christian,n0) ).

fof(deduced_108,axiom,
    accept_population(countryafirstaidorganization,atheist,n30) ).

fof(deduced_109,axiom,
    accept_leader(countryafirstaidorganization,countryahumanitarianorganization) ).

fof(deduced_110,axiom,
    accept_city(countryafirstaidorganization,townc) ).

fof(deduced_111,axiom,
    accept_leader(countryafirstaidorganization,countryacivilorganization) ).

fof(deduced_112,axiom,
    accept_population(countryafirstaidorganization,other,n1) ).

fof(deduced_113,axiom,
    accept_population(countryafirstaidorganization,christian,n20) ).

fof(deduced_114,axiom,
    accept_population(countryafirstaidorganization,atheist,n78) ).

fof(deduced_115,axiom,
    accept_city(countryafirstaidorganization,cityb) ).

fof(deduced_116,axiom,
    accept_leader(countryafirstaidorganization,countrybhumanitarianorganization) ).

fof(deduced_117,axiom,
    accept_leader(countrybhumanitarianorganization,countryacivilorganization) ).

fof(deduced_118,axiom,
    accept_population(countrybhumanitarianorganization,native,n85) ).

fof(deduced_119,axiom,
    accept_population(countrybhumanitarianorganization,muslim,n0) ).

fof(deduced_120,axiom,
    accept_population(countrybhumanitarianorganization,christian,n3) ).

fof(deduced_121,axiom,
    accept_population(countrybhumanitarianorganization,atheist,n12) ).

fof(deduced_122,axiom,
    accept_city(countrybhumanitarianorganization,coastvillage) ).

fof(deduced_123,axiom,
    accept_leader(countrybhumanitarianorganization,muslimcountrybhumanitarianorganization) ).

fof(deduced_124,axiom,
    accept_population(countrybhumanitarianorganization,other,n5) ).

fof(deduced_125,axiom,
    accept_population(countrybhumanitarianorganization,muslim,n65) ).

fof(deduced_126,axiom,
    accept_population(countrybhumanitarianorganization,christian,n0) ).

fof(deduced_127,axiom,
    accept_population(countrybhumanitarianorganization,atheist,n30) ).

fof(deduced_128,axiom,
    accept_city(countrybhumanitarianorganization,townc) ).

fof(deduced_129,axiom,
    accept_leader(countrybhumanitarianorganization,countryahumanitarianorganization) ).

fof(deduced_130,axiom,
    accept_leader(countrybhumanitarianorganization,countryccivilorganization) ).

fof(deduced_131,axiom,
    accept_leader(countrybhumanitarianorganization,countrybcivilorganization) ).

fof(deduced_132,axiom,
    accept_leader(countrybhumanitarianorganization,christiancountrychumanitarianorganization) ).

fof(deduced_133,axiom,
    accept_leader(countrybhumanitarianorganization,countrycmedicalorganization) ).

fof(deduced_134,axiom,
    accept_population(countrybhumanitarianorganization,other,n0) ).

fof(deduced_135,axiom,
    accept_population(countrybhumanitarianorganization,native,n0) ).

fof(deduced_136,axiom,
    accept_population(countrybhumanitarianorganization,muslim,n1) ).

fof(deduced_137,axiom,
    accept_population(countrybhumanitarianorganization,christian,n24) ).

fof(deduced_138,axiom,
    accept_population(countrybhumanitarianorganization,atheist,n75) ).

fof(deduced_139,axiom,
    accept_city(countrybhumanitarianorganization,towna) ).

fof(deduced_140,axiom,
    accept_leader(countrybhumanitarianorganization,sufferterragovernment) ).

fof(deduced_141,axiom,
    accept_leader(sufferterragovernment,countryafirstaidorganization) ).

fof(deduced_142,axiom,
    accept_population(sufferterragovernment,other,n0) ).

fof(deduced_143,axiom,
    accept_population(sufferterragovernment,native,n85) ).

fof(deduced_144,axiom,
    accept_population(sufferterragovernment,muslim,n0) ).

fof(deduced_145,axiom,
    accept_population(sufferterragovernment,christian,n3) ).

fof(deduced_146,axiom,
    accept_population(sufferterragovernment,atheist,n12) ).

fof(deduced_147,axiom,
    accept_city(sufferterragovernment,coastvillage) ).

fof(deduced_148,axiom,
    accept_leader(sufferterragovernment,christiancountrychumanitarianorganization) ).

fof(deduced_149,axiom,
    accept_population(sufferterragovernment,other,n5) ).

fof(deduced_150,axiom,
    accept_population(sufferterragovernment,muslim,n65) ).

fof(deduced_151,axiom,
    accept_population(sufferterragovernment,christian,n0) ).

fof(deduced_152,axiom,
    accept_population(sufferterragovernment,atheist,n30) ).

fof(deduced_153,axiom,
    accept_leader(sufferterragovernment,countryahumanitarianorganization) ).

fof(deduced_154,axiom,
    accept_city(sufferterragovernment,townc) ).

fof(deduced_155,axiom,
    accept_leader(muslimcountrybhumanitarianorganization,countryccivilorganization) ).

fof(deduced_156,axiom,
    accept_leader(muslimcountrybhumanitarianorganization,countrybcivilorganization) ).

fof(deduced_157,axiom,
    accept_population(christiansufferterrahumanitarianorganization,other,n5) ).

fof(deduced_158,axiom,
    accept_population(christiansufferterrahumanitarianorganization,muslim,n65) ).

fof(deduced_159,axiom,
    accept_population(christiansufferterrahumanitarianorganization,christian,n0) ).

fof(deduced_160,axiom,
    accept_population(christiansufferterrahumanitarianorganization,atheist,n30) ).

fof(deduced_161,axiom,
    accept_leader(christiansufferterrahumanitarianorganization,countryahumanitarianorganization) ).

fof(deduced_162,axiom,
    accept_city(christiansufferterrahumanitarianorganization,townc) ).

fof(deduced_163,axiom,
    accept_leader(christiansufferterrahumanitarianorganization,countryacivilorganization) ).

fof(deduced_164,axiom,
    accept_number(christiansufferterrahumanitarianorganization,n5) ).

fof(deduced_165,axiom,
    accept_number(christiansufferterrahumanitarianorganization,n4) ).

fof(deduced_166,axiom,
    accept_number(christiansufferterrahumanitarianorganization,n3) ).

fof(deduced_167,axiom,
    accept_number(christiansufferterrahumanitarianorganization,n2) ).

fof(deduced_168,axiom,
    accept_number(christiansufferterrahumanitarianorganization,n1) ).

fof(deduced_169,axiom,
    accept_number(christiansufferterrahumanitarianorganization,n6) ).

fof(deduced_170,axiom,
    accept_population(christiansufferterrahumanitarianorganization,other,n1) ).

fof(deduced_171,axiom,
    accept_population(christiansufferterrahumanitarianorganization,native,n0) ).

fof(deduced_172,axiom,
    accept_population(christiansufferterrahumanitarianorganization,muslim,n1) ).

fof(deduced_173,axiom,
    accept_population(christiansufferterrahumanitarianorganization,christian,n20) ).

fof(deduced_174,axiom,
    accept_population(christiansufferterrahumanitarianorganization,atheist,n78) ).

fof(deduced_175,axiom,
    accept_city(christiansufferterrahumanitarianorganization,cityb) ).

fof(deduced_176,axiom,
    accept_leader(christiansufferterrahumanitarianorganization,countrybhumanitarianorganization) ).

fof(deduced_177,axiom,
    accept_population(countryccivilorganization,other,n5) ).

fof(deduced_178,axiom,
    accept_population(countryccivilorganization,muslim,n65) ).

fof(deduced_179,axiom,
    accept_population(countryccivilorganization,christian,n0) ).

fof(deduced_180,axiom,
    accept_population(countryccivilorganization,atheist,n30) ).

fof(deduced_181,axiom,
    accept_city(countryccivilorganization,townc) ).

fof(deduced_182,axiom,
    accept_leader(countryccivilorganization,countryahumanitarianorganization) ).

fof(deduced_183,axiom,
    accept_leader(countrycmedicalorganization,muslimcountrybhumanitarianorganization) ).

fof(deduced_184,axiom,
    accept_population(countrycmedicalorganization,other,n5) ).

fof(deduced_185,axiom,
    accept_population(countrycmedicalorganization,muslim,n65) ).

fof(deduced_186,axiom,
    accept_population(countrycmedicalorganization,christian,n0) ).

fof(deduced_187,axiom,
    accept_population(countrycmedicalorganization,atheist,n30) ).

fof(deduced_188,axiom,
    accept_city(countrycmedicalorganization,townc) ).

fof(deduced_189,axiom,
    accept_leader(countrycmedicalorganization,countryahumanitarianorganization) ).

fof(deduced_190,axiom,
    accept_population(countrycmedicalorganization,other,n1) ).

fof(deduced_191,axiom,
    accept_population(countrycmedicalorganization,christian,n20) ).

fof(deduced_192,axiom,
    accept_population(countrycmedicalorganization,atheist,n78) ).

fof(deduced_193,axiom,
    accept_city(countrycmedicalorganization,cityb) ).

fof(deduced_194,axiom,
    accept_leader(muslimcountrybhumanitarianorganization,countrycmedicalorganization) ).

fof(deduced_195,axiom,
    accept_leader(muslimcountrybhumanitarianorganization,christiancountrychumanitarianorganization) ).

fof(deduced_196,axiom,
    accept_population(muslimcountrybhumanitarianorganization,other,n5) ).

fof(deduced_197,axiom,
    accept_population(muslimcountrybhumanitarianorganization,muslim,n65) ).

fof(deduced_198,axiom,
    accept_population(muslimcountrybhumanitarianorganization,christian,n0) ).

fof(deduced_199,axiom,
    accept_population(muslimcountrybhumanitarianorganization,atheist,n30) ).

fof(deduced_200,axiom,
    accept_city(muslimcountrybhumanitarianorganization,townc) ).

fof(deduced_201,axiom,
    accept_leader(muslimcountrybhumanitarianorganization,countryahumanitarianorganization) ).

fof(deduced_202,axiom,
    accept_population(muslimcountrybhumanitarianorganization,other,n1) ).

fof(deduced_203,axiom,
    accept_population(muslimcountrybhumanitarianorganization,native,n0) ).

fof(deduced_204,axiom,
    accept_population(muslimcountrybhumanitarianorganization,muslim,n1) ).

fof(deduced_205,axiom,
    accept_population(muslimcountrybhumanitarianorganization,christian,n20) ).

fof(deduced_206,axiom,
    accept_population(muslimcountrybhumanitarianorganization,atheist,n78) ).

fof(deduced_207,axiom,
    accept_leader(muslimcountrybhumanitarianorganization,countrybhumanitarianorganization) ).

fof(deduced_208,axiom,
    accept_city(muslimcountrybhumanitarianorganization,cityb) ).

fof(deduced_209,axiom,
    accept_leader(countryamedicalorganization,countryacivilorganization) ).

fof(deduced_210,axiom,
    accept_population(countryamedicalorganization,other,n1) ).

fof(deduced_211,axiom,
    accept_population(countryamedicalorganization,christian,n20) ).

fof(deduced_212,axiom,
    accept_population(countryamedicalorganization,atheist,n78) ).

fof(deduced_213,axiom,
    accept_city(countryamedicalorganization,cityb) ).

fof(deduced_214,axiom,
    accept_leader(countryamedicalorganization,countrybhumanitarianorganization) ).

fof(deduced_215,axiom,
    accept_number(countryamedicalorganization,n5) ).

fof(deduced_216,axiom,
    accept_number(countryamedicalorganization,n4) ).

fof(deduced_217,axiom,
    accept_number(countryamedicalorganization,n3) ).

fof(deduced_218,axiom,
    accept_number(countryamedicalorganization,n2) ).

fof(deduced_219,axiom,
    accept_number(countryamedicalorganization,n1) ).

fof(deduced_220,axiom,
    accept_population(countryamedicalorganization,other,n0) ).

fof(deduced_221,axiom,
    accept_population(countryamedicalorganization,native,n0) ).

fof(deduced_222,axiom,
    accept_population(countryamedicalorganization,muslim,n1) ).

fof(deduced_223,axiom,
    accept_population(countryamedicalorganization,christian,n24) ).

fof(deduced_224,axiom,
    accept_population(countryamedicalorganization,atheist,n75) ).

fof(deduced_225,axiom,
    accept_number(countryamedicalorganization,n6) ).

fof(deduced_226,axiom,
    accept_leader(countryamedicalorganization,sufferterragovernment) ).

fof(deduced_227,axiom,
    accept_city(countryamedicalorganization,towna) ).

fof(deduced_228,axiom,
    accept_population(countryacivilorganization,other,n1) ).

fof(deduced_229,axiom,
    accept_population(countryacivilorganization,christian,n20) ).

fof(deduced_230,axiom,
    accept_population(countryacivilorganization,atheist,n78) ).

fof(deduced_231,axiom,
    accept_city(countryacivilorganization,cityb) ).

fof(deduced_232,axiom,
    accept_leader(countryacivilorganization,countrybhumanitarianorganization) ).

fof(deduced_233,axiom,
    accept_leader(countryahumanitarianorganization,countryacivilorganization) ).

fof(deduced_234,axiom,
    accept_population(countryahumanitarianorganization,other,n1) ).

fof(deduced_235,axiom,
    accept_population(countryahumanitarianorganization,christian,n20) ).

fof(deduced_236,axiom,
    accept_population(countryahumanitarianorganization,atheist,n78) ).

fof(deduced_237,axiom,
    accept_city(countryahumanitarianorganization,cityb) ).

fof(deduced_238,axiom,
    accept_leader(countryahumanitarianorganization,countrybhumanitarianorganization) ).

fof(deduced_239,axiom,
    accept_number(countryahumanitarianorganization,n5) ).

fof(deduced_240,axiom,
    accept_number(countryahumanitarianorganization,n4) ).

fof(deduced_241,axiom,
    accept_number(countryahumanitarianorganization,n3) ).

fof(deduced_242,axiom,
    accept_number(countryahumanitarianorganization,n2) ).

fof(deduced_243,axiom,
    accept_number(countryahumanitarianorganization,n1) ).

fof(deduced_244,axiom,
    accept_population(countryahumanitarianorganization,other,n0) ).

fof(deduced_245,axiom,
    accept_population(countryahumanitarianorganization,native,n0) ).

fof(deduced_246,axiom,
    accept_population(countryahumanitarianorganization,muslim,n1) ).

fof(deduced_247,axiom,
    accept_population(countryahumanitarianorganization,christian,n24) ).

fof(deduced_248,axiom,
    accept_population(countryahumanitarianorganization,atheist,n75) ).

fof(deduced_249,axiom,
    accept_number(countryahumanitarianorganization,n6) ).

fof(deduced_250,axiom,
    accept_leader(countryahumanitarianorganization,sufferterragovernment) ).

fof(deduced_251,axiom,
    accept_city(countryahumanitarianorganization,towna) ).

fof(deduced_252,axiom,
    accept_leader(sufferterragovernment,countryacivilorganization) ).

fof(deduced_253,axiom,
    accept_population(sufferterragovernment,other,n1) ).

fof(deduced_254,axiom,
    accept_population(sufferterragovernment,native,n0) ).

fof(deduced_255,axiom,
    accept_population(sufferterragovernment,muslim,n1) ).

fof(deduced_256,axiom,
    accept_population(sufferterragovernment,christian,n20) ).

fof(deduced_257,axiom,
    accept_population(sufferterragovernment,atheist,n78) ).

fof(deduced_258,axiom,
    accept_city(sufferterragovernment,cityb) ).

fof(deduced_259,axiom,
    accept_leader(sufferterragovernment,countrybhumanitarianorganization) ).

fof(deduced_260,axiom,
    accept_population(countryccivilorganization,other,n0) ).

fof(deduced_261,axiom,
    accept_population(countryccivilorganization,native,n0) ).

fof(deduced_262,axiom,
    accept_population(countryccivilorganization,muslim,n1) ).

fof(deduced_263,axiom,
    accept_population(countryccivilorganization,christian,n24) ).

fof(deduced_264,axiom,
    accept_population(countryccivilorganization,atheist,n75) ).

fof(deduced_265,axiom,
    accept_city(countryccivilorganization,towna) ).

fof(deduced_266,axiom,
    accept_leader(countryccivilorganization,sufferterragovernment) ).

fof(deduced_267,axiom,
    accept_number(countryafirstaidorganization,n5) ).

fof(deduced_268,axiom,
    accept_number(countryafirstaidorganization,n4) ).

fof(deduced_269,axiom,
    accept_number(countryafirstaidorganization,n3) ).

fof(deduced_270,axiom,
    accept_number(countryafirstaidorganization,n2) ).

fof(deduced_271,axiom,
    accept_number(countryafirstaidorganization,n1) ).

fof(deduced_272,axiom,
    accept_population(countryafirstaidorganization,other,n0) ).

fof(deduced_273,axiom,
    accept_population(countryafirstaidorganization,native,n0) ).

fof(deduced_274,axiom,
    accept_population(countryafirstaidorganization,muslim,n1) ).

fof(deduced_275,axiom,
    accept_population(countryafirstaidorganization,christian,n24) ).

fof(deduced_276,axiom,
    accept_population(countryafirstaidorganization,atheist,n75) ).

fof(deduced_277,axiom,
    accept_number(countryafirstaidorganization,n6) ).

fof(deduced_278,axiom,
    accept_leader(countryafirstaidorganization,sufferterragovernment) ).

fof(deduced_279,axiom,
    accept_city(countryafirstaidorganization,towna) ).

fof(deduced_280,axiom,
    accept_leader(countrycmedicalorganization,countryccivilorganization) ).

fof(deduced_281,axiom,
    accept_leader(countrycmedicalorganization,countrybcivilorganization) ).

fof(deduced_282,axiom,
    accept_leader(countrycmedicalorganization,countrybhumanitarianorganization) ).

fof(deduced_283,axiom,
    accept_leader(countrycmedicalorganization,christiancountrychumanitarianorganization) ).

fof(deduced_284,axiom,
    accept_population(countrycmedicalorganization,other,n0) ).

fof(deduced_285,axiom,
    accept_population(countrycmedicalorganization,native,n0) ).

fof(deduced_286,axiom,
    accept_population(countrycmedicalorganization,muslim,n1) ).

fof(deduced_287,axiom,
    accept_population(countrycmedicalorganization,christian,n24) ).

fof(deduced_288,axiom,
    accept_population(countrycmedicalorganization,atheist,n75) ).

fof(deduced_289,axiom,
    accept_city(countrycmedicalorganization,towna) ).

fof(deduced_290,axiom,
    accept_leader(countrycmedicalorganization,sufferterragovernment) ).

fof(deduced_291,axiom,
    accept_leader(countrybcivilorganization,countryccivilorganization) ).

fof(deduced_292,axiom,
    accept_leader(countrybcivilorganization,countrybhumanitarianorganization) ).

fof(deduced_293,axiom,
    accept_leader(countrybcivilorganization,christiancountrychumanitarianorganization) ).

fof(deduced_294,axiom,
    accept_leader(countrybcivilorganization,countrycmedicalorganization) ).

fof(deduced_295,axiom,
    accept_population(countrybcivilorganization,other,n0) ).

fof(deduced_296,axiom,
    accept_population(countrybcivilorganization,native,n0) ).

fof(deduced_297,axiom,
    accept_population(countrybcivilorganization,muslim,n1) ).

fof(deduced_298,axiom,
    accept_population(countrybcivilorganization,christian,n24) ).

fof(deduced_299,axiom,
    accept_population(countrybcivilorganization,atheist,n75) ).

fof(deduced_300,axiom,
    accept_city(countrybcivilorganization,towna) ).

fof(deduced_301,axiom,
    accept_leader(countrybcivilorganization,sufferterragovernment) ).

fof(deduced_302,axiom,
    accept_number(sufferterragovernment,n5) ).

fof(deduced_303,axiom,
    accept_number(sufferterragovernment,n4) ).

fof(deduced_304,axiom,
    accept_number(sufferterragovernment,n3) ).

fof(deduced_305,axiom,
    accept_number(sufferterragovernment,n2) ).

fof(deduced_306,axiom,
    accept_number(sufferterragovernment,n1) ).

fof(deduced_307,axiom,
    accept_number(sufferterragovernment,n6) ).

fof(deduced_308,axiom,
    accept_number(countryacivilorganization,n5) ).

fof(deduced_309,axiom,
    accept_number(countryacivilorganization,n4) ).

fof(deduced_310,axiom,
    accept_number(countryacivilorganization,n3) ).

fof(deduced_311,axiom,
    accept_number(countryacivilorganization,n2) ).

fof(deduced_312,axiom,
    accept_number(countryacivilorganization,n1) ).

fof(deduced_313,axiom,
    accept_population(countryacivilorganization,other,n0) ).

fof(deduced_314,axiom,
    accept_population(countryacivilorganization,native,n0) ).

fof(deduced_315,axiom,
    accept_population(countryacivilorganization,muslim,n1) ).

fof(deduced_316,axiom,
    accept_population(countryacivilorganization,christian,n24) ).

fof(deduced_317,axiom,
    accept_population(countryacivilorganization,atheist,n75) ).

fof(deduced_318,axiom,
    accept_number(countryacivilorganization,n6) ).

fof(deduced_319,axiom,
    accept_leader(countryacivilorganization,sufferterragovernment) ).

fof(deduced_320,axiom,
    accept_city(countryacivilorganization,towna) ).

fof(deduced_321,axiom,
    accept_number(countryccivilorganization,n3) ).

fof(deduced_322,axiom,
    accept_number(countryccivilorganization,n2) ).

fof(deduced_323,axiom,
    accept_number(countryccivilorganization,n1) ).

fof(deduced_324,axiom,
    accept_number(countryccivilorganization,n4) ).

fof(deduced_325,axiom,
    accept_leader(christiancountrychumanitarianorganization,countryccivilorganization) ).

fof(deduced_326,axiom,
    accept_number(countrybcivilorganization,n5) ).

fof(deduced_327,axiom,
    accept_number(countrybcivilorganization,n4) ).

fof(deduced_328,axiom,
    accept_number(countrybcivilorganization,n3) ).

fof(deduced_329,axiom,
    accept_number(countrybcivilorganization,n2) ).

fof(deduced_330,axiom,
    accept_number(countrybcivilorganization,n1) ).

fof(deduced_331,axiom,
    accept_number(countrybcivilorganization,n6) ).

fof(deduced_332,axiom,
    accept_leader(christiancountrychumanitarianorganization,countrybcivilorganization) ).

fof(deduced_333,axiom,
    accept_number(countrybhumanitarianorganization,n5) ).

fof(deduced_334,axiom,
    accept_number(countrybhumanitarianorganization,n4) ).

fof(deduced_335,axiom,
    accept_number(countrybhumanitarianorganization,n3) ).

fof(deduced_336,axiom,
    accept_number(countrybhumanitarianorganization,n2) ).

fof(deduced_337,axiom,
    accept_number(countrybhumanitarianorganization,n1) ).

fof(deduced_338,axiom,
    accept_number(countrybhumanitarianorganization,n6) ).

fof(deduced_339,axiom,
    accept_leader(christiancountrychumanitarianorganization,countrybhumanitarianorganization) ).

fof(deduced_340,axiom,
    accept_leader(christiancountrychumanitarianorganization,countrycmedicalorganization) ).

fof(deduced_341,axiom,
    accept_number(christiancountrychumanitarianorganization,n5) ).

fof(deduced_342,axiom,
    accept_number(christiancountrychumanitarianorganization,n4) ).

fof(deduced_343,axiom,
    accept_number(christiancountrychumanitarianorganization,n3) ).

fof(deduced_344,axiom,
    accept_number(christiancountrychumanitarianorganization,n2) ).

fof(deduced_345,axiom,
    accept_number(christiancountrychumanitarianorganization,n1) ).

fof(deduced_346,axiom,
    accept_number(christiancountrychumanitarianorganization,n6) ).

fof(deduced_347,axiom,
    accept_population(christiancountrychumanitarianorganization,other,n0) ).

fof(deduced_348,axiom,
    accept_population(christiancountrychumanitarianorganization,native,n0) ).

fof(deduced_349,axiom,
    accept_population(christiancountrychumanitarianorganization,muslim,n1) ).

fof(deduced_350,axiom,
    accept_population(christiancountrychumanitarianorganization,christian,n24) ).

fof(deduced_351,axiom,
    accept_population(christiancountrychumanitarianorganization,atheist,n75) ).

fof(deduced_352,axiom,
    accept_city(christiancountrychumanitarianorganization,towna) ).

fof(deduced_353,axiom,
    accept_leader(christiancountrychumanitarianorganization,sufferterragovernment) ).

fof(deduced_354,axiom,
    accept_number(countrycmedicalorganization,n5) ).

fof(deduced_355,axiom,
    accept_number(countrycmedicalorganization,n4) ).

fof(deduced_356,axiom,
    accept_number(countrycmedicalorganization,n3) ).

fof(deduced_357,axiom,
    accept_number(countrycmedicalorganization,n2) ).

fof(deduced_358,axiom,
    accept_number(countrycmedicalorganization,n1) ).

fof(deduced_359,axiom,
    accept_number(countrycmedicalorganization,n6) ).

fof(deduced_360,axiom,
    accept_number(muslimcountrybhumanitarianorganization,n5) ).

fof(deduced_361,axiom,
    accept_number(muslimcountrybhumanitarianorganization,n4) ).

fof(deduced_362,axiom,
    accept_number(muslimcountrybhumanitarianorganization,n3) ).

fof(deduced_363,axiom,
    accept_number(muslimcountrybhumanitarianorganization,n2) ).

fof(deduced_364,axiom,
    accept_number(muslimcountrybhumanitarianorganization,n1) ).

fof(deduced_365,axiom,
    accept_number(muslimcountrybhumanitarianorganization,n6) ).

fof(deduced_366,axiom,
    ~ accept_city(muslimcountrybhumanitarianorganization,towna) ).

fof(deduced_367,axiom,
    accept_leader(muslimcountrybhumanitarianorganization,sufferterragovernment) ).

%--------------------------------------------------------------------------

%----Include axioms for RDN and RDN less
%------------------------------------------------------------------------------
% File     : NUM005+0 : TPTP v8.1.0. Released v3.1.0.
% Domain   : Number Theory
% Axioms   : Translating from nXXX to rdn notation
% Version  : Especial.
% English  : RDN format is "Reverse Decimal Notation". It stores the digits
%            of a decimal integer in reverse order.

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :  256 ( 256 unt;   0 def)
%            Number of atoms       :  256 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :  260 ( 260 usr; 256 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
fof(rdn0,axiom,
    rdn_translate(n0,rdn_pos(rdnn(n0))) ).

fof(rdn1,axiom,
    rdn_translate(n1,rdn_pos(rdnn(n1))) ).

fof(rdn2,axiom,
    rdn_translate(n2,rdn_pos(rdnn(n2))) ).

fof(rdn3,axiom,
    rdn_translate(n3,rdn_pos(rdnn(n3))) ).

fof(rdn4,axiom,
    rdn_translate(n4,rdn_pos(rdnn(n4))) ).

fof(rdn5,axiom,
    rdn_translate(n5,rdn_pos(rdnn(n5))) ).

fof(rdn6,axiom,
    rdn_translate(n6,rdn_pos(rdnn(n6))) ).

fof(rdn7,axiom,
    rdn_translate(n7,rdn_pos(rdnn(n7))) ).

fof(rdn8,axiom,
    rdn_translate(n8,rdn_pos(rdnn(n8))) ).

fof(rdn9,axiom,
    rdn_translate(n9,rdn_pos(rdnn(n9))) ).

fof(rdn10,axiom,
    rdn_translate(n10,rdn_pos(rdn(rdnn(n0),rdnn(n1)))) ).

fof(rdn11,axiom,
    rdn_translate(n11,rdn_pos(rdn(rdnn(n1),rdnn(n1)))) ).

fof(rdn12,axiom,
    rdn_translate(n12,rdn_pos(rdn(rdnn(n2),rdnn(n1)))) ).

fof(rdn13,axiom,
    rdn_translate(n13,rdn_pos(rdn(rdnn(n3),rdnn(n1)))) ).

fof(rdn14,axiom,
    rdn_translate(n14,rdn_pos(rdn(rdnn(n4),rdnn(n1)))) ).

fof(rdn15,axiom,
    rdn_translate(n15,rdn_pos(rdn(rdnn(n5),rdnn(n1)))) ).

fof(rdn16,axiom,
    rdn_translate(n16,rdn_pos(rdn(rdnn(n6),rdnn(n1)))) ).

fof(rdn17,axiom,
    rdn_translate(n17,rdn_pos(rdn(rdnn(n7),rdnn(n1)))) ).

fof(rdn18,axiom,
    rdn_translate(n18,rdn_pos(rdn(rdnn(n8),rdnn(n1)))) ).

fof(rdn19,axiom,
    rdn_translate(n19,rdn_pos(rdn(rdnn(n9),rdnn(n1)))) ).

fof(rdn20,axiom,
    rdn_translate(n20,rdn_pos(rdn(rdnn(n0),rdnn(n2)))) ).

fof(rdn21,axiom,
    rdn_translate(n21,rdn_pos(rdn(rdnn(n1),rdnn(n2)))) ).

fof(rdn22,axiom,
    rdn_translate(n22,rdn_pos(rdn(rdnn(n2),rdnn(n2)))) ).

fof(rdn23,axiom,
    rdn_translate(n23,rdn_pos(rdn(rdnn(n3),rdnn(n2)))) ).

fof(rdn24,axiom,
    rdn_translate(n24,rdn_pos(rdn(rdnn(n4),rdnn(n2)))) ).

fof(rdn25,axiom,
    rdn_translate(n25,rdn_pos(rdn(rdnn(n5),rdnn(n2)))) ).

fof(rdn26,axiom,
    rdn_translate(n26,rdn_pos(rdn(rdnn(n6),rdnn(n2)))) ).

fof(rdn27,axiom,
    rdn_translate(n27,rdn_pos(rdn(rdnn(n7),rdnn(n2)))) ).

fof(rdn28,axiom,
    rdn_translate(n28,rdn_pos(rdn(rdnn(n8),rdnn(n2)))) ).

fof(rdn29,axiom,
    rdn_translate(n29,rdn_pos(rdn(rdnn(n9),rdnn(n2)))) ).

fof(rdn30,axiom,
    rdn_translate(n30,rdn_pos(rdn(rdnn(n0),rdnn(n3)))) ).

fof(rdn31,axiom,
    rdn_translate(n31,rdn_pos(rdn(rdnn(n1),rdnn(n3)))) ).

fof(rdn32,axiom,
    rdn_translate(n32,rdn_pos(rdn(rdnn(n2),rdnn(n3)))) ).

fof(rdn33,axiom,
    rdn_translate(n33,rdn_pos(rdn(rdnn(n3),rdnn(n3)))) ).

fof(rdn34,axiom,
    rdn_translate(n34,rdn_pos(rdn(rdnn(n4),rdnn(n3)))) ).

fof(rdn35,axiom,
    rdn_translate(n35,rdn_pos(rdn(rdnn(n5),rdnn(n3)))) ).

fof(rdn36,axiom,
    rdn_translate(n36,rdn_pos(rdn(rdnn(n6),rdnn(n3)))) ).

fof(rdn37,axiom,
    rdn_translate(n37,rdn_pos(rdn(rdnn(n7),rdnn(n3)))) ).

fof(rdn38,axiom,
    rdn_translate(n38,rdn_pos(rdn(rdnn(n8),rdnn(n3)))) ).

fof(rdn39,axiom,
    rdn_translate(n39,rdn_pos(rdn(rdnn(n9),rdnn(n3)))) ).

fof(rdn40,axiom,
    rdn_translate(n40,rdn_pos(rdn(rdnn(n0),rdnn(n4)))) ).

fof(rdn41,axiom,
    rdn_translate(n41,rdn_pos(rdn(rdnn(n1),rdnn(n4)))) ).

fof(rdn42,axiom,
    rdn_translate(n42,rdn_pos(rdn(rdnn(n2),rdnn(n4)))) ).

fof(rdn43,axiom,
    rdn_translate(n43,rdn_pos(rdn(rdnn(n3),rdnn(n4)))) ).

fof(rdn44,axiom,
    rdn_translate(n44,rdn_pos(rdn(rdnn(n4),rdnn(n4)))) ).

fof(rdn45,axiom,
    rdn_translate(n45,rdn_pos(rdn(rdnn(n5),rdnn(n4)))) ).

fof(rdn46,axiom,
    rdn_translate(n46,rdn_pos(rdn(rdnn(n6),rdnn(n4)))) ).

fof(rdn47,axiom,
    rdn_translate(n47,rdn_pos(rdn(rdnn(n7),rdnn(n4)))) ).

fof(rdn48,axiom,
    rdn_translate(n48,rdn_pos(rdn(rdnn(n8),rdnn(n4)))) ).

fof(rdn49,axiom,
    rdn_translate(n49,rdn_pos(rdn(rdnn(n9),rdnn(n4)))) ).

fof(rdn50,axiom,
    rdn_translate(n50,rdn_pos(rdn(rdnn(n0),rdnn(n5)))) ).

fof(rdn51,axiom,
    rdn_translate(n51,rdn_pos(rdn(rdnn(n1),rdnn(n5)))) ).

fof(rdn52,axiom,
    rdn_translate(n52,rdn_pos(rdn(rdnn(n2),rdnn(n5)))) ).

fof(rdn53,axiom,
    rdn_translate(n53,rdn_pos(rdn(rdnn(n3),rdnn(n5)))) ).

fof(rdn54,axiom,
    rdn_translate(n54,rdn_pos(rdn(rdnn(n4),rdnn(n5)))) ).

fof(rdn55,axiom,
    rdn_translate(n55,rdn_pos(rdn(rdnn(n5),rdnn(n5)))) ).

fof(rdn56,axiom,
    rdn_translate(n56,rdn_pos(rdn(rdnn(n6),rdnn(n5)))) ).

fof(rdn57,axiom,
    rdn_translate(n57,rdn_pos(rdn(rdnn(n7),rdnn(n5)))) ).

fof(rdn58,axiom,
    rdn_translate(n58,rdn_pos(rdn(rdnn(n8),rdnn(n5)))) ).

fof(rdn59,axiom,
    rdn_translate(n59,rdn_pos(rdn(rdnn(n9),rdnn(n5)))) ).

fof(rdn60,axiom,
    rdn_translate(n60,rdn_pos(rdn(rdnn(n0),rdnn(n6)))) ).

fof(rdn61,axiom,
    rdn_translate(n61,rdn_pos(rdn(rdnn(n1),rdnn(n6)))) ).

fof(rdn62,axiom,
    rdn_translate(n62,rdn_pos(rdn(rdnn(n2),rdnn(n6)))) ).

fof(rdn63,axiom,
    rdn_translate(n63,rdn_pos(rdn(rdnn(n3),rdnn(n6)))) ).

fof(rdn64,axiom,
    rdn_translate(n64,rdn_pos(rdn(rdnn(n4),rdnn(n6)))) ).

fof(rdn65,axiom,
    rdn_translate(n65,rdn_pos(rdn(rdnn(n5),rdnn(n6)))) ).

fof(rdn66,axiom,
    rdn_translate(n66,rdn_pos(rdn(rdnn(n6),rdnn(n6)))) ).

fof(rdn67,axiom,
    rdn_translate(n67,rdn_pos(rdn(rdnn(n7),rdnn(n6)))) ).

fof(rdn68,axiom,
    rdn_translate(n68,rdn_pos(rdn(rdnn(n8),rdnn(n6)))) ).

fof(rdn69,axiom,
    rdn_translate(n69,rdn_pos(rdn(rdnn(n9),rdnn(n6)))) ).

fof(rdn70,axiom,
    rdn_translate(n70,rdn_pos(rdn(rdnn(n0),rdnn(n7)))) ).

fof(rdn71,axiom,
    rdn_translate(n71,rdn_pos(rdn(rdnn(n1),rdnn(n7)))) ).

fof(rdn72,axiom,
    rdn_translate(n72,rdn_pos(rdn(rdnn(n2),rdnn(n7)))) ).

fof(rdn73,axiom,
    rdn_translate(n73,rdn_pos(rdn(rdnn(n3),rdnn(n7)))) ).

fof(rdn74,axiom,
    rdn_translate(n74,rdn_pos(rdn(rdnn(n4),rdnn(n7)))) ).

fof(rdn75,axiom,
    rdn_translate(n75,rdn_pos(rdn(rdnn(n5),rdnn(n7)))) ).

fof(rdn76,axiom,
    rdn_translate(n76,rdn_pos(rdn(rdnn(n6),rdnn(n7)))) ).

fof(rdn77,axiom,
    rdn_translate(n77,rdn_pos(rdn(rdnn(n7),rdnn(n7)))) ).

fof(rdn78,axiom,
    rdn_translate(n78,rdn_pos(rdn(rdnn(n8),rdnn(n7)))) ).

fof(rdn79,axiom,
    rdn_translate(n79,rdn_pos(rdn(rdnn(n9),rdnn(n7)))) ).

fof(rdn80,axiom,
    rdn_translate(n80,rdn_pos(rdn(rdnn(n0),rdnn(n8)))) ).

fof(rdn81,axiom,
    rdn_translate(n81,rdn_pos(rdn(rdnn(n1),rdnn(n8)))) ).

fof(rdn82,axiom,
    rdn_translate(n82,rdn_pos(rdn(rdnn(n2),rdnn(n8)))) ).

fof(rdn83,axiom,
    rdn_translate(n83,rdn_pos(rdn(rdnn(n3),rdnn(n8)))) ).

fof(rdn84,axiom,
    rdn_translate(n84,rdn_pos(rdn(rdnn(n4),rdnn(n8)))) ).

fof(rdn85,axiom,
    rdn_translate(n85,rdn_pos(rdn(rdnn(n5),rdnn(n8)))) ).

fof(rdn86,axiom,
    rdn_translate(n86,rdn_pos(rdn(rdnn(n6),rdnn(n8)))) ).

fof(rdn87,axiom,
    rdn_translate(n87,rdn_pos(rdn(rdnn(n7),rdnn(n8)))) ).

fof(rdn88,axiom,
    rdn_translate(n88,rdn_pos(rdn(rdnn(n8),rdnn(n8)))) ).

fof(rdn89,axiom,
    rdn_translate(n89,rdn_pos(rdn(rdnn(n9),rdnn(n8)))) ).

fof(rdn90,axiom,
    rdn_translate(n90,rdn_pos(rdn(rdnn(n0),rdnn(n9)))) ).

fof(rdn91,axiom,
    rdn_translate(n91,rdn_pos(rdn(rdnn(n1),rdnn(n9)))) ).

fof(rdn92,axiom,
    rdn_translate(n92,rdn_pos(rdn(rdnn(n2),rdnn(n9)))) ).

fof(rdn93,axiom,
    rdn_translate(n93,rdn_pos(rdn(rdnn(n3),rdnn(n9)))) ).

fof(rdn94,axiom,
    rdn_translate(n94,rdn_pos(rdn(rdnn(n4),rdnn(n9)))) ).

fof(rdn95,axiom,
    rdn_translate(n95,rdn_pos(rdn(rdnn(n5),rdnn(n9)))) ).

fof(rdn96,axiom,
    rdn_translate(n96,rdn_pos(rdn(rdnn(n6),rdnn(n9)))) ).

fof(rdn97,axiom,
    rdn_translate(n97,rdn_pos(rdn(rdnn(n7),rdnn(n9)))) ).

fof(rdn98,axiom,
    rdn_translate(n98,rdn_pos(rdn(rdnn(n8),rdnn(n9)))) ).

fof(rdn99,axiom,
    rdn_translate(n99,rdn_pos(rdn(rdnn(n9),rdnn(n9)))) ).

fof(rdn100,axiom,
    rdn_translate(n100,rdn_pos(rdn(rdnn(n0),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn101,axiom,
    rdn_translate(n101,rdn_pos(rdn(rdnn(n1),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn102,axiom,
    rdn_translate(n102,rdn_pos(rdn(rdnn(n2),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn103,axiom,
    rdn_translate(n103,rdn_pos(rdn(rdnn(n3),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn104,axiom,
    rdn_translate(n104,rdn_pos(rdn(rdnn(n4),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn105,axiom,
    rdn_translate(n105,rdn_pos(rdn(rdnn(n5),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn106,axiom,
    rdn_translate(n106,rdn_pos(rdn(rdnn(n6),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn107,axiom,
    rdn_translate(n107,rdn_pos(rdn(rdnn(n7),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn108,axiom,
    rdn_translate(n108,rdn_pos(rdn(rdnn(n8),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn109,axiom,
    rdn_translate(n109,rdn_pos(rdn(rdnn(n9),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn110,axiom,
    rdn_translate(n110,rdn_pos(rdn(rdnn(n0),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn111,axiom,
    rdn_translate(n111,rdn_pos(rdn(rdnn(n1),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn112,axiom,
    rdn_translate(n112,rdn_pos(rdn(rdnn(n2),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn113,axiom,
    rdn_translate(n113,rdn_pos(rdn(rdnn(n3),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn114,axiom,
    rdn_translate(n114,rdn_pos(rdn(rdnn(n4),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn115,axiom,
    rdn_translate(n115,rdn_pos(rdn(rdnn(n5),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn116,axiom,
    rdn_translate(n116,rdn_pos(rdn(rdnn(n6),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn117,axiom,
    rdn_translate(n117,rdn_pos(rdn(rdnn(n7),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn118,axiom,
    rdn_translate(n118,rdn_pos(rdn(rdnn(n8),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn119,axiom,
    rdn_translate(n119,rdn_pos(rdn(rdnn(n9),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn120,axiom,
    rdn_translate(n120,rdn_pos(rdn(rdnn(n0),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdn121,axiom,
    rdn_translate(n121,rdn_pos(rdn(rdnn(n1),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdn122,axiom,
    rdn_translate(n122,rdn_pos(rdn(rdnn(n2),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdn123,axiom,
    rdn_translate(n123,rdn_pos(rdn(rdnn(n3),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdn124,axiom,
    rdn_translate(n124,rdn_pos(rdn(rdnn(n4),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdn125,axiom,
    rdn_translate(n125,rdn_pos(rdn(rdnn(n5),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdn126,axiom,
    rdn_translate(n126,rdn_pos(rdn(rdnn(n6),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdn127,axiom,
    rdn_translate(n127,rdn_pos(rdn(rdnn(n7),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn1,axiom,
    rdn_translate(nn1,rdn_neg(rdnn(n1))) ).

fof(rdnn2,axiom,
    rdn_translate(nn2,rdn_neg(rdnn(n2))) ).

fof(rdnn3,axiom,
    rdn_translate(nn3,rdn_neg(rdnn(n3))) ).

fof(rdnn4,axiom,
    rdn_translate(nn4,rdn_neg(rdnn(n4))) ).

fof(rdnn5,axiom,
    rdn_translate(nn5,rdn_neg(rdnn(n5))) ).

fof(rdnn6,axiom,
    rdn_translate(nn6,rdn_neg(rdnn(n6))) ).

fof(rdnn7,axiom,
    rdn_translate(nn7,rdn_neg(rdnn(n7))) ).

fof(rdnn8,axiom,
    rdn_translate(nn8,rdn_neg(rdnn(n8))) ).

fof(rdnn9,axiom,
    rdn_translate(nn9,rdn_neg(rdnn(n9))) ).

fof(rdnn10,axiom,
    rdn_translate(nn10,rdn_neg(rdn(rdnn(n0),rdnn(n1)))) ).

fof(rdnn11,axiom,
    rdn_translate(nn11,rdn_neg(rdn(rdnn(n1),rdnn(n1)))) ).

fof(rdnn12,axiom,
    rdn_translate(nn12,rdn_neg(rdn(rdnn(n2),rdnn(n1)))) ).

fof(rdnn13,axiom,
    rdn_translate(nn13,rdn_neg(rdn(rdnn(n3),rdnn(n1)))) ).

fof(rdnn14,axiom,
    rdn_translate(nn14,rdn_neg(rdn(rdnn(n4),rdnn(n1)))) ).

fof(rdnn15,axiom,
    rdn_translate(nn15,rdn_neg(rdn(rdnn(n5),rdnn(n1)))) ).

fof(rdnn16,axiom,
    rdn_translate(nn16,rdn_neg(rdn(rdnn(n6),rdnn(n1)))) ).

fof(rdnn17,axiom,
    rdn_translate(nn17,rdn_neg(rdn(rdnn(n7),rdnn(n1)))) ).

fof(rdnn18,axiom,
    rdn_translate(nn18,rdn_neg(rdn(rdnn(n8),rdnn(n1)))) ).

fof(rdnn19,axiom,
    rdn_translate(nn19,rdn_neg(rdn(rdnn(n9),rdnn(n1)))) ).

fof(rdnn20,axiom,
    rdn_translate(nn20,rdn_neg(rdn(rdnn(n0),rdnn(n2)))) ).

fof(rdnn21,axiom,
    rdn_translate(nn21,rdn_neg(rdn(rdnn(n1),rdnn(n2)))) ).

fof(rdnn22,axiom,
    rdn_translate(nn22,rdn_neg(rdn(rdnn(n2),rdnn(n2)))) ).

fof(rdnn23,axiom,
    rdn_translate(nn23,rdn_neg(rdn(rdnn(n3),rdnn(n2)))) ).

fof(rdnn24,axiom,
    rdn_translate(nn24,rdn_neg(rdn(rdnn(n4),rdnn(n2)))) ).

fof(rdnn25,axiom,
    rdn_translate(nn25,rdn_neg(rdn(rdnn(n5),rdnn(n2)))) ).

fof(rdnn26,axiom,
    rdn_translate(nn26,rdn_neg(rdn(rdnn(n6),rdnn(n2)))) ).

fof(rdnn27,axiom,
    rdn_translate(nn27,rdn_neg(rdn(rdnn(n7),rdnn(n2)))) ).

fof(rdnn28,axiom,
    rdn_translate(nn28,rdn_neg(rdn(rdnn(n8),rdnn(n2)))) ).

fof(rdnn29,axiom,
    rdn_translate(nn29,rdn_neg(rdn(rdnn(n9),rdnn(n2)))) ).

fof(rdnn30,axiom,
    rdn_translate(nn30,rdn_neg(rdn(rdnn(n0),rdnn(n3)))) ).

fof(rdnn31,axiom,
    rdn_translate(nn31,rdn_neg(rdn(rdnn(n1),rdnn(n3)))) ).

fof(rdnn32,axiom,
    rdn_translate(nn32,rdn_neg(rdn(rdnn(n2),rdnn(n3)))) ).

fof(rdnn33,axiom,
    rdn_translate(nn33,rdn_neg(rdn(rdnn(n3),rdnn(n3)))) ).

fof(rdnn34,axiom,
    rdn_translate(nn34,rdn_neg(rdn(rdnn(n4),rdnn(n3)))) ).

fof(rdnn35,axiom,
    rdn_translate(nn35,rdn_neg(rdn(rdnn(n5),rdnn(n3)))) ).

fof(rdnn36,axiom,
    rdn_translate(nn36,rdn_neg(rdn(rdnn(n6),rdnn(n3)))) ).

fof(rdnn37,axiom,
    rdn_translate(nn37,rdn_neg(rdn(rdnn(n7),rdnn(n3)))) ).

fof(rdnn38,axiom,
    rdn_translate(nn38,rdn_neg(rdn(rdnn(n8),rdnn(n3)))) ).

fof(rdnn39,axiom,
    rdn_translate(nn39,rdn_neg(rdn(rdnn(n9),rdnn(n3)))) ).

fof(rdnn40,axiom,
    rdn_translate(nn40,rdn_neg(rdn(rdnn(n0),rdnn(n4)))) ).

fof(rdnn41,axiom,
    rdn_translate(nn41,rdn_neg(rdn(rdnn(n1),rdnn(n4)))) ).

fof(rdnn42,axiom,
    rdn_translate(nn42,rdn_neg(rdn(rdnn(n2),rdnn(n4)))) ).

fof(rdnn43,axiom,
    rdn_translate(nn43,rdn_neg(rdn(rdnn(n3),rdnn(n4)))) ).

fof(rdnn44,axiom,
    rdn_translate(nn44,rdn_neg(rdn(rdnn(n4),rdnn(n4)))) ).

fof(rdnn45,axiom,
    rdn_translate(nn45,rdn_neg(rdn(rdnn(n5),rdnn(n4)))) ).

fof(rdnn46,axiom,
    rdn_translate(nn46,rdn_neg(rdn(rdnn(n6),rdnn(n4)))) ).

fof(rdnn47,axiom,
    rdn_translate(nn47,rdn_neg(rdn(rdnn(n7),rdnn(n4)))) ).

fof(rdnn48,axiom,
    rdn_translate(nn48,rdn_neg(rdn(rdnn(n8),rdnn(n4)))) ).

fof(rdnn49,axiom,
    rdn_translate(nn49,rdn_neg(rdn(rdnn(n9),rdnn(n4)))) ).

fof(rdnn50,axiom,
    rdn_translate(nn50,rdn_neg(rdn(rdnn(n0),rdnn(n5)))) ).

fof(rdnn51,axiom,
    rdn_translate(nn51,rdn_neg(rdn(rdnn(n1),rdnn(n5)))) ).

fof(rdnn52,axiom,
    rdn_translate(nn52,rdn_neg(rdn(rdnn(n2),rdnn(n5)))) ).

fof(rdnn53,axiom,
    rdn_translate(nn53,rdn_neg(rdn(rdnn(n3),rdnn(n5)))) ).

fof(rdnn54,axiom,
    rdn_translate(nn54,rdn_neg(rdn(rdnn(n4),rdnn(n5)))) ).

fof(rdnn55,axiom,
    rdn_translate(nn55,rdn_neg(rdn(rdnn(n5),rdnn(n5)))) ).

fof(rdnn56,axiom,
    rdn_translate(nn56,rdn_neg(rdn(rdnn(n6),rdnn(n5)))) ).

fof(rdnn57,axiom,
    rdn_translate(nn57,rdn_neg(rdn(rdnn(n7),rdnn(n5)))) ).

fof(rdnn58,axiom,
    rdn_translate(nn58,rdn_neg(rdn(rdnn(n8),rdnn(n5)))) ).

fof(rdnn59,axiom,
    rdn_translate(nn59,rdn_neg(rdn(rdnn(n9),rdnn(n5)))) ).

fof(rdnn60,axiom,
    rdn_translate(nn60,rdn_neg(rdn(rdnn(n0),rdnn(n6)))) ).

fof(rdnn61,axiom,
    rdn_translate(nn61,rdn_neg(rdn(rdnn(n1),rdnn(n6)))) ).

fof(rdnn62,axiom,
    rdn_translate(nn62,rdn_neg(rdn(rdnn(n2),rdnn(n6)))) ).

fof(rdnn63,axiom,
    rdn_translate(nn63,rdn_neg(rdn(rdnn(n3),rdnn(n6)))) ).

fof(rdnn64,axiom,
    rdn_translate(nn64,rdn_neg(rdn(rdnn(n4),rdnn(n6)))) ).

fof(rdnn65,axiom,
    rdn_translate(nn65,rdn_neg(rdn(rdnn(n5),rdnn(n6)))) ).

fof(rdnn66,axiom,
    rdn_translate(nn66,rdn_neg(rdn(rdnn(n6),rdnn(n6)))) ).

fof(rdnn67,axiom,
    rdn_translate(nn67,rdn_neg(rdn(rdnn(n7),rdnn(n6)))) ).

fof(rdnn68,axiom,
    rdn_translate(nn68,rdn_neg(rdn(rdnn(n8),rdnn(n6)))) ).

fof(rdnn69,axiom,
    rdn_translate(nn69,rdn_neg(rdn(rdnn(n9),rdnn(n6)))) ).

fof(rdnn70,axiom,
    rdn_translate(nn70,rdn_neg(rdn(rdnn(n0),rdnn(n7)))) ).

fof(rdnn71,axiom,
    rdn_translate(nn71,rdn_neg(rdn(rdnn(n1),rdnn(n7)))) ).

fof(rdnn72,axiom,
    rdn_translate(nn72,rdn_neg(rdn(rdnn(n2),rdnn(n7)))) ).

fof(rdnn73,axiom,
    rdn_translate(nn73,rdn_neg(rdn(rdnn(n3),rdnn(n7)))) ).

fof(rdnn74,axiom,
    rdn_translate(nn74,rdn_neg(rdn(rdnn(n4),rdnn(n7)))) ).

fof(rdnn75,axiom,
    rdn_translate(nn75,rdn_neg(rdn(rdnn(n5),rdnn(n7)))) ).

fof(rdnn76,axiom,
    rdn_translate(nn76,rdn_neg(rdn(rdnn(n6),rdnn(n7)))) ).

fof(rdnn77,axiom,
    rdn_translate(nn77,rdn_neg(rdn(rdnn(n7),rdnn(n7)))) ).

fof(rdnn78,axiom,
    rdn_translate(nn78,rdn_neg(rdn(rdnn(n8),rdnn(n7)))) ).

fof(rdnn79,axiom,
    rdn_translate(nn79,rdn_neg(rdn(rdnn(n9),rdnn(n7)))) ).

fof(rdnn80,axiom,
    rdn_translate(nn80,rdn_neg(rdn(rdnn(n0),rdnn(n8)))) ).

fof(rdnn81,axiom,
    rdn_translate(nn81,rdn_neg(rdn(rdnn(n1),rdnn(n8)))) ).

fof(rdnn82,axiom,
    rdn_translate(nn82,rdn_neg(rdn(rdnn(n2),rdnn(n8)))) ).

fof(rdnn83,axiom,
    rdn_translate(nn83,rdn_neg(rdn(rdnn(n3),rdnn(n8)))) ).

fof(rdnn84,axiom,
    rdn_translate(nn84,rdn_neg(rdn(rdnn(n4),rdnn(n8)))) ).

fof(rdnn85,axiom,
    rdn_translate(nn85,rdn_neg(rdn(rdnn(n5),rdnn(n8)))) ).

fof(rdnn86,axiom,
    rdn_translate(nn86,rdn_neg(rdn(rdnn(n6),rdnn(n8)))) ).

fof(rdnn87,axiom,
    rdn_translate(nn87,rdn_neg(rdn(rdnn(n7),rdnn(n8)))) ).

fof(rdnn88,axiom,
    rdn_translate(nn88,rdn_neg(rdn(rdnn(n8),rdnn(n8)))) ).

fof(rdnn89,axiom,
    rdn_translate(nn89,rdn_neg(rdn(rdnn(n9),rdnn(n8)))) ).

fof(rdnn90,axiom,
    rdn_translate(nn90,rdn_neg(rdn(rdnn(n0),rdnn(n9)))) ).

fof(rdnn91,axiom,
    rdn_translate(nn91,rdn_neg(rdn(rdnn(n1),rdnn(n9)))) ).

fof(rdnn92,axiom,
    rdn_translate(nn92,rdn_neg(rdn(rdnn(n2),rdnn(n9)))) ).

fof(rdnn93,axiom,
    rdn_translate(nn93,rdn_neg(rdn(rdnn(n3),rdnn(n9)))) ).

fof(rdnn94,axiom,
    rdn_translate(nn94,rdn_neg(rdn(rdnn(n4),rdnn(n9)))) ).

fof(rdnn95,axiom,
    rdn_translate(nn95,rdn_neg(rdn(rdnn(n5),rdnn(n9)))) ).

fof(rdnn96,axiom,
    rdn_translate(nn96,rdn_neg(rdn(rdnn(n6),rdnn(n9)))) ).

fof(rdnn97,axiom,
    rdn_translate(nn97,rdn_neg(rdn(rdnn(n7),rdnn(n9)))) ).

fof(rdnn98,axiom,
    rdn_translate(nn98,rdn_neg(rdn(rdnn(n8),rdnn(n9)))) ).

fof(rdnn99,axiom,
    rdn_translate(nn99,rdn_neg(rdn(rdnn(n9),rdnn(n9)))) ).

fof(rdnn100,axiom,
    rdn_translate(nn100,rdn_neg(rdn(rdnn(n0),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn101,axiom,
    rdn_translate(nn101,rdn_neg(rdn(rdnn(n1),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn102,axiom,
    rdn_translate(nn102,rdn_neg(rdn(rdnn(n2),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn103,axiom,
    rdn_translate(nn103,rdn_neg(rdn(rdnn(n3),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn104,axiom,
    rdn_translate(nn104,rdn_neg(rdn(rdnn(n4),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn105,axiom,
    rdn_translate(nn105,rdn_neg(rdn(rdnn(n5),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn106,axiom,
    rdn_translate(nn106,rdn_neg(rdn(rdnn(n6),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn107,axiom,
    rdn_translate(nn107,rdn_neg(rdn(rdnn(n7),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn108,axiom,
    rdn_translate(nn108,rdn_neg(rdn(rdnn(n8),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn109,axiom,
    rdn_translate(nn109,rdn_neg(rdn(rdnn(n9),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn110,axiom,
    rdn_translate(nn110,rdn_neg(rdn(rdnn(n0),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn111,axiom,
    rdn_translate(nn111,rdn_neg(rdn(rdnn(n1),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn112,axiom,
    rdn_translate(nn112,rdn_neg(rdn(rdnn(n2),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn113,axiom,
    rdn_translate(nn113,rdn_neg(rdn(rdnn(n3),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn114,axiom,
    rdn_translate(nn114,rdn_neg(rdn(rdnn(n4),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn115,axiom,
    rdn_translate(nn115,rdn_neg(rdn(rdnn(n5),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn116,axiom,
    rdn_translate(nn116,rdn_neg(rdn(rdnn(n6),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn117,axiom,
    rdn_translate(nn117,rdn_neg(rdn(rdnn(n7),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn118,axiom,
    rdn_translate(nn118,rdn_neg(rdn(rdnn(n8),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn119,axiom,
    rdn_translate(nn119,rdn_neg(rdn(rdnn(n9),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn120,axiom,
    rdn_translate(nn120,rdn_neg(rdn(rdnn(n0),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn121,axiom,
    rdn_translate(nn121,rdn_neg(rdn(rdnn(n1),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn122,axiom,
    rdn_translate(nn122,rdn_neg(rdn(rdnn(n2),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn123,axiom,
    rdn_translate(nn123,rdn_neg(rdn(rdnn(n3),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn124,axiom,
    rdn_translate(nn124,rdn_neg(rdn(rdnn(n4),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn125,axiom,
    rdn_translate(nn125,rdn_neg(rdn(rdnn(n5),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn126,axiom,
    rdn_translate(nn126,rdn_neg(rdn(rdnn(n6),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn127,axiom,
    rdn_translate(nn127,rdn_neg(rdn(rdnn(n7),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn128,axiom,
    rdn_translate(nn128,rdn_neg(rdn(rdnn(n8),rdn(rdnn(n2),rdnn(n1))))) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : NUM005+1 : TPTP v8.1.0. Released v3.1.0.
% Domain   : Number Theory
% Axioms   : Less in RDN format
% Version  : Especial.
% English  : Impements a "human style" less using RDN format.

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   30 (  18 unt;   0 def)
%            Number of atoms       :   52 (   2 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   24 (   2   ~;   1   |;   9   &)
%                                         (   2 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   3 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    8 (   7 usr;   0 prp; 1-3 aty)
%            Number of functors    :   14 (  14 usr;  10 con; 0-2 aty)
%            Number of variables   :   35 (  35   !;   0   ?)
% SPC      : 

% Comments : Requires NUM005+0.ax
%------------------------------------------------------------------------------
fof(rdn_digit1,axiom,
    rdn_non_zero_digit(rdnn(n1)) ).

fof(rdn_digit2,axiom,
    rdn_non_zero_digit(rdnn(n2)) ).

fof(rdn_digit3,axiom,
    rdn_non_zero_digit(rdnn(n3)) ).

fof(rdn_digit4,axiom,
    rdn_non_zero_digit(rdnn(n4)) ).

fof(rdn_digit5,axiom,
    rdn_non_zero_digit(rdnn(n5)) ).

fof(rdn_digit6,axiom,
    rdn_non_zero_digit(rdnn(n6)) ).

fof(rdn_digit7,axiom,
    rdn_non_zero_digit(rdnn(n7)) ).

fof(rdn_digit8,axiom,
    rdn_non_zero_digit(rdnn(n8)) ).

fof(rdn_digit9,axiom,
    rdn_non_zero_digit(rdnn(n9)) ).

fof(rdn_positive_less01,axiom,
    rdn_positive_less(rdnn(n0),rdnn(n1)) ).

fof(rdn_positive_less12,axiom,
    rdn_positive_less(rdnn(n1),rdnn(n2)) ).

fof(rdn_positive_less23,axiom,
    rdn_positive_less(rdnn(n2),rdnn(n3)) ).

fof(rdn_positive_less34,axiom,
    rdn_positive_less(rdnn(n3),rdnn(n4)) ).

fof(rdn_positive_less45,axiom,
    rdn_positive_less(rdnn(n4),rdnn(n5)) ).

fof(rdn_positive_less56,axiom,
    rdn_positive_less(rdnn(n5),rdnn(n6)) ).

fof(rdn_positive_less67,axiom,
    rdn_positive_less(rdnn(n6),rdnn(n7)) ).

fof(rdn_positive_less78,axiom,
    rdn_positive_less(rdnn(n7),rdnn(n8)) ).

fof(rdn_positive_less89,axiom,
    rdn_positive_less(rdnn(n8),rdnn(n9)) ).

fof(rdn_positive_less_transitivity,axiom,
    ! [X,Y,Z] :
      ( ( rdn_positive_less(rdnn(X),rdnn(Y))
        & rdn_positive_less(rdnn(Y),rdnn(Z)) )
     => rdn_positive_less(rdnn(X),rdnn(Z)) ) ).

fof(rdn_positive_less_multi_digit_high,axiom,
    ! [Ds,Os,Db,Ob] :
      ( rdn_positive_less(Os,Ob)
     => rdn_positive_less(rdn(rdnn(Ds),Os),rdn(rdnn(Db),Ob)) ) ).

fof(rdn_positive_less_multi_digit_low,axiom,
    ! [Ds,O,Db] :
      ( ( rdn_positive_less(rdnn(Ds),rdnn(Db))
        & rdn_non_zero(O) )
     => rdn_positive_less(rdn(rdnn(Ds),O),rdn(rdnn(Db),O)) ) ).

fof(rdn_extra_digits_positive_less,axiom,
    ! [D,Db,Ob] :
      ( rdn_non_zero(Ob)
     => rdn_positive_less(rdnn(D),rdn(rdnn(Db),Ob)) ) ).

fof(rdn_non_zero_by_digit,axiom,
    ! [X] :
      ( rdn_non_zero_digit(rdnn(X))
     => rdn_non_zero(rdnn(X)) ) ).

fof(rdn_non_zero_by_structure,axiom,
    ! [D,O] :
      ( rdn_non_zero(O)
     => rdn_non_zero(rdn(rdnn(D),O)) ) ).

fof(less_entry_point_pos_pos,axiom,
    ! [X,Y,RDN_X,RDN_Y] :
      ( ( rdn_translate(X,rdn_pos(RDN_X))
        & rdn_translate(Y,rdn_pos(RDN_Y))
        & rdn_positive_less(RDN_X,RDN_Y) )
     => less(X,Y) ) ).

fof(less_entry_point_neg_pos,axiom,
    ! [X,Y,RDN_X,RDN_Y] :
      ( ( rdn_translate(X,rdn_neg(RDN_X))
        & rdn_translate(Y,rdn_pos(RDN_Y)) )
     => less(X,Y) ) ).

fof(less_entry_point_neg_neg,axiom,
    ! [X,Y,RDN_X,RDN_Y] :
      ( ( rdn_translate(X,rdn_neg(RDN_X))
        & rdn_translate(Y,rdn_neg(RDN_Y))
        & rdn_positive_less(RDN_Y,RDN_X) )
     => less(X,Y) ) ).

fof(less_property,axiom,
    ! [X,Y] :
      ( less(X,Y)
    <=> ( ~ less(Y,X)
        & Y != X ) ) ).

%----Old axiom from the days of natural numbers
%fof(less0,axiom,(
%    ~ ( ? [X] : less(X,n0) )   )).

fof(less_or_equal,axiom,
    ! [X,Y] :
      ( less_or_equal(X,Y)
    <=> ( less(X,Y)
        | X = Y ) ) ).

%----Successive integers
fof(less_successor,axiom,
    ! [X,Y,Z] :
      ( ( sum(X,n1,Y)
        & less(Z,Y) )
     => less_or_equal(Z,X) ) ).

%------------------------------------------------------------------------------

%--------------------------------------------------------------------------
fof(query_22,conjecture,
    ? [X,Y] : ~ accept_population(X,native,Y) ).

%--------------------------------------------------------------------------