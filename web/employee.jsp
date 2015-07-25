<%@ page import="com.claimacademy.cardgames.Employee" %>
<%@ page import="com.claimacademy.cardgames.EmployeeMap" %>
<%@ page import="com.claimacademy.cardgames.EmployeeUtility" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: benjamin
  Date: 7/20/15
  Time: 7:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Employee Information</title>
</head>
<body>

<navbar>

</navbar>
</div>


<nav>
    <div id="headText" class="clearfix">
        Welcome to the HR Program!!
    </div>
    <div id="navbar" class="clearfix">
        <ul class="top-level-menu">


            <li><a href="/hr">Home</a></li>
            <li class="spacer"></li>
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
    <h1>
        Employee Info
    </h1>
        <%String employeeID = request.getParameter("id");
        ArrayList<Employee> employees = EmployeeUtility.selectEmployees(employeeID);

  System.out.println("EmployeeMap.employeeMap = " + EmployeeMap.employeeMap);
  Employee employee;
  if (employees.size()>0){
  employee = employees.get(0);
  }
  else{  employee= null; %>
    <%
    }

//  if(employeeID.contains(employeeID)){
//    employee = EmployeeMap.employeeMap.get(Integer.parseInt(employeeID));
//  }
//  else{
//    employee = null;
//  }


%>

        <%
  if (employee == null){
    out.print("<h2> No employee found!</h2>");
  }
  else{
%>
    <table>
        <tr>
            <th class="tableHeader">First Name:</th>
            <td><%=employee.getFirstName()%>
            </td>
        </tr>
        <tr>
            <th class="tableHeader">Last Name:</th>
            <td><%=employee.getLastName()%>
            </td>
        </tr>

        <tr>
            <th class="tableHeader">Title:</th>
            <td><%=employee.getTitle()%>
            </td>
        </tr>
        <tr>
            <th class="tableHeader">Salary:</th>
            <td><%=employee.getSalary()%>
            </td>
        </tr>
        <tr>
            <th class="tableHeader">Start Date:</th>
            <td><%=employee.getStartDate()%>
            </td>
        </tr>
    </table>
        <%}%>
</body>


</html>
