/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vicinity_AdminPanel.Controller;

import com.vicinity_AdminPanel.util.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
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

/**
 *
 * @author sakshi
 */
public class GardensRegisteredServlet extends HttpServlet {

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
            resultSet = statement.executeQuery("Select * from gardendetails where flag=1");

            while (resultSet.next()) {    
                ArrayList row = new ArrayList();
                for (int i = 1; i <=18; i++) {
                    row.add(resultSet.getString(i));
                }
                Rows1.add(row);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        HttpSession session = request.getSession();
        session.setAttribute("requestPendingList", Rows1);
        response.sendRedirect("Gardens_Registered.jsp");


   }
}
