<%-- 
    Document   : index
    Created on : Dec 20, 2015, 8:19:04 AM
    Author     : miracle


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AJAX with Servlets using AngularJS</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>



<script>
var app = angular.module('myApp', []);
app.controller('Insertion',function($scope,$http ){
    $scope.p1.Getmethod  = function() {
          alert("Get Function Called");
                 $http.get("https://maps.googleapis.com/maps/api/geocode/json?address=london,uk")
  .then(function(response) {
      <!-- $scope.d ="<center><p>Weather Report</p><table><tr><td><b>timezone:<b></td> <td>"+ response.data.timezone+"</td></tr><tr><td><b>temperature:<b></td> <td>"+response.data.timezone+"</td></tr><tr><td><b>humidity:<b></td> <td>"+ response.data.timezone+"</td></tr></table></center>";
	   
	   $scope.timezone = "Latitude: "+response.data.timezone;
	 $scope.temperature = "Longitude: "+ response.data.currently.temperature;
	  --> 
	  
	  $scope.timezone = "Latitude: "+ response.data.results[0].geometry.bounds.northeast.lat;
                $scope.temperature = "Longitude: "+ response.data.results[0].geometry.bounds.northeast.lng
  
  
  });
       };
	   
	   
	   
	   $scope.p1.Postmethod = function() {
       alert("Post Function Called");
                 $http.post("https://api.beta.apim.ibmcloud.com/prasadkompalli55yahoocom/sb/weather_post_info/weather?q=Kakinada,IND&appid=0f9e50a545779bb63149670c93835e9b&client_id=da983bc5-2a20-447b-87db-d825e7989d3a").then(function (response) {
			$scope.temp = "temperature: "+response.data.main.temp;
			$scope.pressure = "pressure: "+ response.data.main.pressure;
			$scope.humidity = "humidity:"+response.data.main.humidity;
  });
       };
       
       
       
       /*$scope.p1.Getmethod1 = function() {
        alert("Get Function Called");
                 $http.get("https://api.beta.apim.ibmcloud.com/prasadkompalli55yahoocom/sb/weather_Post_Info/forecast/5652524eac92b406bf69265b93a97d3b/18.021788,83.510776")
  .then(function(response) {
      <!-- $scope.d ="<center><p>Weather Report</p><table><tr><td><b>timezone:<b></td> <td>"+ response.data.timezone+"</td></tr><tr><td><b>temperature:<b></td> <td>"+response.data.timezone+"</td></tr><tr><td><b>humidity:<b></td> <td>"+ response.data.timezone+"</td></tr></table></center>";
	   -->
	   $scope.timezone = "timezone: "+response.data.timezone;
	 $scope.temperature = "temperature: "+ response.data.currently.temperature;
	  $scope.humidity = "humidity:"+response.data.currently.humidity;
  
  
  });
       };*/
       
       
});

</script>

</head>
<body>
    
<div ng-app="myApp" ng-controller="Insertion as p1">
<center><p>Weather Report</p></center>
    <form name="userform" ng-submit="p1.Postmethod()">
     
    </form>
    
    
     <form name="userform" ng-submit="p1.Getmethod()">
     
     
           <button type="submit">Get Method</button>
		   
			<br><br>
           {{timezone}}<br>
			{{temperature}}<br>
		
			
			
          
    </form>
    <br><br>
    
    <form name="userform" ng-submit="p1.Postmethod()">
     
      
           <button type="submit">Post Method</button>
           <br><br>
           {{temp}}<br>
			{{pressure}}<br>
			{{humidity}}<br>
    </form>
    
  </div>
    
 
    


    
</body>
</html>
