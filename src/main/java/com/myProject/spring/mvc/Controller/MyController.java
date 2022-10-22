package com.myProject.spring.mvc.Controller;

import com.myProject.spring.mvc.DAO.EmployeeDAO;
import com.myProject.spring.mvc.entity.Employee;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {

    @Autowired
    private EmployeeDAO employeeDAO;

    @RequestMapping("/")
    public String showAllEmployees(Model model) {
        List<Employee> allEmployee = employeeDAO.getAllEmployee();
        model.addAttribute("allEmps", allEmployee);
        return "all-employees";
    }

}
