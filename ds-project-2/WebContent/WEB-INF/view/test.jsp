<div class="ui segment">
<h2>${department} Faculties</h2>
<ul id="faculties"></ul>
</div>
<script src="http://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/resources/js/jquery-slim.min.js"><\/script>')</script>
    <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.rest/1.0.2/jquery.rest.min.js" integrity="sha256-ccb00CauVVwZ5O0tZP2P/t1hC3M65ksXU4Cj012kw+s=" crossorigin="anonymous"></script>
<script type="text/javascript">
$(function (){
	var $faculties = $('#faculties');
	var $name = $('#name');
	var $university = $('#university');
	var $department = $('#department');
	var $country = $('#country');
	var $city = $('#city');
	var $language = $('#language');
	var $totalNumberOfSpots = $('#totalNumberOfSpots');
	var $numberOfSpotsAvailable = $('#numberOfSpotsAvailable');
	var $contactInfo = $('#contactInfo');
	
	$.ajax({
		type: 'GET',
		url: 'http://localhost:8080/ds-project-1/api/faculty/list/${department}',
		success: function(faculties) {
			$.each(faculties, function(i, faculty) {
				$faculties.append('<li>name: '+ faculty.name +'university: '+ faculty.university +
						'department: '+ faculty.department +'country: '+ faculty.country +
						'city: '+ faculty.city +'language: '+ faculty.language +'totalNumberOfSpots: ' + faculty.totalNumberOfSpots +
						'numberOfSpotsAvailable: ' +faculty.numberOfSpotsAvailable +'contactInfo: ' +faculty.contactInfo +'</li>');
			});
		},
		error: function() {
			alert('error loading faculties');
		}
	});
});
</script>
