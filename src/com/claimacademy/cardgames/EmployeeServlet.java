package com.claimacademy.cardgames;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;

/**
 * Created by benjamin on 7/20/15.
 */
@WebServlet(name = "EmployeeServlet")
public class EmployeeServlet extends HttpServlet {

private static final SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String salary = request.getParameter("salary");
        String startDate = request.getParameter("startDate");
        String employeeTitle = request.getParameter("title");
        String department = request.getParameter("department");
        String ssn = request.getParameter("ssn");
        double salaryDouble = Double.parseDouble(salary);



        Employee employee = new Employee(0,firstName, lastName, employeeTitle, department, ssn, salaryDouble, startDate, false);
        String result = EmployeeUtility.addEmployee(employee);
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String title = "Database Result";
        String docType =
                "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
        out.println(docType +
                        "<html>\n" +
                        "<head>\n" +
                        "    <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n" +
                        "    <title>Add Employee</title>\n" +
                        "</head>\n" +
                        "<body>\n" +
                        "\n" +
                        "<nav>\n" +
                        "    <div id=\"headText\" class=\"clearfix\">\n" +
                        "        Welcome to the HR Program!!\n" +
                        "    </div>\n" +
                        "    <div id=\"navbar\" class=\"clearfix\">\n" +
                        "        <ul class=\"top-level-menu\">\n" +
                        "\n" +
                        "\n" +
                        "            <li><a href=\"/hr\">Home</a></li>\n" +
                        "            <li class = \"spacer\"> </li>\n" +
                        "            <li class=\"menu\">\n" +
                        "                <a href=\"/hr/add-employee.jsp\">Employees</a>\n" +
                        "                <ul class=\"second-level-menu\">\n" +
                        "\n" +
                        "                    <li>\n" +
                        "                        <a href=\"/hr/add-employee.jsp\">Add Employee </a>\n" +
                        "                    </li>\n" +
                        "\n" +
                        "\n" +
                        "                    <li>\n" +
                        "                        <a href=\"/hr/view-all-employees.jsp\">View All Employees</a>\n" +
                        "                    </li>\n" +
                        "\n" +
                        "\n" +
                        "                </ul>\n" +
                        "            </li>\n" +
                        "        </ul>\n" +
                        "\n" +
                        "    </div>\n" +
                        "</nav>" + "<div class= \"container\"><h1>" + title + "</h1>\n"
        );

        out.println(result);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// JDBC driver name and database URL



    }
}
