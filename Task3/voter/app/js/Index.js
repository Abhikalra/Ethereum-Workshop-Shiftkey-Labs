/*@Author Abhinav Halra
 * Javascript for front end interaction with Ballot Contract
 * Ethereum and Blockchain Workshop : 29 Mar,2017
 */
function doSomeStartupStuff() {
    var options = {
        format: 'mm/dd/yyyy',
        todayHighlight: true,
        autoclose: true,
    };
    var date_input = $('input[name="date"]');
    date_input.datepicker(options);
    // add your embarkJS event listener here to initialize the web3 filter at page load
}

function registerVoter() {
    var fname = document.getElementById("firstnameTxt").value;
    var lname = document.getElementById("lastnameTxt").value;
    var dob = document.getElementById("date").value;
    ///////////////////////////////////////////////////////////////////////////////////////////
    MordorVote.CreateUser(fname, lname, dob, { gas: 500000 }).then(function(value) {
        var vid = MordorVote.GetVoterId.call(lname, dob);
        window.alert(vid);
    });

}

function castVote() {
    var voteid = document.getElementById("voteridTxt").value;
    ///////////////////////////////////////////////////////////////////////////////////////////
    if (document.getElementById("bradio").checked === true) {
        if (MordorVote.Vote.call(voteid, 1) != "User not found") {
            MordorVote.Vote(voteid, 1, { gas: 500000 }).then(function(value) {
                window.alert("Batman voted successfully! " + 'Transaction =' + value);
            });
        }
    }
    if (document.getElementById("iradio").checked === true) {
        if (MordorVote.Vote.call(voteid, 2) != "User not found") {
            MordorVote.Vote(voteid, 2, { gas: 500000 }).then(function(value) {
                window.alert("Ironman voted successfully! " + 'Transaction =' + value);
            });
        }
    }
}

function viewIronManEvents() {

}

function viewBatManEvents() {

}

$(document).ready(function() {
    $(".nav-tabs a").click(function() {
        $(this).tab('show');
        document.getElementById("firstnameTxt").value = "";
        document.getElementById("lastnameTxt").value = "";
        document.getElementById("date").value = "";
        document.getElementById("regstatLabel").innerHTML = "";
        document.getElementById("voteridTxt").value = "";
        document.getElementById("balloteventTxtarea").innerHTML = "";

    });

});