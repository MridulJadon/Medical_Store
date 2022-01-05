/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author SRV
 */
public class email extends HttpServlet {
     private static final String SMTP_AUTH_USER = "ishitakota08@gmail.com";
     private static final String SMTP_AUTH_PWD  = "ishita0987";


    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
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
        try {
            /*
             * TODO output your page here. You may use following sample code.
             */
          /*  out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet jemail</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet jemail at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");  */
          RequestDispatcher rd=request.getRequestDispatcher("contact.html");  
          rd.forward(request,response);
          try{
            new jjemail().test(request);
          }catch(Exception e){System.out.println("error"+e);}
          } finally {            
            out.close();
        }
    }
    public void test(HttpServletRequest request) throws Exception{
        Properties props = new Properties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.starttls.enable","true");

        Authenticator auth = new SMTPAuthenticator();
       // Session mailSession = Session.getDefaultInstance(props, auth);
        Session mailSession =Session.getInstance(props, auth);
// uncomment for debugging infos to stdout
        // mailSession.setDebug(true);
        Transport transport = mailSession.getTransport();
        String s=request.getParameter("message");      

        MimeMessage message = new MimeMessage(mailSession);
        message.setContent(s, "text/plain");
        message.setFrom(new InternetAddress("ishitakota08@gmail.com"));
        message.addRecipient(Message.RecipientType.TO,
             new InternetAddress("f20180306@pilani.bits-pilani.ac.in"));

        transport.connect();
        transport.sendMessage(message,
            message.getRecipients(Message.RecipientType.TO));
        transport.close();
    }

    private class SMTPAuthenticator extends javax.mail.Authenticator {
        public javax.mail.PasswordAuthentication getPasswordAuthentication() {
           String username = SMTP_AUTH_USER;
           String password = SMTP_AUTH_PWD;
           return new javax.mail.PasswordAuthentication(username, password);
        }
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
