// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "src/MyTokenResolver.sol";

contract MyTokenResolverTest is Test {

    MyTokenResolver resolver = new MyTokenResolver("ipfs://xyz");

    function setUp() public {}

    function testGetUri() public {
        string memory result = resolver.getUri(1);
        assertEq(result, "ipfs://xyz");
    }
}