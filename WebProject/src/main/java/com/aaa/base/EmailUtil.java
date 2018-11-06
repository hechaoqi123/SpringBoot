package com.aaa.base;

import java.util.Date;
import java.util.Properties;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailUtil {
	//发件人邮箱及授权码：发件人邮箱须开启POP3/IMAP/SMTP服务
	private static String myEmailAccount = "1127181497@qq.com";
	private static String myEmailPsw = "eogwlsdaerbojhib";
	//QQSMTP服务器地址为:smtp.qq.com
    private static String myEmailSMTPHost = "smtp.qq.com";
	//收件人邮箱
    // private static String receiveMailAccount = "502498443@qq.com";
      /**
       * 收件人：
       * 消息内容
       * 邮件标题
       * */
    //创建一封普通邮件
    public static void SendEmail(String body,String head,String[] receiveMailAccounts) throws Exception{
		
    	   System.out.println("收件人数量"+receiveMailAccounts.length);
    	// 1. 创建参数配置, 用于连接邮件服务器的参数配置(一般写在一个Properties文件里来读取，此处为了方便)
				Properties props = new Properties();
				props.setProperty("mail.transport.protocol", "smtp");//使用协议(javaMail规范要求)
				props.setProperty("mail.smtp.host", myEmailSMTPHost);//发件人的邮箱的SMTP服务器地址
				props.setProperty("mail.smtp.auth", "true");//需要请求认证	
		//2. 根据配置创建会话对象，用于和邮件服务器交互
				Session session = Session.getInstance(props);
		//3.创建一封邮件
				MimeMessage message = createMimeMessage(head,body,session, myEmailAccount, receiveMailAccounts);
		//4.根据Session获取邮件传输对象
				Transport transport = session.getTransport();
	    // 5. 使用 邮箱账号 和 密码 连接邮件服务器, 这里认证的邮箱必须与 message 中的发件人邮箱一致, 否则报错
		        transport.connect(myEmailAccount, myEmailPsw);
		// 6. 发送邮件, 发到所有的收件地址, message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
		        transport.sendMessage(message, message.getAllRecipients());
		// 7. 关闭连接
		        transport.close();
	 
	}
	/**
	 * 传入邮件内容,邮件头,发件人邮箱地址
	 * **/
	 public static MimeMessage createMimeMessage(String head,String messageBody,Session session, String sendMail, String[] receiveMail) throws Exception {
	        // 1. 创建一封邮件
	        MimeMessage message = new MimeMessage(session);
	 
	        // 2. From: 发件人（昵称有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改昵称）	
	       //InternetAddress(String address, String personal, String charset) 根据地址和名称来构建InternetAddress
	        message.setFrom(new InternetAddress(sendMail, "Test", "UTF-8"));
	        // 3. To: 收件人（主要收件人TO、抄送CC、密送BCC）
		        InternetAddress[] address=new InternetAddress[receiveMail.length];
		        for(int i=0;i<address.length;i++){
		        	System.out.println("这是一个收件人"+receiveMail[i]);
		        	address[i]=new InternetAddress(receiveMail[i], "嗨SIRI", "UTF-8");
		        }
	        message.setRecipients(MimeMessage.RecipientType.TO, address);
	        
	        // 4. Subject: 邮件主题（标题有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改标题）
	        
	        message.setSubject(head, "UTF-8");
	 
	        // 5. Content: 邮件正文（可以使用html标签）（内容有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改发送内容）
	        message.setContent(messageBody, "text/html;charset=utf-8");
	        // 6. 设置发件时间
	        message.setSentDate(new Date());
	 
	        // 7. 保存设置
	        message.saveChanges();
	 
	        return message;
	    }
}
