
package com.vicinity_AdminPanel.Controller;

import com.vicinity_AdminPanel.util.DBConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RequestPendingServlet extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;

        ArrayList Rows1 = new ArrayList();
        try {
            con = DBConnection.createConnection();
            
            statement = con.createStatement();
            resultSet = statement.executeQuery("Select * from gardendetails where flag=0");

            while (resultSet.next()) {    
                ArrayList row = new ArrayList();
                for (int i = 1; i <=19; i++) {
                    row.add(resultSet.getString(i));
                }
                Rows1.add(row);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        HttpSession session = request.getSession();
        session.setAttribute("requestPendingList", Rows1);
        response.sendRedirect("Requests_Pending.jsp");


   }
}
