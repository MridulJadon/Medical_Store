<%-- 
    Document   : getcon
    Created on : Jul 16, 2014, 7:19:03 AM
    Author     : SRV
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@ page import="java.sql.*" %>
<%!
Statement st=null;
Connection cn=null;
%>
<%


//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");//1
//cn=DriverManager.getConnection("jdbc:odbc:my");  //2 jdbc URL mainprotocol:subproto:driverspecific info
Class.forName("com.mysql.jdbc.Driver");
cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/medics","root","123456i");
    st=cn.createStatement();//3
%>