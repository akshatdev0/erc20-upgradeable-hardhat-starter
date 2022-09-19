// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

contract Foo is Initializable, ERC20Upgradeable {
    function initialize() public initializer {
        ERC20Upgradeable.__ERC20_init("Foo", "FOO");
        _mint(_msgSender(), 1_000_000_000 * (10**18));
    }
}
