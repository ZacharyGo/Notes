package zachary.go.springboot.crud.controller;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import zachary.go.springboot.crud.entity.Student;
import zachary.go.springboot.crud.service.StudentService;

@RestController
public class StudentController {
	private StudentService studentService;

	@PostMapping("/add")
	public String addStudent(@RequestBody Student student) {
		// service class method who can save student
		return studentService.addStudent(student);
	}
	
	@PostMapping("/bulkAdd")
	public String addStudents(@RequestBody List<Student> students) {
		// service class method who can save student
		return studentService.addStudents(students);
	}
	
	@DeleteMapping("/all/{roll}")
	public String deleteStudent(@PathVariable int roll) {
		return studentService.deleteStudent(roll);
	}
	
	@PutMapping("/add")
	public String updateStudent(@RequestBody Student student) {
		return studentService.updateStudent(student);
	}
	
	@RequestMapping("/all/{roll}")
	public Student getStudent(@PathVariable int roll) {
		return studentService.getStudent(roll);
	}
}
