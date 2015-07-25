<%@ page import="com.claimacademy.cardgames.Employee" %>
<%@ page import="com.claimacademy.cardgames.EmployeeMap" %>
<%@ page import="com.claimacademy.cardgames.EmployeeUtility" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%--
  Created by IntelliJ IDEA.
  User: benjamin
  Date: 7/21/15
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Employee Information</title>
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
</div>
<div class="container">
    <h1>
        Employee Info
    </h1>

        <%ArrayList<Employee> employees = EmployeeUtility.selectEmployees("%");
  for(Employee employee : employees){
%>
    <table class="viewemployees">
        <tr>
            <th>Name :</th>
            <td><a href="employee.jsp?id=<%=employee.getId()%>">
                <%=employee.getFirstName() + " " + employee.getLastName()%>
            </a>
            </td>
        </tr>

    </table>


        <%}%>


</body>


</html>
