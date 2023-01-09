package com.fooday.utils;

import java.io.File;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.PutObjectRequest;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;

public class baseMethods
{
	private static final String BUCKETNAME = "restrox";
	private static final String ACCESSKEY = "AKIAZMOJFSHMXKIIKVVK";
	private static final String SECRETKEY = "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";

	public static String getUser() 
	{
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		System.out.println(userName);
		return userName;
	}

	public static String s3FileUpload(String filePath) 
	{
		File file = new File(filePath);
		String key = file.getName();
		String link = "";
		try 
		{
			@SuppressWarnings("deprecation")
			AmazonS3Client s3Client = new AmazonS3Client(new BasicAWSCredentials(ACCESSKEY, SECRETKEY));

			PutObjectRequest request = new PutObjectRequest(BUCKETNAME, key, file);
			request.setCannedAcl(CannedAccessControlList.PublicRead);
			s3Client.putObject(request);

			link = s3Client.getUrl(BUCKETNAME, key).toString();
			System.out.println("S3Link>>>>>>>>"+link);
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return link;
	}
	
	public static String generatePassword() {

		int n = 8;
		// chose a Character random from this String
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";

		// create StringBuffer size of AlphaNumericString
		StringBuilder sb = new StringBuilder(n);

		for (int i = 0; i < n; i++) {

			// generate a random number between
			// 0 to AlphaNumericString variable length
			int index = (int) (AlphaNumericString.length() * Math.random());

			// add Character one by one in end of sb
			sb.append(AlphaNumericString.charAt(index));
		}

		return sb.toString();
	}
	
	public static void sendMail(String receiver,String data)
	{
		final String from = "noreply.fooday@gmail.com";
		final String username = "";
		final String password = "LOL@12345";

		String host = "smtp.gmail.com";

		System.out.println("1");

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "587");
		props.put("mails.smtp.ssl.trust","smtp.gmail.com");

		System.out.println("2");

		
		Session session = Session.getInstance(props, new javax.mail.Authenticator(){
				protected PasswordAuthentication getPasswordAuthentication()
				{
					return new PasswordAuthentication(from, password);
				}		});
		
		System.out.println("3");

		try 
		{
			System.out.println("4");
			
			String o = "Your "+receiver+"'s password is given below.\nPlease do not share with any one.\nPassword=";
			String passwordSend = o.concat(data);
			
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO,
			InternetAddress.parse(receiver));
			message.setSubject("Approve ");
			message.setText(passwordSend);

			System.out.println("5");
			Transport.send(message);

			System.out.println("Sent mail successfully....");

		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}

	}
}
