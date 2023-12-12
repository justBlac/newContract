#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;
//no changes needed 
//new way of looking into a contract 
    #[event]
    fn Hello(from: ContractAddress, value: felt252) {}


    #[external]
    fn Say_Hello(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }
// maybe there is a need to make new mod
}

//hype on straknet
/*
* loler
*/
