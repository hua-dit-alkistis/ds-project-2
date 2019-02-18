<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="ui segment">
	<h3>Δήλωση Συμμετοχής</h3>
	<form action="saveApplication" method="GET">	
		<p>Όνομα <br><input type="text" id="firstName"></p>
		<p>Επώνυμο <br><input type="text" id="lastName"></p>
		<p>Αριθμός μητρώου <br><input type="text" id="studentId"></p>
		<p>Email <br><input type="text" id="email"></p>
		<p>Τρέχον Εξάμηνο <br><input type="text" id="currentSemester"></p>
		<p>Τμήμα <br><select type="text" id="department">
				<option value="Informatics">Πληροφορικής και Τηλεματικής</option>
				<option value="HomeEconomics">Οικιακής Οικονομίας & Οικολογίας</option>
				<option value="HealthScience">Επιστήμης Διαιτολογίας - Διατροφής</option>
				<option value="Geography">Γεωγραφίας</option>				
			</select></p>
		<p>Όνομα συνεργαζόμενου τμήματος <br><input type="text" id="nameOfFaculty"></p>
		<p>Πιστοποιητικό ξένης γλώσσας <br><input type="file" id="languageCertification"></p>	
	<button style "color=powderblue;" class="ui button" id="submit">Υποβολή</button>
	</form>
</div>

<script src="http://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/resources/js/jquery-slim.min.js"><\/script>')</script>
    <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.rest/1.0.2/jquery.rest.min.js" integrity="sha256-ccb00CauVVwZ5O0tZP2P/t1hC3M65ksXU4Cj012kw+s=" crossorigin="anonymous"></script>
<script type="text/javascript">
$(function (){
	var $applications = $('#applications');
	var $firstName = $('#firstName');
	var $lastName = $('#lastName');
	var $studentId = $('#studentId');
	var $email = $('#email');
	var $currentSemester = $('#currentSemester');
	var $department = $('#department');
	var $nameOfFaculty = $('#nameOfFaculty');
	var $languageCertification = $('#languageCertification');
	
	$('#submit').on('click', function() {
		var application = {
				firstName: $firstName.val(),
				lastName: $lastName.val(),
				studentId: $studentId.val(),
				email: $email.val(),
				currentSemester: $currentSemester.val(),
				department: $department.val(),
				nameOfFaculty: $nameOfFaculty.val(),
				languageCertification: $languageCertification.val(),				
		};
		
		$.ajax({
			type: 'POST',
			url: 'http://localhost:8080/ds-project-1/api/application/submit',
			data: application,
			success: function(newApplication) {
				$applications.append('<li>firstName: '+ newApplication.firstName +'<li>lastName: '+ newApplication.lastName +'<li>studentId: '+ newApplication.studentId +
						'<li>email: '+ newApplication.email +'<li>currentSemester:'+ newApplication.currentSemester +'<li>department: '+ newApplication.department +
						'<li>nameOfFaculty: '+ newApplication.nameOfFaculty +'<li>languageCertification: '+ newApplication.languageCertification + '</li>');
			},
			error: function() {
				alert('error saving application');
			}
		});

});


