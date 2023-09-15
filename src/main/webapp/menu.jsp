<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu.jsp</title>
<style type="text/css">
ul{
	list-style: none;
}
li{
	border: 1px solid red;
	padding: 10px;
	width: 100px;
}
li:nth-child(2n) {
 /*	background: #FF0000;  16진수로 색표현 RGB*/
 	background: #D00000;
}
li:nth-child(2n+1) {
/* 	background: #0000FF; */
	background: #FF0000;
}
li:first-child{
	border-radius: 10px 10px 0px 0px;
}
li:last-child{
	border-radius: 0px 0px 10px 10px;
}
li > a{
	text-decoration: none;
}
</style>
<script type="text/javascript">

</script>

</head>
<body>
<h1>Menu</h1>
<!-- <a href="/alpha/generator">alpha</a> -->
<ul>
  <li><a href="/alpha/generator">alpha</a></li>
  <li><a href="/alpha/rect">rect</a></li>
  <li><a href="/dept/list">dept</a></li>
  <li><a href="/emp/list">emp</a></li>
  <li><a href="/salgrade/list">salgrade</a></li>
  <li><a href="/city/list">city</a></li>
  <li><a href="/country/list">country</a></li>
  <li><a href="/language/list">language</a></li>
</ul>
</body>
</html>