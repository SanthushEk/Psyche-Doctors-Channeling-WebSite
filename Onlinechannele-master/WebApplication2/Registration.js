function myFunction() {
    var x = document.getElementById("Password_textbox");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}