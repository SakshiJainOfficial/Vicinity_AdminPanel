
package com.vicinity_AdminPanel.Controller;

import com.vicinity_AdminPanel.util.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/AcceptServlet.java"})
public class AcceptServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String acceptId=request.getParameter("acceptId");
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBConnection.createConnection();
            String query = "Update gardendetails set flag=1 where gardenId =?";
            ps = con.prepareStatement(query);
            ps.setString(1, acceptId);
            int i = ps.executeUpdate();
            if (i != 0) {
                response.sendRedirect("RequestPendingServlet");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
       response.setHeader("Cache-Control", "no-cache");
       response.setHeader("Cache-Control", "no-store");
       response.setHeader("Pragma", "no-cache");
       response.setDateHeader("Expires", 0);
        
    }

    
}
