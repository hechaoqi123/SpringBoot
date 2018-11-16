package com.aaa.base;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;

import org.springframework.web.multipart.MultipartFile;
/***
 * 
 * @author Lenovo
 *
 * 2018年11月9日
 */
public class EmailUtil {
	//发件人邮箱及授权码：发件人邮箱须开启POP3/IMAP/SMTP服务
	private static String account="1127181497@qq.com";
	private static String password="eogwlsdaerbojhib";
	//QQSMTP服务器地址为:smtp.qq.com
    private static String SMTPHost= "smtp.qq.com";
	//收件人邮箱
    // private static String receiveMailAccount = "502498443@qq.com";
	/***
     *  读取参数配置(一般写在一个properties文件中),返回Session
     */
    public static Session getSession(){
		Properties props = new Properties();
		props.setProperty("mail.transport.protocol", "smtp");//使用协议(javaMail规范要求)
		props.setProperty("mail.smtp.host", SMTPHost);//发件人邮箱的SMTP服务器地址:邮箱类型
		props.setProperty("mail.smtp.auth", "true");//需要经过请求认证
		Session session=Session.getInstance(props);
		 session.setDebug(true);//打印debug
		return	session;
    }
      /**
       * 发送邮件
       *   message对象
       * */
    //发送邮件
    public static  void SendEmail(Session session,MimeMessage message) throws Exception{
			//	MimeMessage message = createMimeMessage(head,body,session, account, receiveMailAccounts);
		//1.根据Session获取邮件传输对象
				Transport transport = session.getTransport();
	    // 2. 使用 邮箱账号 和 密码 连接邮件服务器, 这里认证的邮箱必须与 message 中的发件人邮箱一致, 否则报错
		        transport.connect(account, password);
		// 3. 发送邮件, 发到所有的收件地址, message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
		        transport.sendMessage(message, message.getAllRecipients());
		// 4. 关闭连接
		        transport.close();
	 
	}
	/**
	 * 创建一封简单邮件
	 * 邮件标题  邮件内容,Session,发件人邮箱地址,收件人地址
	 * **/
	 public static MimeMessage createSimpleEmail(String head,String messageBody,Session session, String[] receiveMail) throws Exception {
	        // 1. 创建一封邮件
	        MimeMessage message = new MimeMessage(session);
	        // 2. From: 发件人
	        System.out.println("发件人："+account);
	        message.setFrom(new InternetAddress(account,"UTF-8"));
	        // 3. To: 收件人（主要收件人TO、抄送CC、密送BCC）
		        InternetAddress[] address=new InternetAddress[receiveMail.length];
		        for(int i=0;i<address.length;i++){
		        	System.out.println("发件人："+receiveMail[i]);
		        	address[i]=new InternetAddress(receiveMail[i],"UTF-8");
		        }
	        message.setRecipients(MimeMessage.RecipientType.TO, address);
	        // 4. Subject: 邮件主题
	        message.setSubject(head, "UTF-8");
	        // 5. Content: 邮件正文（可以使用html标签）
	        message.setContent(messageBody, "text/html;charset=utf-8");
	               // 6. 设置发件时间
	               // message.setSentDate(new Date());
	        // 7. 保存此邮件
	        message.saveChanges();
	        return message;
	    }
	 
     /***
      * 创建一封带附件的邮件
      * 
      * @param subject 
      *            邮件标题
      * @param body
      *            邮件内容
      * @param file
      *            附件url
      * @param fileName
      *            附件名称
      * @param toUrl
      *            收件人           
      * @param session
      */
      public static MimeMessage createMultipartEmail(String subject,String body,String file,String fileName,String[] receiveMail,Session session) throws MessagingException, UnsupportedEncodingException{
    	   //用session构建一个邮件:邮件主题  发件人   收件人
    	       MimeMessage message = new MimeMessage(session);
    	       message.setSubject(subject, "UTF-8");
    	       message.setFrom(new InternetAddress(account, "UTF-8"));
    	       InternetAddress[] address=new InternetAddress[receiveMail.length];
		        for(int i=0;i<address.length;i++){
		        	address[i]=new InternetAddress(receiveMail[i],"UTF-8");
		        }
    	       message.setRecipients(MimeMessage.RecipientType.TO, address);
    	 // 向multipart对象中添加邮件的各个部分内容，包括文本内容和附件
    	       Multipart multipart = new MimeMultipart();
    	 // 设置邮件的文本内容
    	       BodyPart contentPart = new MimeBodyPart();
    	       contentPart.setContent(body, "text/html;charset=UTF-8");
    	       multipart.addBodyPart(contentPart);
    	 //添加附件      
    	       BodyPart messageBodyPart = new MimeBodyPart();
    	       DataSource source = new FileDataSource(file);
    	       messageBodyPart.setDataHandler(new DataHandler(source));
    	       messageBodyPart.setFileName( MimeUtility.encodeText(fileName));
    	       multipart.addBodyPart(messageBodyPart);     
    	  //将邮件正文和附件添加到邮件中     
    	       message.setContent(multipart);  
    	 // 保存邮件
    	       message.saveChanges();
    	  return message;
      }
}
