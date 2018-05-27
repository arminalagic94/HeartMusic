package baza;

import baza.konekcija.mysql;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Properties;
import java.util.*;
import javax.activation.*;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SlanjeMaila  {
    public void saljiMail(HttpServletRequest request, HttpServletResponse response) {
                                 
                final String username = "arminalagic.heartmusic@gmail.com";
                final String password = "jackson17";
              
                Properties props = new Properties();
                props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
                props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
                

                Session session = Session.getInstance(props,
                        new javax.mail.Authenticator() {
                            protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication(username, password);
                            }
                        });
                
                try {
                    
                    Message message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(request.getParameter("email")));
                    message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse("heartmusic739@gmail.com")); //ovdje ide email na koji dolazi poruka
                    message.setSubject("HeartMusic - message");
                    message.setText("Email korisnika: " + request.getParameter("email") + "\n\n" +
                        "Ime korisnika: " + request.getParameter("ime")+ "\n"+ 
                        "Prezime korisnika: " +request.getParameter("prezime") + "\n"+ 
                        "Poruke: " +request.getParameter("poruka"));
                    
                    Transport.send(message); //NE RADI
                    System.out.println("Email je uspjesno poslan");

                } 
                
                catch (MessagingException e) {
                    throw new RuntimeException(e);
                }
                
    }
}