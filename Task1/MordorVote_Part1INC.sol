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
        // code here
        
    }
    function GetVoterId(string lname, string dob) constant returns(uint)
    {
    for ( uint i=0; i < ufull.length; i++)
    {
        if ((sha3(ufull[i].lastname) == sha3(lname)) && (sha3(ufull[i].dob) == sha3(dob)))
        {
            // code here
            
        }
    }
    return 0;
        
    }
    function Vote(uint vid, uint vote) returns ( string)
    {
        for ( uint i = 0; i < ufull.length; i++)
        {
            if (vid == ufull[i].vid)
            {
                if(vote ==1)
                {
                    // code here
                }
                if(vote ==2)
                {
                    // code here
                }
            }
            
        }
        return "User not found";
        
    }
    function GetVoteCount ( uint cannum) returns ( uint)
    {
        if( cannum == 1)
        {
            // code here
        }
        if ( cannum ==2 )
        {
            // code here
        }
    return 0;

    }

}
