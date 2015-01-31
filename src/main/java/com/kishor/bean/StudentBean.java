package com.kishor.bean;

import java.util.List;

import org.springframework.stereotype.Component;

import com.kishor.model.Student;
@Component
public class StudentBean {
	
	private List<Student> studentBeans;

	public List<Student> getStudentBeans() {
		return studentBeans;
	}

	public void setStudentBeans(List<Student> studentBeans) {
		this.studentBeans = studentBeans;
	}

	@Override
	public String toString() {
		return "StudentBean [studentBeans=" + studentBeans + "]";
	}

}
