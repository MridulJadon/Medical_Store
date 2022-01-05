/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author hp
 */
public class insert extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
          

/* forward only
scrollable first() absolute() relative(-3)

read only
updatable

sensitive or insensitive based on whether dynamically updated from the database or not



*/
try{
Class.forName("com.mysql.jdbc.Driver");    //1 acc to db driver change its name, loading the driver
Connection con; //reference to conn class
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medics","root","123456i"); //JDBC url -- separated by colon{main protocol:subprotocol(acc to db):db specific info-username,password}
Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
ResultSet rs=st.executeQuery("select * from booking"); //4 execute method for sql query

String s1 = request.getParameter("name");
String s2 = request.getParameter("phone");
int i = Integer.parseInt(s2);
String s3 = request.getParameter("email");
String s4 = request.getParameter("dop");
String s5 = request.getParameter("Adate");
String s6 = request.getParameter("messege");

 st.executeUpdate("INSERT INTO booking (Name,Phone,Email,dob,Adate,msg) VALUES ('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");

rs.moveToInsertRow();
rs.updateString("Name",s1);
rs.updateInt("Phone",i);
rs.updateString("Email",s3);
rs.updateString("dob", s4);
rs.updateString("Adate", s5);
rs.updateString("msg", s6);

rs.insertRow();

//  rs.getXXX(column name)
rs.close();    st.close();   con.close();
}catch(Exception e)
{System.out.println("EXC  "+e);}}


        
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
