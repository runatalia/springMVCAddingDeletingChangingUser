package com.myProject.spring.mvc.DAO;

import com.myProject.spring.mvc.entity.Employee;
import java.util.List;

public interface EmployeeDAO {

    public List<Employee> getAllEmployee();
    public void saveEmployee(Employee employee);
    public Employee getEmployee(int id);
    public void deleteEmployee(int id);
}
