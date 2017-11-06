<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html data-ng-app="Demo">
<head>
<title>Home</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular.min.js"></script>
</head>
<body data-ng-controller="demoController">
	<script type="text/javascript">
		var serviceModule = angular.module('Demo', []);
		serviceModule.controller("demoController", function($scope, $http,$window) {
			$scope.tab = {"var1":[ 'A', 'B', 'C' ],"var2":[ 'E', 'F', 'G' ],"var3":[ 'H', 'L', 'X' ] };

			$scope.runScript = function($event, $index,key) {
			
		
				if ($event.keyCode == '13') {
					alert("keyCode " + $event.keyCode);
					var tb = document.getElementById(key+''+$index).setAttribute(
							'contenteditable', 'false');
					var tb = document.getElementById(id).innerHTML;

				}
			}

			$scope.change = function(id) {
				var tb = document.getElementById(id).setAttribute(
						'contenteditable', 'true');
			}

		})
	</script>

	<div align="center">
		<h1>Demo editable table!</h1>
		<table border="3">
			<thead>
				<tr>
					<th>letter 1</th>
					<th>letter 2</th>
					<th>letter 3</th>
				</tr>
			</thead>
			<tbody>
				<tr data-ng-repeat="(key,row) in tab">
					<td id="{{key}}{{$index}}" contenteditable='true'
						data-ng-keypress="runScript($event, $index,key)" data-ng-keyup=""
						data-ng-dblclick="change()"
						data-ng-repeat="column in row track by $index">{{column}}</td>

				</tr>

			</tbody>
		</table>

	</div>

</body>
</html>
