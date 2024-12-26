package zachary.go.springboot.crud.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import zachary.go.springboot.crud.entity.Student;

public interface StudentDao extends JpaRepository<Student, Integer>{

	
}
