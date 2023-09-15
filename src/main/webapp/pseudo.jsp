<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pseudo.jsp</title>
<style type="text/css">
:focus{
	border: 10px solid red;
}
a:active, input:active{
	border: 10px dotted blue;
	color: blue;
	font-size: 20pt;
}
div{
	width: 100px;
	height: 100px;
}
div:hover{
	border: 10px solid red;
	background: blue;
}
div:active{
	border-radius: 50px;
}
input:disabled{
	background: gray;
}
input:enabled{
	background: blue;
}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<input disabled ="disabled">
<input disabled ="disabled">
<input>
<input>
<div>box1</div>
<div>box2</div>
<div>box3</div>
<a href="">www.naver.com</a>
</body>
</html>