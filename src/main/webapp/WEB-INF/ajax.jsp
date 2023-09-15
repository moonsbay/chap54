<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax.jsp</title>
<script type="text/javascript">
 
window.onload = function(){
    function sync(){
	
		
		let xhr = new XMLHttpRequest();
		xhr.open('GET', '/alpha', false);  //false는 동기기동
		xhr.send();
		let alpha = JSON.parse(xhr.responseText); //JSON문자열을 javascript객체 알파로 변환
		let td = surface.rows[alpha.line-1].cells[alpha.column-1];
		td.style.color = alpha.fg;
		td.style.background = alpha.bg;
		td.innerText = alpha.ch;
		// JSON(Javascript Object Notation)
	}
    
/*	btn2.onclick = function(){
		let xhr = new XMLHttpRequest();
		xhr.open('GET', '/alpha', false);  //false는 동기기동
		xhr.send();
		let alpha = JSON.parse(xhr.responseText);
		let td = surface.rows[alpha.line-1].cells[alpha.column-1];
		td.style.color = alpha.fg;
		td.style.background = alpha.bg;
		td.innerText = alpha.ch;
		// JSON(Javascript Object Notation)
	}*/
	
	function async(){
//		    btn.disabled = true;
		    let xhr = new XMLHttpRequest();
		    xhr.onload = function(e){
			let alpha = JSON.parse(xhr.responseText); //JSON문자열을 javascript객체 알파로 변환
			let td = surface.rows[alpha.line-1].cells[alpha.column-1];
			td.style.color = alpha.fg;
			td.style.background = alpha.bg;
			td.innerText = alpha.ch;
//			btn.disabled = false;
            
		}
		
		xhr.open('GET', '/alpha');
		xhr.send();
	}
    
	
	btn.onclick = async;
//  btn.onclick = sync();
	
	setInterval(function(){
		let cnt = no.innerText;
		no.innerText = ++cnt;
	}, 500);
}

</script>

</head>
<body>
<h1>Alpha Generator</h1>
<hr>
<button id="btn">ajax</button>
<span id="no">0</span>
<button id="btn2">auto</button>
<table id="surface">
 <tbody>
  <c:forEach var="row" items="${surface}">
    <tr>
    <c:forEach var="a" items="${row}">
     <td style="color:black; background:black">${a.ch}</td>
    </c:forEach>
    </tr>
  </c:forEach>
 </tbody>

</table>

</body>
</html>