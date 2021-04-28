// A basic smart contract that gets the WETH address of an already deployed router contract
// One is currently deployed on the BSC Testnet on 0xdcD561eEa80210C5ac2ADCE3c173a537d1Baf7FC

//SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

abstract contract Router {
    function WETH() virtual external pure returns (address);
}

contract caller {
    address routerAddress = 0x9Ac64Cc6e4415144C455BD8E4837Fea55603e5c3;
    Router routerContract = Router(routerAddress);
    
    function getWethAddr() public view returns (address) {
        return routerContract.WETH();
    }
}
