#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;
//no changes needed 

    #[event]
    fn Hello(from: ContractAddress, value: felt252) {}
//new changes 

    #[external]
    fn Say_Hello(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
