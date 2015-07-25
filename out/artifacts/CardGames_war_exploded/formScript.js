function validateForm() {
    var firstName = document.forms["addEmployeeForm"]["firstName"].value;
    var lastName = document.forms["addEmployeeForm"]["lastName"].value;
    var salary = document.forms["addEmployeeForm"]["salary"].value;
    var startDate = document.forms["addEmployeeForm"]["startDate"].value;
    var title = document.forms["addEmployeeForm"]["title"].value;
    var alertMessage ="";
    var isComplete = true
    if (firstName == null || firstName == "") {
        alertMessage +=("Name must be filled out\n");
        document.forms["addEmployeeForm"]["firstName"].style.setProperty("background-color", "red");
        isComplete = false;
    }
    if (lastName == null || lastName == "") {
        alertMessage +=("Last name must be filled out\n");
        document.forms["addEmployeeForm"]["lastName"].style.setProperty("background-color", "red");
        isComplete =  false;
    }
    if (salary == null || salary == "") {
        alertMessage+=("Salary must be filled out\n");
        document.forms["addEmployeeForm"]["salary"].style.setProperty("background-color", "red");
        isComplete =  false;
    }
    if (title == null || title == "") {
        alertMessage+=("Title must be filled out\n");
        document.forms["addEmployeeForm"]["title"].style.setProperty("background-color", "red");
        isComplete =  false;
    }
    if (startDate < "1800-01-01" || startDate == "") {
        alertMessage+=("Start Date must be filled out\n");
        document.forms["addEmployeeForm"]["startDate"].style.setProperty("background-color", "red");
        isComplete =  false;
    }
    var formInput = document.forms["addEmployeeForm"]["ssn"];
    if(formInput.value.length> 11){
        formInput.style.setProperty("background-color", "red");
        isComplete=false;
        alertMessage+="SSN has too many characters.  Please fix this\n";
    }
    alertMessage+= startDate;
    if(!isComplete){
        alert(alertMessage);

    }
    return isComplete;

}

function backgroundColorCheck(formName) {

    var formInput = document.forms["addEmployeeForm"][formName];
    if (formInput.style.getPropertyValue("background-color") == "red") {
    formInput.style.setProperty("background-color", "white");
        //    document.forms["addEmployeeForm"]["firstName"].style.setProperty("background-color", "white")
        //}
        //alert(formInput.style.getPropertyValue("background-color"));
    }
}
function checkSSN(){
    var formInput = document.forms["addEmployeeForm"]["ssn"];
    if(formInput.value.length> 11){
        formInput.style.setProperty("background-color", "red");
    }
}
/*<form method="post" action="/hr/employee" onsubmit="return validateForm()">
 <table>
 <tr>
 <td>
 First Name:
 </td>
 <td>
 <input type="text" name="firstName"/>
 </td>
 </tr>
 <tr>
 <td>
 Last Name:
 </td>
 <td>
 <input type="text" name="lastName"/>
 </td>
 </tr>
 <tr>
 <td>
 Social Security number:
 </td>
 <td>
 <input type="text" name="ssn"/>
 </td>
 </tr>
 <tr>
 <td>
 Salary:
 </td>
 <td>
 <input type="text" name="salary"/>
 </td>
 </tr>
 <tr>
 <td>
 Start Date:
 </td>
 <td>
 <input type="date" name="startDate"/>
 </td>
 </tr>
 <tr>
 <td>
 Title:
 </td>
 <td>
 <input type="text" name="title"/>
 </td>
 </tr>
 <tr>
 <td>
 Department:
 </td>
 <td>
 <input type="text" name="department"/>
 </td>
 </tr>
 </table>
 <input type="submit" name="Add Employee">
 <input type="reset" name="clear">
 </form>*/