function courseChanged() {
    var x = document.getElementById("course").value;
    document.getElementById("courseMessage").hidden = true;
    switch (x) {
        case "CompE":
            document.getElementById("compESubjects").hidden = false;
            document.getElementById("compSciSubjects").hidden = true;
            document.getElementById("acctSubjects").hidden = true;
            break;
        case "CompSci":
            document.getElementById("compESubjects").hidden = true;
            document.getElementById("compSciSubjects").hidden = false;
            document.getElementById("acctSubjects").hidden = true;
            break;
        case "Acct":
            document.getElementById("compESubjects").hidden = true;
            document.getElementById("compSciSubjects").hidden = true;
            document.getElementById("acctSubjects").hidden = false;
            break;
        default:
            document.getElementById("courseMessage").hidden = false;
    }
    validateCourse();
}


function validateFName() {
    let result = true;

    if (document.forms["studentForm"]["fname"].value == "") {
        document.getElementById("fNameMessage").hidden = false;
        result = false;
    } else {
        document.getElementById("fNameMessage").hidden = true;
    }
    if (document.forms["studentForm"]["course"].value == "") {
        result = false;
    }
    submitButtonStatus(result);

}

function validateLName() {
    let result = true;

    if (document.forms["studentForm"]["fname"].value == "") {
        result = false;
    }
    if (document.forms["studentForm"]["lname"].value == "") {
        document.getElementById("lNameMessage").hidden = false;
        result = false;
    } else {
        document.getElementById("lNameMessage").hidden = true;
    }
    if (document.forms["studentForm"]["address"].value == "") {
        result = false;
    }
    if (document.forms["studentForm"]["course"].value == "") {
        result = false;
    }
    submitButtonStatus(result);
}

function validateAddress() {
    let result = true;

    if (document.forms["studentForm"]["fname"].value == "") {
        result = false;
    }
    if (document.forms["studentForm"]["lname"].value == "") {
        result = false;
    }
    if (document.forms["studentForm"]["address"].value == "") {
        document.getElementById("addressMessage").hidden = false;
        result = false;
    } else {
        document.getElementById("addressMessage").hidden = true;
    }
    if (document.forms["studentForm"]["course"].value == "") {
        result = false;
    }
    submitButtonStatus(result);
}

function validateCourse() {
    let result = true;

    if (document.forms["studentForm"]["fname"].value == "") {
        result = false;
    }
    if (document.forms["studentForm"]["lname"].value == "") {
        result = false;
    }
    if (document.forms["studentForm"]["address"].value == "") {
        result = false;
    } else {
        document.getElementById("addressMessage").hidden = true;
    }
    if (document.forms["studentForm"]["course"].value == "") {
        document.getElementById("courseMessage").hidden = false;
        result = false;
    } else {
        document.getElementById("courseMessage").hidden = true;
    }
    submitButtonStatus(result);
}

function submitButtonStatus(status) {
    if (status) {
        document.getElementById("submitButton").disabled = false;
    } else {
        document.getElementById("submitButton").disabled = true;
    }
}

