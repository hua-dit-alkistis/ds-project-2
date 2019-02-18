package gr.hua.dit.erasmus.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/home")
	public String showHome() {
		return "home";
	}
	
	@RequestMapping("/qualification")
	public String showQualification() {
		return "qualification";
	}
	
	@RequestMapping("/departments")
	public String showDepartments() {
		return "departments";
	}

}
