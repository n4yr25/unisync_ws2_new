function loginUser() {
    var email = document.getElementById("email").value.trim();
    var password = document.getElementById("password").value.trim();

    console.log(email);
    console.log(password);

    if(email=="" || password=="") {
        alert('fill all fields'); //sweetalert
        return false;
    }

    $.ajax({
        url: "_login.php",
        data: {
            'email' : email,
            'password' : password,
        },
        type: "POST",
        success: function(data) {
            if(data == "success") {
                window.location.replace("teams.php");
            }
            else {
                alert('Account not exist!');
            }
        }
    });

}

function registerUser() {
    var email = document.getElementById("email").value.trim();
    var password = document.getElementById("password").value.trim();
    var confirmPassword = document.getElementById("confirm_password").value.trim();
    var firstname = document.getElementById("firstname").value.trim();
    var lastname = document.getElementById("lastname").value.trim();
    var section = document.getElementById("section").value.trim();
    var yearlevel = document.getElementById("yearlevel").value.trim();
    var address = document.getElementById("address").value.trim();

    if(email=="" || password=="" || confirmPassword=="" || firstname=="" || lastname=="" || section=="" || yearlevel=="" || address=="") {
        alert('fill all fields'); //sweetalert
        return false;
    }
    if(password != confirmPassword) {
        alert('not the same'); //sweetalert
        return false;
    }

    $.ajax({
        url: "_register.php",
        data: {
            'email' : email,
            'password' : password,
            'firstname' : firstname,
            'lastname' : lastname,
            'section' : section,
            'yearlevel' : yearlevel,
            'address' : address,
        },
        type: "POST",
        success: function(data) {
            window.location.replace("index.php");
        }
    });
}