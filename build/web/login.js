function sisb() {
$("#signinbox").css("display", "block");
$("#signupbox").css("display", "none");
}
function susb() {
$("#signinbox").css("display", "none");
$("#signupbox").css("display", "block");
}

function SubmitLoginForm() {
document.getElementById("signinform").submit()
}
document.getElementById('loginsubmit').onclick = function () {
setTimeout(SubmitLoginForm, 3000);
$("#loginsubmit").addClass("submitfunc");
}

function SubmitLogupForm() {
document.getElementById("signupform").submit()
}
document.getElementById('signupsubmit').onclick = function () {
setTimeout(SubmitLogupForm, 3000);
$("#signupsubmit").addClass("submitfunc");
}
