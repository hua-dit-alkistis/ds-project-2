package gr.hua.dit.erasmus.mvc;

public class Application {
	
	private String lastName;
	private String firstName;
	private String studentId;
	private String email;
	private String currentSemester;
	private String department;
	private String nameOfFaculty;
	private String languageCertification;
	
	public Application() {
		
	}

	public Application(String studentId, String lastName, String firstName, String email, String currentSemester,
			String department, String nameOfFaculty, String languageCertification) {
		super();
		this.studentId = studentId;
		this.lastName = lastName;
		this.firstName = firstName;
		this.email = email;
		this.currentSemester = currentSemester;
		this.department = department;
		this.nameOfFaculty = nameOfFaculty;
		this.languageCertification = languageCertification;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCurrentSemester() {
		return currentSemester;
	}

	public void setCurrentSemester(String currentSemester) {
		this.currentSemester = currentSemester;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getNameOfFaculty() {
		return nameOfFaculty;
	}

	public void setNameOfFaculty(String nameOfFaculty) {
		this.nameOfFaculty = nameOfFaculty;
	}

	public String getLanguageCertification() {
		return languageCertification;
	}

	public void setLanguageCertification(String languageCertification) {
		this.languageCertification = languageCertification;
	}

	@Override
	public String toString() {
		return "Application [studentId=" + studentId + ", lastName=" + lastName + ", firstName=" + firstName
				+ ", email=" + email + ", currentSemester=" + currentSemester + ", department=" + department
				+ ", nameOfFaculty=" + nameOfFaculty + ", languageCertification=" + languageCertification + "]";
	}
	
	
	
}
