<%-- 
    Document   : insertimage
    Created on : Jul 16, 2014, 7:18:03 AM
    Author     : SRV
--%>

<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="getcon.jsp"%> <!-- to connect a database-->
 
<%! String nme; %>
<%
try
{String ImageFile="";
String itemName = "";
boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (!isMultipart)
{
}
else
{
FileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload upload = new ServletFileUpload(factory);
List items = null;
try
{
items = upload.parseRequest(request);
}
catch (FileUploadException e)
{
e.getMessage();
}
 
Iterator itr = items.iterator();
while (itr.hasNext())
{
FileItem item = (FileItem) itr.next();
if (item.isFormField())
{
String name = item.getFieldName();
String value = item.getString();
if(name.equals("ImageFile"))
{
ImageFile=value;
}
 if(name.equals("name"))
{
nme=value;
}
}
else
{
try
{
itemName = item.getName();
String s1=config.getServletContext().getRealPath("//");

//String path=s1+"Example\\image-folder\\";
//String path="\\Example\\image-folder\\";
String path="C:/Users/hp/Documents/NetBeansProjects/medical_store/web/insert/";
File savedFile = new File(path + itemName);
//File savedFile = new File("config.getServletContext().getRealPath("/"));
        //File sFile = new File("\\image\\"+itemNae);
        item.write(savedFile);
}
catch (Exception e)
{
out.println("Error"+e.getMessage());
}
}
}
try
{
  //  String qq=nme+","+itemName;
 // nme="abcd";
    String q="insert into image(name,id) values ('"+nme+"','"+itemName+"')";
   // out.println(q);
st.executeUpdate(q);
 
}
catch(Exception el)
{
out.println("Inserting error"+el.getMessage());
}
}
}
catch (Exception e){
out.println(e.getMessage());
}
%>
