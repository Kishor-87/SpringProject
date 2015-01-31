package com.kishor.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Component;

import com.kishor.model.Student;

@Component
public class StudentDAOImpl implements StudentDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public boolean addStudent(Student student) {
		// TODO Auto-generated method stub
		System.out.println("Student:--------------------->" + student);

		if (student != null) {
			try {

				em.persist(student);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return true;
		}
		return false;
	}

	@Override
	public List<Student> listStudent() {
		// TODO Auto-generated method stub
		TypedQuery<Student> query=em.createQuery("select o from Student o",Student.class);
		return query.getResultList();
	}

}
