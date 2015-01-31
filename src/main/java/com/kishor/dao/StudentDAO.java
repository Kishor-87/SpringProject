package com.kishor.dao;



import java.util.List;

import com.kishor.model.Student;
public interface StudentDAO {
	
	public boolean addStudent(Student student);
	public List<Student> listStudent();

}
