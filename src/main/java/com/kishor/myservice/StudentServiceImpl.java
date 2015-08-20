package com.kishor.myservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kishor.dao.StudentDAO;
import com.kishor.model.Student;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDAO studentDAO;

	@Override
	@Transactional
	public boolean addStudent(Student student) {
		
		if (student != null) {
			return studentDAO.addStudent(student);
		}
		return false;

	}

	@Override
	public List<Student> listStudent() {
	
		return studentDAO.listStudent();
	}

	@Override
	public Student findStudentById(Long id) {
		
		return null;
	}

	@Override
	public String getStudentName() {
		
		return null;
	}

}
