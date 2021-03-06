
/**
 * This file was generated by TONDev.
 * TONDev is a part of TON OS (see http://ton.dev).
 */
pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

contract queue {
    uint32 public timestamp;
    string[] people = ['A', 'B', 'C'];

    constructor() public {
        require(tvm.pubkey() != 0, 101);
        require(msg.pubkey() == tvm.pubkey(), 102);
        tvm.accept();

        timestamp = now;
    }

    function add(string person) public returns(string[]) {
        require(!people.empty(), 100, 'Queue is empty!');
        people.push(person);
        return people;
    }

    function del() public returns(string[]) {
        require(!people.empty(), 100, 'Queue is empty!');
        for (uint i = 0; i < people.length - 1; i++) {
            people[i] = people[i+1];
        }
        //delete people[people.length-1];
        people.pop();
        return people;
    }
}
