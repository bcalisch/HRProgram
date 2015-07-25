package com.claimacademy.cardgames;

import java.util.HashMap;

/**
 * com.claimacademy.cardgames.Employee Map
 */
public class EmployeeMap {

    public static HashMap<Integer, Employee> employeeMap;

    public static void setupEmployees(){
        employeeMap = new HashMap<Integer, Employee>();
        int id = employeeMap.size();

    }

    public static void addEmployee(Employee employee){
        int id = employeeMap.size();
        employeeMap.put(++id, employee);
    }
}
