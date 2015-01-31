package com.kishor.mycontroller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kishor.bean.StudentBean;
import com.kishor.model.Student;
import com.kishor.myservice.StudentService;

@Controller
public class StudentController {

	private static final Logger logger=Logger.getLogger(StudentController.class);
	
	@Autowired
	private StudentService studentService;
	@Autowired
	private StudentBean sbean;

	@RequestMapping(value = "/student", method = RequestMethod.GET)
	public String getstudentForm() {
		return "student";
	}

	@RequestMapping(value = "/addStudent", method = RequestMethod.POST)
	public String addStudent(@ModelAttribute("student") Student student,
			Model model) {

		logger.info("In Student Controller------------------>");
		if (student != null) {
			boolean flag = studentService.addStudent(student);
			if (flag == true) {
				logger.info("Student Added Successfully:");
				List<Student> studentList=studentService.listStudent();
				logger.info("Student List------------>"+studentList);
				sbean.setStudentBeans(studentList);
				model.addAttribute("sbean", sbean);
				
				
			} else {
				logger.info("Student Not Added:");
			}
		}
		return "output";
	}
	

}
