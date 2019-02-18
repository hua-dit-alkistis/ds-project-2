<div class="ui segment">
<h2>${department} Faculties</h2>
	<!-- Example row of columns -->
	<table class="table">
		<thead>
			<tr>
				<th>Name</th>
				<th>University</th>
				<th>Department</th>
				<th>Country</th>
				<th>City</th>
				<th>Language</th>
				<th>Number of Arrivals</th>
				<th>Contact Info</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody id="p1">
		</tbody>
	</table>
	<hr>
</div>

 <script src="http://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/resources/js/jquery-slim.min.js"><\/script>')</script>
    <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.rest/1.0.2/jquery.rest.min.js" integrity="sha256-ccb00CauVVwZ5O0tZP2P/t1hC3M65ksXU4Cj012kw+s=" crossorigin="anonymous"></script>
  	<script type="text/javascript">
  	var myObject
		$(function() {
			var Rest = new $.RestClient(
					'http://localhost:8080/ds-project-1/api/faculty/list/${department}')
			Rest.add('11');
			Rest[11]
					.read()
					.done(
							function(data) {
								myObject = data;
								console.log(myObject[0]);
								var dtable = "";
							    for(var i = 0; i < myObject.length; i++){
							    	dtable += "<tr>"
							    	dtable += "<td>" + myObject[i].name + "</td>";
							    	dtable += "<td>" + myObject[i].university + "</td>";
							    	dtable += "<td>" + myObject[i].department + "</td>";
							    	dtable += "<td>" + myObject[i].country + "</td>";
							    	dtable += "<td>" + myObject[i].city + "</td>";
							    	dtable += "<td>" + myObject[i].language + "</td>";
							    	dtable += "<td>" + myObject[i].totalNumberOfSpots + "</td>";
							    	dtable += "<td>" + myObject[i].contactInfo + "</td>";
							    	dtable += "<td>" + "<a class=\"btn btn-primary btn-sm\" href=\"#\" role=\"button\">Print</a>" + "</td>";
							    	dtable += "</tr>";
							    }
							    document.getElementById("p1").innerHTML = dtable;
							});
		})
	</script>


