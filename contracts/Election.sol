pragma solidity ^0.5.0;

contract Election {

  // Model a Candidate
  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }

  // Read/write Candidates
  mapping(uint => Candidate) public candidates;

  // Store Candidates Count
  uint public candidatesCount;

  // Constructor
  constructor () public {
    addCandidate("User 1");
    addCandidate("User 2");
    addCandidate("User 3");
    addCandidate("User 4");
  }

  function addCandidate (string memory _name) private {
    candidatesCount ++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }
}