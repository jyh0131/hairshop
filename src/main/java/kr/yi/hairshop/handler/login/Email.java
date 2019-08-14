package kr.yi.hairshop.handler.login;

import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {

	public void idSander(String id) {
		String host = "smtp.naver.com"; // 네이버일 경우 네이버 계정, gmail경우 gmail 계정
		String user = "kyg0816@naver.com"; //발신자의 이메일 아이디를 입력
		String password = "wjrwjrwjr2896!"; //발신자 이메일의 패스워드를 입력
		
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", 587);
		props.put("mail.smtp.auth", "true");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });
		
        
		try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            
            message.addRecipient(Message.RecipientType.TO, new InternetAddress("younggak@gmail.com"));
            message.setSubject("아이디 확인 메일");
            message.setText("요청하신 아이디는 "+id+" 입니다");

            Transport.send(message); ////전송
            System.out.println("message sent successfully...");
            
        } catch (AddressException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        }
		return;
	}
	
	public void passSander(String pass) {
		String host = "smtp.naver.com"; // 네이버일 경우 네이버 계정, gmail경우 gmail 계정
		String user = "kyg0816@naver.com"; //발신자의 이메일 아이디를 입력
		String password = "wjrwjrwjr2896!"; //발신자 이메일의 패스워드를 입력
		
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", 587);
		props.put("mail.smtp.auth", "true");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });
		
        
		try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            
            message.addRecipient(Message.RecipientType.TO, new InternetAddress("younggak@gmail.com"));
            message.setSubject("임시 비밀번호 발송");
            message.setText("임시 비밀 번호는 "+pass+" 입니다");

            Transport.send(message); ////전송
            System.out.println("message sent successfully...");
            
        } catch (AddressException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        }
		return;
	}
	
}
