package gr.hua.dit.erasmus.mvc;
import gr.hua.dit.erasmus.mvc.Application;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/student")
public class StudentController {

	@GetMapping("/submitApplication")
	public String submitApplication() {
		return "application-form";
	}
	
	@GetMapping("/saveApplication")
	public String saveApplication(HttpServletRequest request, Model model) {
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String studentId = request.getParameter("studentId");
		String email = request.getParameter("email");
		String currentSemester = request.getParameter("currentSemester");
		String department = request.getParameter("department");
		String nameOfFaculty = request.getParameter("nameOfFaculty");
		String languageCertification = request.getParameter("languageCertification");
		Application application = new Application(firstName, lastName, studentId, email, currentSemester, department, nameOfFaculty, languageCertification);
		return "message";		
	}

}
