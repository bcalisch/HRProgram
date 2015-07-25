package com.claimacademy.hr;

/**
 * Holds Employee Object
 */
public class Employee {
    private int id;
    private String firstName;
    private String lastName;
    private String title;
    private String department;
    private String ssn;
    private Double salary;
    private String startDate;
    private Boolean isManager;


    public Employee(int id, String firstName, String lastName, String title, String department, String ssn, Double salary, String startDate, Boolean isManager) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.title = title;
        this.department = department;
        this.ssn = ssn;
        this.salary = salary;
        this.startDate = startDate;
        this.isManager = isManager;
    }



    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getSSN() {
        return ssn;
    }

    public void setSSN(String SSN) {
        this.ssn = SSN;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        salary = salary;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public Boolean getIsManager() {
        return isManager;
    }

    public void setIsManager(Boolean isManager) {
        this.isManager = isManager;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getDepartment() {
        return department;
    }

    public String getSsn() {
        return ssn;
    }
}
