<%--
  Created by IntelliJ IDEA.
  User: benjamin
  Date: 7/20/15
  Time: 7:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="formScript.js"></script>
    <title>Add Employee</title>
</head>
<body>

<nav>
    <div id="headText" class="clearfix">
        Welcome to the HR Program!!
    </div>
    <div id="navbar" class="clearfix">
        <ul class="top-level-menu">


            <li><a href="/hr">Home</a></li>
            <li class = "spacer"> </li>
            <li class="menu">
                <a href="/hr/add-employee.jsp">Employees</a>
                <ul class="second-level-menu">

                    <li>
                        <a href="/hr/add-employee.jsp">Add Employee </a>
                    </li>


                    <li>
                        <a href="/hr/view-all-employees.jsp">View All Employees</a>
                    </li>


                </ul>
            </li>
        </ul>

    </div>
</nav>
<div class="container">
    <h1> Add New Employee</h1>

    <form name ="addEmployeeForm" method="post" action="/hr/employee" onsubmit="return validateForm()">
        <table>
            <tr>
                <td>
                    First Name*
                </td>
                <td>
                    <input type="text" name="firstName" onfocus="backgroundColorCheck('firstName')"/>
                </td>
            </tr>
            <tr>
                <td>
                    Last Name*
                </td>
                <td>
                    <input type="text" name="lastName" onfocus="backgroundColorCheck('lastName')"/>
                </td>
            </tr>
            <tr>
                <td>
                    Social Security number
                </td>
                <td>
                    <input type="text" name="ssn" onfocus="backgroundColorCheck('ssn')" onblur="checkSSN()" />
                </td>
            </tr>
            <tr>
                <td>
                    Salary*
                </td>
                <td>
                    <input type="number" name="salary" onfocus="backgroundColorCheck('salary')"/>
                </td>
            </tr>
            <tr>
                <td>
                    Start Date*
                </td>
                <td>
                    <input type="date" name="startDate" onfocus="backgroundColorCheck('startDate')"/>
                </td>
            </tr>
            <tr>
                <td>
                    Title*
                </td>
                <td>

                    <input type="text" name="title" onfocus="backgroundColorCheck('title')"/>
                </td>
            </tr>
            <tr>
                <td>
                    Department*
                </td>
                <td>
                    <select name="department">
                        <option value="HR">HR</option>
                        <option value="IT">IT</option>
                        <option value="Customer Support">Customer Support</option>
                        <option value="Accounting">Accounting</option>
                        <option value="Sales">Sales</option>
                    </select>
                </td>
            </tr>
        </table>
        <input type="submit" name="Add Employee">
        <input type="reset" name="clear">
    </form>


</div>
</body>
</html>
