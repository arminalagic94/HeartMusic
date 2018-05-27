<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--https://validator.w3.org/  --><!--Za validaciju forme i elemenata Xhtml-a-->	
<!--http://jigsaw.w3.org/css-validator/  CSS validacija -->
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title>Naslovna</title>  
<link rel="shortcut icon" href="slike/hm.jpg"/>
<link rel="stylesheet" href="css/style.css" style="text/css"/>
<script src="js/jquery-2.1.4.min.js" type="text/javascript"></script>
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
			<li id="active"><a href="index.jsp">NASLOVNA</a></li>
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
			<li><a href="prijava.jsp">PRIJAVA</a></li>
		</ul>
	</div>
	
</td>
</tr>

<tr>
<td id="pozadina">
	
	<div>
		<table class="t-center">
		<tr>
			<td>
			
				<div class="w3-content w3-section">
					<img class="mySlides" src="img/07.jpg" alt="01"/>
					<img class="mySlides" src="img/08.jpg" alt="02"/>
					<img class="mySlides" src="img/09.jpg" alt="03"/>
				</div>
				
				<script>
					var myIndex = 0;
					carousel();

					function carousel() {
						var i;
						var x = document.getElementsByClassName("mySlides");
						for (i = 0; i < x.length; i++) {
							x[i].style.display = "none";  
						}
						myIndex++;
						if (myIndex > x.length) {myIndex = 1;}    
						x[myIndex-1].style.display = "block";  
						setTimeout(carousel, 2000); // Change image every 2 seconds
					}
				</script>
				
			</td>
		</tr>
		
		<tr>
			<td>
				<div class="ikone">
				
						<a href="http://amus.ba" target="_blank"><img src="slike/amus.jpg" alt="slika"/></a>
					
						<a href="photo.jsp"><img src="slike/photo.jpg" alt="slika"/></a>

						<a href="prijava.jsp"><img src="slike/reg.jpg" alt="slika"/></a>

						<a href="video.jsp"><img src="slike/video.jpg" alt="slika"/></a>
						
                                                <a href="http://aisbih.org" target="_blank"><img src="slike/ais.jpg" alt="slika"/></a>
					
				</div>
			</td>
		</tr>
		</table>
	</div>
	
</td>
</tr>

<td>
<tr>
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