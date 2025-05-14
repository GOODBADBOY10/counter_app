/*
/// Module: counter_app
module counter_app::counter_app;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions


#[allow(duplicate_alias)]
module counter_app::counter_app{ 

    use sui::object::{Self, UID};
    use sui::tx_context::TxContext;


    // create a struct for the counter
    public struct Counter has key {
        id: UID,
        count: u64,
    }


    // creattinga a counter
    public fun create(ctx: &mut TxContext): Counter {
        let uid = object::new(ctx);
        Counter { 
            id: uid,
            count: 0
        }
    }
}
