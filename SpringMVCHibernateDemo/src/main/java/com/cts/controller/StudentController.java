package com.cts.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.Dao.StudentDao;
import com.cts.model.Student;

@Controller
public class StudentController {

	@Autowired
	private StudentDao studentDao;

	@RequestMapping("/home")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/addStudent")
	public String AddStudent(Model model) {
		Student student=new Student();
		model.addAttribute("student", student);
		return "addStudent";
	}
	
//	@RequestMapping(path = "/saveStudent", method = RequestMethod.POST)
	@PostMapping("/saveStudent")
	public String processData(@Valid @ModelAttribute("student") Student student,BindingResult bindingResult, Model model) {
		if(bindingResult.hasErrors()) {
			return "addStudent";
		}
		else {		
			studentDao.createStudent(student);
			String msg="Student Added/Updated Successfully";
			model.addAttribute("message",msg);
			return "addStudent";
		}	
	}
	
	@GetMapping("/showAll")
	public String showAllStudents(Model model) {
		List<Student> students=studentDao.getAllStudents();
		model.addAttribute("students", students);
		return "showAllStudents";
	}
	
	@RequestMapping("/getStudent")
	public String showStudentByHisId(@RequestParam("id") int id, Model model) {
		Student student=studentDao.getStudentById(id);
		model.addAttribute("student", student);
		return "showStudent";
	}
	
	@RequestMapping("/updateStudent")
	public String studentUpdate(@RequestParam("id") int id,Model model) {
		Student student=studentDao.getStudentById(id);
		model.addAttribute("student", student);
		return "addStudent";
	}
	@RequestMapping("/deleteStudent")
	public String deleteStudentById(@RequestParam("id") int id) {
		studentDao.deleteStudentByID(id);
		return "redirect:/showAll";
	}
}
