%------------------------------------------------------------------------------
% File     : SWB005+3 : TPTP v8.1.2. Released v5.2.0.
% Domain   : Semantic Web
% Problem  : Everything is a Resource
% Version  : [Sch11] axioms : Incomplete.
% English  : 

% Refs     : [Sch11] Schneider, M. (2011), Email to G. Sutcliffe
% Source   : [Sch11]
% Names    : 005_Everything_is_a_Resource [Sch11]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.33 v7.4.0, 0.00 v7.1.0, 0.33 v7.0.0, 0.67 v6.4.0, 0.00 v6.3.0, 0.50 v6.2.0, 0.67 v6.1.0, 0.70 v6.0.0, 0.86 v5.5.0, 0.71 v5.4.0, 0.93 v5.3.0, 0.92 v5.2.0
% Syntax   : Number of formulae    :  140 (  74 unt;   0 def)
%            Number of atoms       :  319 (   0 equ)
%            Maximal formula atoms :   15 (   2 avg)
%            Number of connectives :  182 (   3   ~;   3   |;  81   &)
%                                         (  38 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 1-3 aty)
%            Number of functors    :   51 (  51 usr;  51 con; 0-0 aty)
%            Number of variables   :  159 ( 157   !;   2   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
%----Include ALCO Full Extensional axioms
include('Axioms/SWB002+0.ax').
%------------------------------------------------------------------------------
fof(testcase_conclusion_fullish_005_Everything_is_a_Resource,conjecture,
    ( iext(uri_rdf_type,uri_ex_s,uri_rdfs_Resource)
    & iext(uri_rdf_type,uri_ex_s,uri_owl_Thing)
    & iext(uri_rdf_type,uri_ex_p,uri_rdfs_Resource)
    & iext(uri_rdf_type,uri_ex_p,uri_owl_Thing)
    & iext(uri_rdf_type,uri_ex_p,uri_rdf_Property)
    & iext(uri_rdf_type,uri_ex_p,uri_owl_ObjectProperty)
    & iext(uri_rdf_type,uri_ex_o,uri_rdfs_Resource)
    & iext(uri_rdf_type,uri_ex_o,uri_owl_Thing) ) ).

fof(testcase_premise_fullish_005_Everything_is_a_Resource,axiom,
    iext(uri_ex_p,uri_ex_s,uri_ex_o) ).

%------------------------------------------------------------------------------
