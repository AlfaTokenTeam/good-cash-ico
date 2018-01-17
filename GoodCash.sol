pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract GoodCash is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function GoodCash(address _owner)  UpgradeableToken(_owner) {
    name = "GoodCash";
    symbol = "GCH";
    totalSupply = 1350000000000000000000;
    decimals = 10;

    balances[_owner] = totalSupply;
  }
}