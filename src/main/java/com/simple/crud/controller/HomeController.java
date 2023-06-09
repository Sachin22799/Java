

package com.simple.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.simple.crud.model.Employee;
import com.simple.crud.service.EmployeeService;

@Controller
public class HomeController {
	@Autowired
 private EmployeeService service; 
	
	@GetMapping("/")
	public String home()
	{
		return "login";
	}
	
	@GetMapping("/login")
	public String home1()
	{
		return "login";
	}
	
	@GetMapping("/Addemp")
	public String create()
	{
		return "Addemp";
	}
	
		
//	@PostMapping("/register")
//	public String save(@ModelAttribute Employee e,Model model){	
//		service.save(e);
//		return "employeeadded";
//	}
	
	@PostMapping("/register")
	public String save(@ModelAttribute Employee e, Model model){	
		boolean emailExists = service.isEmailAlreadyInUse(e.getEmail());
		if (emailExists) {
			model.addAttribute("message", "You have already registered with this email address.");
			return "registrationError";
		} else {
			service.save(e);
			return "employeeadded";
		}
	}

	
	@PostMapping("/loginSuccess")
	public String login(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {	
		Employee e = service.login(email, password);
		if (e != null) {
			model.addAttribute("employee", e);
			return "loginSuccess";
		} else {
			model.addAttribute("error", "Invalid email or password");
			return "Error";
		}
	}
	
	@RequestMapping("/EmployeeList")
	public String viewAllEmployees(Model model) {
	List<Employee> employees = service.getAllEmployees();
	model.addAttribute("employees", employees);

	return "EmployeeList";

	}
	
	@GetMapping("/edit/{id}")
	public String showEditForm(@PathVariable("id") int id, Model model) {
	    Employee employee = service.getEmployeeById(id);
	    model.addAttribute("employee", employee);
	    return "EditEmp";
	}

	@PostMapping("/update/{id}")
	public String updateEmployee(@PathVariable("id") int id, @ModelAttribute("employee") Employee employee) {
	    employee.setId(id);
	    service.updateEmployee(employee);
	    return "employeeUpdated";
	}

	@GetMapping("/delete/{id}")
	public String deleteEmployee(@PathVariable("id") int id) {
	    service.deleteEmployee(id);
	    return "redirect:/EmployeeList";
	}

	
	
}
