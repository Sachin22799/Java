
package com.simple.crud.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.simple.crud.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

    Employee findUserByEmailAndPassword(String email, String password);

    Employee findUserByEmail(String email);

    boolean existsByEmail(String email);

}
