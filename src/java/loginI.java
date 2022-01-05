

import db.dbcon;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
public class loginI extends HttpServlet {

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
        System.out.println("firstttttt");
        try{ 

/* forward only
scrollable first() absolute() relative(-3)

read only
updatable

sensitive or insensitive based on whether dynamically updated from the database or not

*/

ResultSet rs=dbcon.st.executeQuery("select * from logind"); //4 execute method for sql query
System.out.println("1");
String s5 = request.getParameter("name");
String s2 = request.getParameter("pwd");
System.out.println("2");

 //  HttpSession ss = request.getSession(true);
 //  ss.setAttribute("name",s5);
   
int f=0;
 String s3 = "";
String s4 = "";
System.out.println("3");

 while(rs.next())
 {
  s3 = rs.getString("Username");
  s4 = rs.getString("Password");
  System.out.println("4");
 
 if((s5.equals(s3)) && (s2.equals(s4)))
 {  
     f = 1;
     System.out.println("3");
   RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
    rd.forward(request, response);
        
    break;
 }
 System.out.println("4");
 }
  if(f==0)
  {
    RequestDispatcher rd = request.getRequestDispatcher("index.html");
    rd.forward(request, response);
  }

//  rs.getXXX(column name)
rs.close();   
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
