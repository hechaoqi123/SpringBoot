package com.aaa.base;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class JSONP extends HttpServlet {
	//将请求参数作为url发起跨域GET请求
  @RequestMapping("jsonp")
  public void get(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
         String reqUrl=request.getQueryString();
         URL url = new URL(reqUrl);
         HttpURLConnection con = (HttpURLConnection)url.openConnection();
         con.setDoOutput(false);
         con.setRequestMethod("GET");
         response.setContentType(con.getContentType());
         OutputStream out = response.getOutputStream();
         InputStream in = con.getInputStream();
         copy(in,out,false);
         
  }
  @RequestMapping("Jsonpost")
  public void post(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
	   String reqUrl =  request.getQueryString();
       URL url = new URL(reqUrl);
       System.out.println(url);
       System.out.println("类型"+request.getParameter("opencheckindatatype"));
       System.out.println(request.getParameter("starttime"));
       System.out.println(request.getParameter("endtime"));
       System.out.println(request.getParameter("useridlist"));
       System.out.println(request.getContentType());
       HttpURLConnection con = (HttpURLConnection)url.openConnection();
       con.setRequestProperty("useridlist", request.getParameter("useridlist"));
       con.setDoOutput(true);
       con.setRequestMethod("POST");
       if(request.getContentType() != null) {
           con.setRequestProperty("Content-Type", request.getContentType());
       }
       OutputStream destCout = con.getOutputStream();
       copy(request.getInputStream(),destCout,true);

       InputStream in = con.getInputStream();
       OutputStream out = response.getOutputStream();
       copy(in,out,false);
  }
  private void copy(InputStream in, OutputStream out, boolean save) throws IOException {
      try{
          byte[] buffer = new byte[1024];
          int count = 0;
          while((count =in.read(buffer)) > 0){
          out.write(buffer,0,count);
           }
      }
      finally {
          out.close();
          in.close();
      }
  }
}
