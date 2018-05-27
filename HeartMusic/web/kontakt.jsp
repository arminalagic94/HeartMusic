<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--https://validator.w3.org/  --><!--Za validaciju forme i elemenata Xhtml-a-->	
<!--http://jigsaw.w3.org/css-validator/  CSS validacija -->
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title>Kontakt</title> 
<link rel="shortcut icon" href="slike/hm.jpg"/>
<link rel="stylesheet" href="css/style.css" style="text/css"/>
<script src="js/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="js/funkcije.js" type="text/javascript"></script>

<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css"/>

</head>

<body onload="poruka()">

<body>

<table class="gl-tabela">
<tr>
<td>

	<div class="nav">
		<img src="slike/hm.jpg" alt="hmLOGO"/> 	
	</div>
	
	<br>
	
	<div class="nav">
		<ul>
			<li><a href="index.jsp">NASLOVNA</a></li>
			<li id="navCrtica">|</li>
			<li><a href="oNama.jsp">O NAMA</a></li>
			<li id="navCrtica">|</li>
			<li><a href="audio.jsp">AUDIO</a></li>
			<li id="navCrtica">|</li>
			<li><a href="photo.jsp">PHOTO</a></li>
			<li id="navCrtica">|</li>
			<li><a href="video.jsp">VIDEO</a></li>
			<li id="navCrtica">|</li>
			<li id="active"><a href="kontakt.jsp">KONTAKT</a></li>
			<li id="navCrtica">|</li>
			<li><a href="prijava.jsp">PRIJAVA</a></li>
		</ul>
	</div>
	
</td>
</tr>

<tr>
<td id="pozadina">
	
	<div class="kontakt">
	
	<fieldset>
	<legend>KONTAKT</legend>	
		
	<form method="post" name="forma" action="kontakt_bean.jsp" onsubmit="return validacija_maila()">
	<table class="t-center">
	
	<tr><td><i class="fa fa-user-circle"></i> <input type="text" name="ime" id="Mime" placeholder="Unesite ime"/></td></tr>
	<tr><td><i class="fa fa-user-circle"></i> <input type="text" name="prezime" id="Mprezime" placeholder="Unesite prezime"/></td></tr>
	<tr><td><i class="fa fa-envelope-o"></i> <input type="text" name="email" id="Mmail" placeholder="Unesite email"/></td></tr>
	<tr><td><textarea id="Mporuka" name="poruka"></textarea></td></tr>
	<tr><td><input type="submit" class="but_submit" value="POŠALJI" /></td></tr>
	
	</table>
	</form>
	
		</fieldset>

	</div>
	
</td>
</tr>

<tr>
<td>
	
	<div class="footerTxt">
		<hr/>
		<p>All Rights Reserved © <a href="https://www.facebook.com/HEART-MUSIC-company-219298504907239/?fref=ts">Heart Music Company Bihać (BiH)</a> | www.heartmusiccompany.ba | design by: <a href="https://www.facebook.com/armin.alagic.92">Armin Alagić</a></p>
		<hr/>
	</div>

</td>
</tr>

</table>

    <script>
            function poruka() {
                if (!${param.poruka} == "") {
                    alert(${param.poruka});
                }
            }   
    </script>

</body>

</html>