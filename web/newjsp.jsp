
import conpkg.Mycon;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Send_OTP extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, MessagingException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            Connection con=Mycon.getConnection();
           
            int empno=Integer.parseInt(request.getParameter("empno"));
            String sql="Select EmailId from employee where EmpId=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(1,empno);
            ResultSet rs=ps.executeQuery();
            String email=null;
            if(rs.next())
            {
                email=rs.getString(1);
            }
            Random rand=new Random();
            int otp=rand.nextInt(999999);
            Properties prop=new Properties();
            prop.put("mail.smtp.auth", "true");
            prop.put("mail.smtp.starttls.enable","true");
            prop.put("mail.smtp.host","smtp.gmail.com");
            prop.put("mail.smtp.port","587");
            final String myAcc="rhythmjkjain09@gmail.com";
            final String pass="Rhythm09";
  Session sess=Session.getInstance(prop,new javax.mail.Authenticator() {
 protected PasswordAuthentication getPasswordAuthentication(){
     return new PasswordAuthentication(myAcc,pass);
 }
  });
  Message message=new MimeMessage(sess);
  message.setFrom(new InternetAddress(myAcc));
  message.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
  message.setSubject("OTP for change password");
  BodyPart messageBody=new MimeBodyPart();
  messageBody.setText("OTP for change password is"+" "+otp);
  Multipart multipart=new MimeMultipart();
  multipart.addBodyPart(messageBody);
  message.setContent(multipart);
  
  Transport transport=sess.getTransport("smtp");
  transport.connect("smtp.gmail.com",myAcc,pass);
  transport.sendMessage(message, message.getAllRecipients());
  transport.close();
  HttpSession session=request.getSession();
  Integer o=new Integer(otp);
  session.setAttribute("otp", otp);
  Integer empId=new Integer(empno);
  session.setAttribute("empId", empId);
  RequestDispatcher rd=request.getRequestDispatcher("ChangePassword.jsp");
  rd.forward(request, response);
  out.println("mail sent");
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Send_OTP</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Send_OTP at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }finally {
            out.close();
        }
    }

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
        try {
            try {
                processRequest(request, response);
            } catch (MessagingException ex) {
                Logger.getLogger(Send_OTP.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Send_OTP.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            try {
                processRequest(request, response);
            } catch (MessagingException ex) {
                Logger.getLogger(Send_OTP.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Send_OTP.class.getName()).log(Level.SEVERE, null, ex);
        }
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