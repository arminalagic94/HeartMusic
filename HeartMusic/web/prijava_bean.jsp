<jsp:useBean class="baza.Prijava" id="m" scope="request" />
<%
    m.dodajClana(request, response);
%>