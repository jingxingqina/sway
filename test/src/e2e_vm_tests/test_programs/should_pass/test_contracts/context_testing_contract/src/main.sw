contract;

use std::{call_frames::{contract_id, msg_asset_id}, context::{balance_of, msg_amount, this_balance}, registers::{global_gas, context_gas}};
use context_testing_abi::*;

impl ContextTesting for Contract {
    fn get_id() -> ContractId {
        contract_id()
    }

    fn get_this_balance(asset_id: b256) -> u64 {
        this_balance(asset_id)
    }

    fn get_balance_of_contract(asset_id: b256, cid: ContractId) -> u64 {
        balance_of(cid, asset_id)
    }

    fn get_amount() -> u64 {
        msg_amount()
    }

    fn get_asset_id() -> b256 {
        msg_asset_id()
    }

    fn get_gas() -> u64 {
        context_gas()
    }

    fn get_global_gas() -> u64 {
        global_gas()
    }
}
