<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>color.jsp</title>
<style type="text/css">

</style>
<script type="text/javascript">

</script>

</head>
<!-- <body style="background: yellow"> -->
<body style="background: url('media/favicon.png')">
<h1 style="border:1px solid red;">Color 지정방법</h1>
<section>
<div style="background:red;">red</div>
<div style="background:green;">green</div>
<div style="background:blue;">blue</div>
</section>
<hr>
<article>
<div style="background:rgb(255,0,0);">red</div>
<div style="background:rgb(0,255,0);">green</div>
<div style="background:rgb(0,0,255);">blue</div>
</article>
<hr>
<article>
<div style="background:#FF0000;">red</div>
<div style="background:#00FF00;">green</div>
<div style="background:#0000FF;">blue</div>
</article>
<hr>
<article>
<div style="background:#F00;">red</div>
<div style="background:#0F0;">green</div>
<div style="background:#00F;">blue</div>
</article>
<hr>
<article>
<div style="background:#FF0000A0;">red</div> <!-- 투명도 뒤의 두개 숫자로 농도 정함 00은 완전 투명 FF은 불투명-->
<div style="background:#00FF0030;">green</div>
<div style="background:#0000FF10;">blue</div>
</article>
<hr>
<article>
<div style="background:rgba(255,0,0,0);">red</div> <!-- 투명도 뒤의 숫자로 농도 정함 0은 완전 투명 1은 불투명-->
<div style="background:rgba(0,255,0,0.5);">green</div>
<div style="background:rgba(0,0,255,1);">blue</div>
</article>
<hr>
<article>
<div style="background:rgb(247, 173, 195);">red</div>
<div style="background:rgb(173, 247, 210);">green</div>
<div style="background:rgb(173, 217, 247);">blue</div>
</article>
</body>
</html>