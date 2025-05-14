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

    // creating an increment function
    public fun increment(counter: &mut Counter) {
        counter.count = counter.count + 1;
    }

    // creating a decrement function
    public fun decrement(counter: &mut Counter) {
        assert!(counter.count > 0, 0);
        counter.count = counter.count - 1;
    }

    // multiplication of a function
    public fun multiply(counter: &mut Counter, factor: u64) {
        assert!(factor > 0, 1);
        counter.count = counter.count * factor;
    }

    // division of a function
    public fun divide(counter: &mut Counter, factor: u64) {
        assert!(factor > 0, 2);
        counter.count = counter.count / factor;
    }

    // modulous of a function
    public fun modulous(counter: &mut Counter, factor: u64) {
        assert!(factor > 0, 3);
        counter.count = counter.count % factor;
    }

    // getting the current count
    public fun current_count(counter: &mut Counter): u64 {
        counter.count
    }

}
