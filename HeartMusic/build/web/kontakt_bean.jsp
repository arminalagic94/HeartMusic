<meta http-equiv="refresh" content="0" >
<jsp:useBean class="baza.Mail" id="m" scope="request" />
<jsp:useBean class="baza.SlanjeMaila" id="n" scope="request" />
<%
    boolean odg = m.validacija(request, response);
    if (odg==true) {
    
           n.saljiMail(request, response);
        
    }

%>