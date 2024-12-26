/* login()">Log In</a></li>
        <li class="nav-ul-li"><a class="nav-ul-li-a" href="javascript:signup()">Sign Up</a></li>
        <li class="nav-ul-li"><a class="nav-ul-li-a" href="javascript:Pricing()">Pricing</a></li>
        <li class="nav-ul-li"><a class="nav-ul-li-a" href="javascript:contact()
 */

var activeMenu = document.getElementById("nav-id-login");
var activeBody = document.getElementById("body-login");
function pageload() {

    activeMenu.className = "nav-active";
    activeBody.style.display = "block";
    resizeelements();
    // signup();
}

function pageresize() {
    resizeelements();
}

function resizeelements() {
    var imageheight = document.getElementById("image-login").clientHeight - 45;
    console.log(imageheight);
    document.getElementById("left-section-login").style.height = imageheight + "px";
    document.getElementById("left-section-signup").style.height = imageheight + "px";
    document.getElementById("middle-section-signup").style.height = imageheight + "px";
    document.getElementById("right-section-signup").style.height = imageheight + "px";
}
function login() {
    activeMenu.className = "nav-ul-li-a"
    activeMenu = document.getElementById("nav-id-login");
    document.getElementById("nav-id-login").className = "nav-active";
    /* Change Body */
    activeBody.style.display = "none";
    activeBody = document.getElementById("body-login");
    activeBody.style.display = "block";

}
function signup() {
    activeMenu.className = "nav-ul-li-a"
    activeMenu = document.getElementById("nav-id-signup");
    document.getElementById("nav-id-signup").className = "nav-active"; login
    /* Change Body */
    activeBody.style.display = "none";
    activeBody = document.getElementById("body-signup");
    activeBody.style.display = "block";

}
function pricing() {
    activeMenu.className = "nav-ul-li-a"
    activeMenu = document.getElementById("nav-id-pricing");
    document.getElementById("nav-id-pricing").className = "nav-active";
    /* Change Body */
    activeBody.style.display = "none";
    activeBody = document.getElementById("body-pricing");
    activeBody.style.display = "block";

}
function contact() {
    activeMenu.className = "nav-ul-li-a"
    activeMenu = document.getElementById("nav-id-pricerange");
    document.getElementById("nav-id-pricerange").className = "nav-active";
    /* Change Body */
    activeBody.style.display = "none";
    activeBody = document.getElementById("body-pricerange");
    activeBody.style.display = "block";

}

function previewimage() {
    var preview = document.getElementById("uploadedImage"); //selects the query named img
    var file = document.getElementById("file").files[0]; //sames as here

    var reader = new FileReader();

    reader.onloadend = function () {
        preview.src = reader.result;
        uploadedImage = reader.result;
    }

    if (file) {
        reader.readAsDataURL(file); //reads the data as a URL
    } else {
        preview.src = "";
    }
}


/* function previewFile2() {
    var preview = document.getElementById("image-login");
    var file = document.getElementById("file1").files[0];
    var reader = new FileReader();

    reader.onloadend = function () {
        preview.src = reader.result;
        console.log("hoy");
    };
    if (file) {
        console.log(file);

        reader.readAsDataURL(file); //reads the data as a URL
        console.log("hoy2");
    } else {
        preview.src = "";
    }
} */




function blockSpecialChar(e) {
    var k;
    document ? k = e.keyCode : k = e.which;
    return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 32 || (k >= 48 && k <= 57));
}

function numberonly(e) {
    var k;
    document ? k = e.keyCode : k = e.which;
    return ((k >= 48 && k <= 57));
}

function validatedate() {
    console.log('validate date');
    return false;
}