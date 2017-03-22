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
        User memory utemp;
        utemp.firstname = fname;
        utemp.lastname = lname;
        utemp.dob = dob;
        utemp.vid = voterid;
        ufull.push(utemp);
        
    }
    function GetVoterId(string lname, string dob) constant returns(uint)
    {
    for ( uint i=0; i < ufull.length; i++)
    {
        if ((sha3(ufull[i].lastname) == sha3(lname)) && (sha3(ufull[i].dob) == sha3(dob)))
        {
            uint ret = ufull[i].vid;
            return ret;
            
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
                    vote4can1++;
                    return "Candidate 1 voted successfully";
                }
                if(vote ==2)
                {
                    vote4can2++;
                    return "Candidate 2 voted successfully";
                }
            }
            
        }
        return "User not found";
        
    }
    function GetVoteCount ( uint cannum) returns ( uint)
    {
        if( cannum == 1)
        {
            return vote4can1;
        }
        if ( cannum ==2 )
        {
            return vote4can2;
        }
    return 0;

    }

}