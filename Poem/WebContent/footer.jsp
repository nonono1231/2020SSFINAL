<%@ page contentType="text/html; charset=utf-8"%>
<footer>
	<small>
		<div id="digClock"></div>
		&copy; Copyright - Web Programming 7 Team
		&nbsp;&nbsp;&nbsp;&reg; 2020&nbsp;
	</small>
</footer>
<script>
	function digClock() { var today=new Date();
	var year=today.getFullYear() + ". ";
	var day=today.getMonth()+1 + ". " + today.getDate() + ". "; 
	var time=today.getHours() + ": " + today.getMinutes() + ": " + today.getSeconds() + "&nbsp;";
	document.getElementById("digClock").innerHTML=year+day+time;
	setTimeout('digClock()', 1000);
		} digClock(); 
</script>