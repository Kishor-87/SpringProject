package com.kishor.myservice;

import java.util.List;

import com.kishor.model.Student;

public interface StudentService {
	public boolean addStudent(Student student);
	public List<Student> listStudent();

}
