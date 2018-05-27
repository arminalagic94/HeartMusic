<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--https://validator.w3.org/  --><!--Za validaciju forme i elemenata Xhtml-a-->	
<!--http://jigsaw.w3.org/css-validator/  CSS validacija -->
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title>Prijava</title> 
<link rel="shortcut icon" href="slike/hm.jpg"/>
<link rel="stylesheet" href="css/style.css" style="text/css"/>
<script src="js/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="js/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="js/funkcije.js" type="text/javascript"></script>

</head>

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
			<li><a href="kontakt.jsp">KONTAKT</a></li>
			<li id="navCrtica">|</li>
			<li id="active"><a href="prijava.jsp">PRIJAVA</a></li>
		</ul>
	</div>
	
</td>
</tr>

<tr>
<td id="pozadina">
	
	<div class="prijava">
	
		<fieldset>
			<legend>ZAHTJEV ZA ČLANSTVO</legend>
                        <form  id="forma" name="forma" method="post" action="prijava_bean.jsp" onsubmit="return dodajClana()">
				<table class="t-center">
					<tr><td>Ime: </td><td><input type="text" name="ime" id="ime"/></td> <td><span id="validacija_ime"></span></td></tr>
					<tr><td>Prezime: </td><td><input type="text" name="prezime" id="prezime"/></td> <td><span id="validacija_prezime"></span></td></tr>
					<tr><td>Datum rođenja: </td><td><input type="text" name="datum" id="datumRodjenja"/></td> <td><span id="validacija_datumRodjenja"></span></td></tr>
					<tr><td>Grad: </td><td><input type="text" name="grad" id="grad"/></td> <td><span id="validacija_grad"></span></td></tr>
					<tr><td>Država: </td><td><input type="text" name="drzava" id="drzava"/></td> <td><span id="validacija_drzava"></span></td></tr>
					<tr><td>Vrsta muzičara: </td><td>
						<select name="vrsta" id="vrsta">
							<option  value="Autor">Autor</option>
							<option  value="Izvodjac">Izvođač</option>
							<option  value="Kantautor" selected>Kantautor</option>							
						</select>
					</td></tr>
					<tr><td>Tip muzičara: </td><td>
						<input type="radio" name="tip" id="tip" value="Amater" checked="checked">Amater</input>
						<input type="radio" name="tip" id="tip" value="Profesionalac">Profesionalac</input>
					</td></tr>
					<tr><td>Članarina: </td><td>
						<input type="radio" name="clanarina" id="clanarina" value="Godisnja">Godišnja</input>
						<input type="radio" name="clanarina" id="clanarina" value="Mjesecna" checked="checked">Mjesečna</input>					
					</td></tr>
					<tr><td colspan="2"><input type="checkbox" name="uslovi" id="uslovi" checked="checked"> Prihvatam uslove članstva</td></tr>
					<tr><td colspan="2">
					<input type="submit" class="but_submit" id="prijava" value="UČLANI SE"/>
					<input type="reset" id="ponisti" value="PONIŠTI" />
					</td></tr>
				</table>
			</form>
		</fieldset>
	</form>
	
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

</body>

</html>