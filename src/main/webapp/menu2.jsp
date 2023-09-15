<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu2.jsp</title>
<style type="text/css">
ul{
	list-style: none;
	width:1000px; /*브라우져화면 크기에 따라 메뉴가 위아래로 변하지 않게.. 근데 크기는 무엇?
	                작게하니까 다시 세로로 메뉴 변함....???*/
}
li{
	border: 1px solid red;
	padding: 10px;
	width: 70px;
	text-align: center;
	
	float: left;          /*메뉴를 세로에서 가로로 전환*/
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
	border-radius: 10px 0px 0px 10px;
}
li:last-child{
	border-radius: 0px 10px 10px 0px;
}
/*  세로메뉴일때
li:first-child{
	border-radius: 10px 10px 0px 0px;
}
li:last-child{
	border-radius: 0px 0px 10px 10px;
} */
li > a{
	text-decoration: none;
} 
body{
	border: 5px solid blue;
}
a:link{
	color: black;
	font-size: 1.2em;
}
a:visited{
	color: black;
}
p::first-letter, li::first-letter{
	font-size: 2em;
	color:blue;
}
p::first-line{
	text-decoration: overline;
	font-size: 1.5em;
}
P::selection{
	color:red;
	text-decoration: line-through;
/* 	font-size: 1.5em;  안됨*/
}

li::before{
	content:"^";
	
}
li::after{
	content:"/";
	color: blue;
}
p::after{
/* 	content:url('/media/favicon_small.png'); */
	content:"A";
 	background: red; 
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
<hr>
<div style="width:100px; height:100px; border:1px solid red">box1</div>
<div style="width:100pt; height:100pt; border:1pt solid red">box2</div>
<div style="width:100%; height:80%; border:1pt solid red">box3</div> <!-- 부모 여기서는 body대비의 % -->
<div style="width:1em; height:1em; border:1pt solid red; font-size:100px;">box4</div>  <!-- 상속받은 폰트 대비 몇배냐 의 em -->
<hr>

<p>
	Hello Alpha
</p>
  

<p>
	 We encourage you to review our updated Terms of Sale, Terms of Service, and Privacy Policy. By continuing, you agree to the updated Terms listed here.
</p>

</body>
</html>