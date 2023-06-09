

package com.simple.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.simple.crud.DAO.EmployeeRepository;
import com.simple.crud.model.Employee;
@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeRepository repository;
 
	public String save(Employee e) {
		repository.save(e);
		return "employeeadded";

	}

	public Employee login(String email, String password) {

		Employee i = repository.findUserByEmailAndPassword(email, password);

		return i;
		}

	public List<Employee> getAllEmployees() {
	    List<Employee> employees = repository.findAll();
	    return employees;
	}

	
	public Employee update(Employee e) {
		Employee e1=repository.getById(e.getId());
		e1.setFirstname(e.getFirstname());
		e1.setLastname(e.getLastname());
		e1.setEmail(e.getEmail());
		e1.setPassword(e.getPassword());
		e1.setDesignation(e.getDesignation());
		e1.setSalary(e.getSalary());
		return e1;
	}
	
	public Employee getEmployeeById(int id) {
	    return repository.findById(id).orElseThrow();
	}

	public void updateEmployee(Employee employee) {
	    repository.save(employee);
	}

	public void deleteEmployee(int id) {
	    repository.deleteById(id);
	}
	
	public boolean isEmailAlreadyInUse(String email) {
	    Employee employee = repository.findUserByEmail(email);
	    return (employee != null);
	}



}

