pragma solidity ^0.5.0;

contract Election {

  // Model a Candidate
  struct Candidate {
    uint id;
    string name;
    string bio;
  }

  // Read/write Candidates
  mapping(uint => Candidate) public candidates;

  // Store Candidates Count
  uint public candidatesCount;

  // Constructor
  constructor () public {
    addCandidate("User 1", "Legal Advisor");
    addCandidate("User 2", "Therapist");
    addCandidate("Vitalik", "Ethereum Creator");
    addCandidate("Rajat Gupta", "Insider Trading");
  }

  function addCandidate (string memory _name, string memory _bio) private {
    candidatesCount ++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, _bio);
  }
}