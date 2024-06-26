%--------------------------------------------------------------------------
% File     : SWV015+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Software Verification
% Problem  : Fact 7 of the Neumann-Stubblebine analysis
% Version  : [Wei99] axioms.
% English  :

% Refs     : [Wei99] Weidenbach (1999), Towards and Automatic Analysis of S
%            [Bau99] Baumgartner (1999), FTP'2000 - Problem Sets
% Source   : [Bau99]
% Names    : Fact 7 [Wei99]

% Status   : Satisfiable
% Rating   : 0.00 v5.4.0, 0.14 v5.2.0, 0.25 v5.0.0, 0.00 v4.1.0, 0.25 v4.0.1, 0.00 v3.1.0, 0.33 v2.7.0, 0.00 v2.6.0, 0.25 v2.5.0, 0.00 v2.4.0
% Syntax   : Number of formulae    :   30 (  13 unt;   0 def)
%            Number of atoms       :   75 (   0 equ)
%            Maximal formula atoms :    5 (   2 avg)
%            Number of connectives :   47 (   2   ~;   0   |;  30   &)
%                                         (   0 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   4 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number of predicates  :   12 (  12 usr;   0 prp; 1-1 aty)
%            Number of functors    :   15 (  15 usr;   6 con; 0-4 aty)
%            Number of variables   :   54 (  54   !;   0   ?)
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
        & a_key(V)
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
        & t_holds(key(X1,W))
        & a_nonce(X) )
     => message(sent(t,W,triple(encrypt(quadruple(U,X,generate_key(X),Y),X1),encrypt(triple(W,generate_key(X),Y),Z),V))) ) ).

fof(intruder_can_record,axiom,
    ! [U,V,W] :
      ( message(sent(U,V,W))
     => intruder_message(W) ) ).

fof(intruder_decomposes_pairs,axiom,
    ! [U,V] :
      ( intruder_message(pair(U,V))
     => ( intruder_message(U)
        & intruder_message(V) ) ) ).

fof(intruder_decomposes_triples,axiom,
    ! [U,V,W] :
      ( intruder_message(triple(U,V,W))
     => ( intruder_message(U)
        & intruder_message(V)
        & intruder_message(W) ) ) ).

fof(intruder_decomposes_quadruples,axiom,
    ! [U,V,W,X] :
      ( intruder_message(quadruple(U,V,W,X))
     => ( intruder_message(U)
        & intruder_message(V)
        & intruder_message(W)
        & intruder_message(X) ) ) ).

fof(intruder_composes_pairs,axiom,
    ! [U,V] :
      ( ( intruder_message(U)
        & intruder_message(V) )
     => intruder_message(pair(U,V)) ) ).

fof(intruder_composes_triples,axiom,
    ! [U,V,W] :
      ( ( intruder_message(U)
        & intruder_message(V)
        & intruder_message(W) )
     => intruder_message(triple(U,V,W)) ) ).

fof(intruder_composes_quadruples,axiom,
    ! [U,V,W,X] :
      ( ( intruder_message(U)
        & intruder_message(V)
        & intruder_message(W)
        & intruder_message(X) )
     => intruder_message(quadruple(U,V,W,X)) ) ).

fof(intruder_interception,axiom,
    ! [U,V,W] :
      ( ( intruder_message(encrypt(U,V))
        & intruder_holds(key(V,W))
        & party_of_protocol(W) )
     => intruder_message(V) ) ).

fof(intruder_message_sent,axiom,
    ! [U,V,W] :
      ( ( intruder_message(U)
        & party_of_protocol(V)
        & party_of_protocol(W) )
     => message(sent(V,W,U)) ) ).

fof(intruder_holds_key,axiom,
    ! [V,W] :
      ( ( intruder_message(V)
        & party_of_protocol(W) )
     => intruder_holds(key(V,W)) ) ).

fof(intruder_key_encrypts,axiom,
    ! [U,V,W] :
      ( ( intruder_message(U)
        & intruder_holds(key(V,W))
        & party_of_protocol(W) )
     => intruder_message(encrypt(U,V)) ) ).

fof(an_a_nonce_is_a_nonce,axiom,
    a_nonce(an_a_nonce) ).

fof(generated_keys_are_not_nonces,axiom,
    ! [U] : ~ a_nonce(generate_key(U)) ).

fof(generated_times_and_nonces_are_nonces,axiom,
    ! [U] :
      ( a_nonce(generate_expiration_time(U))
      & a_nonce(generate_b_nonce(U)) ) ).

fof(nothing_is_a_nonce_and_a_key,axiom,
    ! [U] :
      ~ ( a_key(U)
        & a_nonce(U) ) ).

fof(generated_keys_are_keys,axiom,
    ! [U] : a_key(generate_key(U)) ).

%--------------------------------------------------------------------------
