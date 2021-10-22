
/**
 * This file was generated by TONDev.
 * TONDev is a part of TON OS (see http://ton.dev).
 */
pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

contract multipy {
    uint32 public timestamp;
    uint256 public result = 1;

    constructor() public {
        require(tvm.pubkey() != 0, 101);
        require(msg.pubkey() == tvm.pubkey(), 102);
        tvm.accept();

        timestamp = now;
    }

    function multipyFunc(uint256 number) public returns (uint256 result) {
        require(((number < 10) && (number > 1)));
        result = result * number;
    }
}
