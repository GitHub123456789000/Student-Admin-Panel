
function Chktext() {
    var StdUser = document.getElementById("uid").va
    if (StdUser == "") {
        alert("User ID is required");
        uid.focus();
        return;
    }
    var StdPass = document.getElementById("pass").value;
    if (StdUser == "") {
        alert("User ID is required");
        pass.focus();
        return;
    }
}