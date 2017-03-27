/*@Author Abhinav Kalra
 * Javascript for front end interaction with Ballot Contract
 * Ethereum and Blockchain Workshop : 29 Mar,2017
 */


function doSomeStartupStuff() {
    var options = {
        format: 'mm/dd/yyyy',
        todayHighlight: true,
        autoclose: true,
    };
    var date_input = $('input[name="date"]')
    date_input.datepicker(options);
    // add your embarkJS event listener here to initialize the web3 filter at page load
}

function registerVoter() {
    var fname = document.getElementById("firstnameTxt").value;
    var lname = document.getElementById("lastnameTxt").value;
    var dob = document.getElementById("date").value;


}

function castVote() {

}

$(document).ready(function() {
    $(".nav-tabs a").click(function() {
        $(this).tab('show');
        document.getElementById("firstnameTxt").value = "";
        document.getElementById("lastnameTxt").value = "";
        document.getElementById("date").value = "";
        document.getElementById("regstatLabel").innerHTML = "";
        document.getElementById("voteridTxt").value = "";

    });

});
