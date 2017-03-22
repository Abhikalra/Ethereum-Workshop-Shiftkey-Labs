pragma solidity ^0.4.7;
contract MordorVote {
    uint voterid = 0;
    uint vote4can1;
    uint vote4can2;
    struct User
    {
    string firstname;
    string lastname;
    string dob;
    uint vid;
    }
    User[] ufull;
    
    ///////////////////////////////////////////////////////////////
    function MordorVote() 
    {
        voterid = 1;
    }
    
    function CreateUser(string fname, string lname, string dob) returns(string)
    {
        voterid++;
    /* insert code here*/
        
    }
    function GetVoterId(string lname, string dob) constant returns(uint)
    {
    /* insert code here*/
        
    }
    function Vote(uint vid, uint vote) returns ( string)
    {
        /* insert code here */
    return "User not found";
        
    }
    function GetVoteCount ( uint cannum) returns ( uint)
    {
    


    }

}