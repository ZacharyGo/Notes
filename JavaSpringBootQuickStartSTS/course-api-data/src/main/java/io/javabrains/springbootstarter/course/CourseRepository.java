package io.javabrains.springbootstarter.course;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface CourseRepository extends CrudRepository <Course, String>{

	public List<Course> findByTopicId(String topicId); // Automatically implement a method that will find all Course with Topic that has and Id = topiId
	public List<Course> findByName(String name); // Automatically implement a method that will find all Course with a Name = name
	public List<Course> findByDescription(String description);// Automatically implement a method that will find all Course with a Description = description 
	
}
