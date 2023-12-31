%--------------------------------------------------------------------------
% File     : SWV010+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Software Verification
% Problem  : Fact 1 of the Neumann-Stubblebine analysis
% Version  : [Wei99] axioms.
% English  :

% Refs     : [Wei99] Weidenbach (1999), Towards and Automatic Analysis of S
%            [Bau99] Baumgartner (1999), FTP'2000 - Problem Sets
% Source   : [Bau99]
% Names    : Fact 1 [Wei99]

% Status   : Satisfiable
% Rating   : 0.00 v6.1.0, 0.20 v6.0.0, 0.00 v2.4.0
% Syntax   : Number of formulae    :   14 (  10 unt;   0 def)
%            Number of atoms       :   25 (   0 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   11 (   0   ~;   0   |;   7   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   11 (   3 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number of predicates  :    8 (   8 usr;   0 prp; 1-1 aty)
%            Number of functors    :   15 (  15 usr;   6 con; 0-4 aty)
%            Number of variables   :   18 (  18   !;   0   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(a_holds_key_at_for_t,axiom,
    a_holds(key(at,t)) ).

fof(a_is_party_of_protocol,axiom,
    party_of_protocol(a) ).

fof(a_sent_message_i_to_b,axiom,
    message(sent(a,b,pair(a,an_a_nonce))) ).

fof(a_stored_message_i,axiom,
    a_stored(pair(b,an_a_nonce)) ).

fof(a_forwards_secure,axiom,
    ! [U,V,W,X,Y,Z] :
      ( ( message(sent(t,a,triple(encrypt(quadruple(Y,Z,W,V),at),X,U)))
        & a_stored(pair(Y,Z)) )
     => ( message(sent(a,Y,pair(X,encrypt(U,W))))
        & a_holds(key(W,Y)) ) ) ).

fof(b_hold_key_bt_for_t,axiom,
    b_holds(key(bt,t)) ).

fof(b_is_party_of_protocol,axiom,
    party_of_protocol(b) ).

fof(nonce_a_is_fresh_to_b,axiom,
    fresh_to_b(an_a_nonce) ).

fof(b_creates_freash_nonces_in_time,axiom,
    ! [U,V] :
      ( ( message(sent(U,b,pair(U,V)))
        & fresh_to_b(V) )
     => ( message(sent(b,t,triple(b,generate_b_nonce(V),encrypt(triple(U,V,generate_expiration_time(V)),bt))))
        & b_stored(pair(U,V)) ) ) ).

fof(b_accepts_secure_session_key,axiom,
    ! [V,X,Y] :
      ( ( message(sent(X,b,pair(encrypt(triple(X,V,generate_expiration_time(Y)),bt),encrypt(generate_b_nonce(Y),V))))
        & b_stored(pair(X,Y)) )
     => b_holds(key(V,X)) ) ).

fof(t_holds_key_at_for_a,axiom,
    t_holds(key(at,a)) ).

fof(t_holds_key_bt_for_b,axiom,
    t_holds(key(bt,b)) ).

fof(t_is_party_of_protocol,axiom,
    party_of_protocol(t) ).

fof(server_t_generates_key,axiom,
    ! [U,V,W,X,Y,Z,X1] :
      ( ( message(sent(U,t,triple(U,V,encrypt(triple(W,X,Y),Z))))
        & t_holds(key(Z,U))
        & t_holds(key(X1,W)) )
     => message(sent(t,W,triple(encrypt(quadruple(U,X,generate_key(X),Y),X1),encrypt(triple(W,generate_key(X),Y),Z),V))) ) ).

%--------------------------------------------------------------------------
