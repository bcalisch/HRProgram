package com.claimacademy.cardgames;

import java.sql.*;
import java.util.ArrayList;

/**
 * Created by benjamin on 7/23/15.
 */
public class EmployeeUtility {

    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/HR";

    //  Database credentials
    static final String USER = "root";
    static final String PASS = "";

    public static ArrayList<Employee> selectEmployees(String sql) {
        ArrayList<Employee> employees = new ArrayList<Employee>();
        int id;
        String firstName;
        String lastName;
        Double salary;
        String startDate;
        String title;
        String ssn;
        Boolean isManager;
        String department;
        try {
            Class.forName(JDBC_DRIVER);
//            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();
            sql="SELECT * FROM HR.Employee Where ID Like \""+ sql+ "\"";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                id = rs.getInt("ID");
                firstName = rs.getString("FirstName");
                lastName = rs.getString("LastName");
                salary = rs.getDouble("Salary");
                title = rs.getString("Title");
                ssn = rs.getString("SSN");
                isManager = rs.getBoolean("IsManager");
                department = rs.getString("Department");
                startDate = rs.getString("StartDate");
                employees.add(new Employee(id, firstName, lastName, title, department, ssn, salary, startDate, isManager));

//                int age = rs.getInt("age");

                //Display values
            }
            // Clean-up environment
            rs.close();
            stmt.close();
            conn.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return employees;
    }

    public static String addEmployee(Employee employee) {
        ArrayList<Employee> employees = new ArrayList<Employee>();
        int id;
        String result = "Everything Went Fine!!";
        String firstName = "\""+employee.getFirstName()+"\"";
        String lastName = "\""+employee.getLastName()+"\"";
        Double salary = employee.getSalary();
        String startDate = "\'"+employee.getStartDate()+"\'";
        String title = "\""+employee.getTitle()+"\"";
        String ssn = "\""+employee.getSSN()+"\"";
        //Boolean isManager = false;

        String department = "\""+employee.getDepartment()+"\"";
        String sqlStatement = "Insert into HR.Employee (FirstName, LastName, Salary, StartDate, Title, Department, SSN) values "
                + "(" + firstName + "," + lastName + "," + salary + ",STR_TO_DATE("+startDate+", '%Y-%m-%d') ," + title + "," + department + "," + ssn+")";
        try {
            Class.forName(JDBC_DRIVER);
//            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(sqlStatement);


            stmt.close();
            conn.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            result = "This didn't work right!  Check the logs!!!";
            e.printStackTrace();
        }
        return result;
    }
}
