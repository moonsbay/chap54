<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>class.jsp</title>
<style type="text/css">
.box{
	width: 100px;
	height: 100px;
}
.circle{
	border-radius: 50px;
}
.red{
	border: 10px solid red;
}
.blue{
	border: 10px solid blue;
}
.green{
	border: 10px solid green;
}
/*
input[value='box']{
	width: 50px;
}
*/
</style>
<script type="text/javascript">
window.onload = function(){
	let boxs = document.querySelectorAll("input[value='box']");
	boxs.forEach(function(elt, i, array){
		elt.onchange = function(){
			let box = elt.parentElement.nextElementSibling;
			if(elt.checked){
				box.classList.add('box');
			}else{
				box.classList.remove('box');
			}
		}
	});
	let circles = document.querySelectorAll("input[value='circle']");
	circles.forEach(function(elt, i, array){
		elt.onchange = function(){
			let box = elt.parentElement.nextElementSibling;
			if(elt.checked){
				box.classList.add('circle');
			}else{
				box.classList.remove('circle');
			}
		}
	});
/*	let colors = document.querySelectorAll("input[name*='color']");
	colors.forEach(function (input) {
	    input.onchange = function(){
	        let box = input.parentElement.nextElementSibling;
	        box.classList.remove('red');
	        box.classList.remove('blue');
	        box.classList.remove('green');
	        box.classList.add(input.value);
	    }
	}); */  /*밑에 colors코드와 같은 것*/
	
	let colors = document.querySelectorAll(`
	        input[name='color1'],
	        input[name='color2'],
	        input[name='color3'],
	        input[name='color4']
	`) /* 간단히 다음과 같이 변경 가능 let colors = document.querySelectorAll("input[name*='color']"); 이것은 color가 들어간 모든 것*/
	  /* 간단히 다음과 같이 변경 가능 let colors = document.querySelectorAll("input[name^='color']"); 이것은 color로 시작되는 것*/
	colors.forEach(input =>{
		input.onchange = e => {
			let box = input.parentElement.nextElementSibling;
			box.classList.remove('red');
	        box.classList.remove('blue');
	        box.classList.remove('green');
			box.classList.add(input.value);
		}
	});

}
</script>
</head>
<body>
<h2>class선택자</h2>
<hr>
<div>
   <label>box</label>
	<input type="checkbox" value="box">
   <label>circle</label>
	<input type="checkbox" value="circle">
   <label>red</label>
	<input type="radio" value="red" name="color1">
   <label>blue</label>	
	<input type="radio" value="blue" name="color1">
   <label>green</label>	
	<input type="radio" value="green" name="color1">
</div>
<div id="box1">box1</div>
<div>
   <label>box</label>
	<input type="checkbox" value="box">
   <label>circle</label>
	<input type="checkbox" value="circle">
   <label>red</label>
	<input type="radio" value="red" name="color2">
   <label>blue</label>	
	<input type="radio" value="blue" name="color2">
   <label>green</label>	
	<input type="radio" value="green" name="color2">
</div>
<div id="box2">box2</div>
<div>
   <label>box</label>
	<input type="checkbox" value="box">
   <label>circle</label>
	<input type="checkbox" value="circle">
   <label>red</label>
	<input type="radio" value="red" name="color3">
   <label>blue</label>	
	<input type="radio" value="blue" name="color3">
   <label>green</label>	
	<input type="radio" value="green" name="color3">
</div>
<div id="box3">box3</div>
<div>
   <label>box</label>
	<input type="checkbox" value="box">
   <label>circle</label>
	<input type="checkbox" value="circle">
   <label>red</label>
	<input type="radio" value="red" name="color4">
   <label>blue</label>	
	<input type="radio" value="blue" name="color4">
   <label>green</label>	
	<input type="radio" value="green" name="color4">
</div>
<div id="box4">box4</div>
</body>
</html>