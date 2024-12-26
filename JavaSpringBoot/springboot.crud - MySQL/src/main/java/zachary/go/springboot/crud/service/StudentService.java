package zachary.go.springboot.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zachary.go.springboot.crud.dao.StudentDao;
import zachary.go.springboot.crud.entity.Student;

@Service
public class StudentService {
	
	@Autowired
	private StudentDao dao;
	
	public String addStudent(Student student) {
		dao.save(student);
		return "New Strudent has been added into DAtabase, roll number :"+student.getRoll();
	}
	public String addStudents(List<Student> students) {
		dao.saveAll(students);
		return "All new Strudent has been added into DAtabase";
	}
	public String deleteStudent(int roll) {
		Student student = dao.getById(roll);
		dao.delete(student);
		return "Roll number is deleted:"+roll;
	}
	
	public String updateStudent(Student student) {
		dao.save(student);
		return "Roll number is updated:"+student.getRoll();
	}
	
	
	public Student getStudent(int roll) {
		return dao.getById(roll);
	}
}
