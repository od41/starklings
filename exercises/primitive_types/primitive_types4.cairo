// Modify the integer types to make the tests pass.
// Learn how to convert between integer types, and felts.



fn sum_u8s(x: u8, y: u8) -> u8 {
    x + y
}

//TODO modify the types of this function to prevent an overflow when summing big values
fn sum_big_numbers(x: u256, y: u256) -> u256 {
    x + y
}

fn convert_to_felt(x: u8) -> felt252 { //TODO return x as a felt252.
    let rs: felt252 = x.try_into().unwrap();
    rs
}

fn convert_felt_to_u8(x: felt252) -> u8 { //TODO return x as a u8.
    let rs: u8 = x.try_into().unwrap();
    rs
}

#[test]
fn test_sum_u8s() {
    assert(sum_u8s(1, 2_u8) == 3_u8, 'Something went wrong');
}

#[test]
fn test_sum_big_numbers() {
    //TODO modify this test to use the correct integer types.
    // Don't modify the values, just the types.
    // See how using the _u8 suffix on the numbers lets us specify the type?
    // Try to do the same thing with other integer types.
    assert(sum_big_numbers(255_u256, 255_u256) == 510_u256, 'Something went wrong');
}

#[test]
fn test_convert_to_felt() {
    assert(convert_to_felt(1_u8) == 1, 'Type conversion went wrong');
}

#[test]
fn test_convert_to_u8() {
    assert(convert_felt_to_u8(1) == 1_u8, 'Type conversion went wrong');
}
