<%@ page import="com.claimacademy.cardgames.Employee" %>
<%@ page import="com.claimacademy.cardgames.EmployeeMap" %>
<%@ page import="com.claimacademy.cardgames.EmployeeUtility" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: benjamin
  Date: 7/20/15
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>com.claimacademy.cardgames.Employee Main Page</title>
</head>
<body>
<header>

</header>
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
    <p class="displayInfo">
        <%
            ArrayList<Employee> employees = EmployeeUtility.selectEmployees("%");
            Date date = new Date();
            out.println(date);
            if (EmployeeMap.employeeMap == null) {
                EmployeeMap.setupEmployees();
            }
            int employeeCount = EmployeeMap.employeeMap.size();
        %>
    </p>

    <p class="displayInfo">
        Total Number of Employees: <%=employees.size()%>

    </p>

</div>

</body>
</html>
