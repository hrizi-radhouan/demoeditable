<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
<script type="text/javascript">
	function save(id) {
		var x = document.getElementById(id).innerHTML;
		alert("hola "+x+" ");
		
	}
	
	function runScript(e,id) {
	    if (e.keyCode == 13) {
	    	var tb = document.getElementById(id).setAttribute('contenteditable','false');	
	        var tb = document.getElementById(id).innerHTML;
	        alert("hola "+tb);
	       
	    }
	}
function change(id) {
	var tb = document.getElementById(id).setAttribute('contenteditable','true');	
}

</script>

	<div align="center">
		<h1>Demo editable table!</h1>
		<table border="3">
			<thead>
				<tr>
					<th>letter 1</th>
					<th>letter 2</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id="testA" contenteditable='false' onkeypress="runScript(event,this.id)" ondblclick="change(this.id)">A</td>
					<td id="testB" contenteditable='false' onkeypress="runScript(event,this.id)" ondblclick="change(this.id)">B</td>
				</tr>
				<tr>
					<td id="testC" contenteditable='false' onkeypress="runScript(event,this.id)" ondblclick="change(this.id)">C</td>
					<td id="testD" contenteditable='false' onkeypress="runScript(event,this.id)" ondblclick="change(this.id)">D</td>
				</tr>
			</tbody>
		</table>

	</div>


</body>
</html>
