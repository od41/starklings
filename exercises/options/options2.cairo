


#[test]
fn test_options() {
    let target = 'starklings';
    let optional_some = Option::Some(target);
    let optional_none: Option<felt252> = Option::None;
    simple_option(optional_some);
    simple_option(optional_none);
}

fn simple_option(optional_target: Option<felt252>) {
    // TODO: use the `is_some` and `is_none` methods to check if `optional_target` contains a value.
    // Place the assertion and the print statement below in the correct blocks.

    // implementation 1
    // match optional_target {
    //     Option::Some(value) => {assert(value == 'starklings', 'err1');},
    //     Option::None => {println!(" option is empty ! ");},
    // }

    // implementation 2
    if(optional_target.is_some()){
        assert(optional_target.unwrap() == 'starklings', 'err1');
    } else if(optional_target.is_none()){
        println!(" option is empty ! ");
    }


}
