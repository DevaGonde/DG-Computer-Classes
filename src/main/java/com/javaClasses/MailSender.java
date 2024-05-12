package com.javaClasses;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSender {

	public static boolean sendMail(String mailAddress, String uname, int otp) {
	    boolean send = false;
	    if (mailAddress == null) {
	        System.out.println("Email address is null. Cannot send mail.");
	        return false;
	    }

	    final String username = "devendragonde1221@gmail.com";
	    final String password = "rzobfhvirodytfbv";

	    String toAddress = mailAddress;

	    Properties props = new Properties();
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.starttls.enable", "true");
	    props.put("mail.smtp.host", "smtp.gmail.com");
	    props.put("mail.smtp.port", "587");

	    // Create a Session object with authentication
	    Session session = Session.getInstance(props, new javax.mail.Authenticator() {
	        protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication(username, password);
	        }
	    });

	    try {
	        Message message = new MimeMessage(session);
	        message.setFrom(new InternetAddress(username));
	        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toAddress));
	        message.setSubject("OTP Verification From DG Computers...");

	        String emailBody = "From: DG Computer Classes\n" + "To: " + mailAddress + "\n\n" + "Hello " + uname
	                + ",\n\n"
	                + "Thank you for your interest in DG Computer Classes. For security purposes, please enter the OTP (One-Time Password) below to complete your login:\n\n"
	                + "OTP: " + otp + "\n\n" + "If you did not request this OTP, please ignore this message.\n\n"
	                + "Best regards,\n" + "DG Computer Classes Team";

	        message.setText(emailBody);

	        // Send message
	        Transport.send(message);
	        send = true;
	        System.out.println("Email sent successfully!");
	    } catch (MessagingException e) {
	        e.printStackTrace();
	    }

	    return send;
	}

}

/**

*The DG Computer Classes project, including all associated code and materials, has been developed by Devendra R. Gonde.
*All rights are reserved for this project.
*This comprehensive project aims to revolutionize computer education by providing high-quality learning resources and
 interactive experiences to students at DG Computer Classes. It encompasses a range of educational materials,
 including [describe the types of materials, such as lesson plans, tutorials, software tools, etc.], designed to
 empower learners with the knowledge and skills needed to excel in the field of computer science.
*For inquiries or support related to the DG Computer Classes project, please contact:
*Name: Devendra R. Gonde
*Email: devendragonde1221@gmail.com

*/
