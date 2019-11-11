/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.HTMLDocument;

/**
 *
 * @author DNO
 */
@WebServlet(urlPatterns = {"/deleteTicket"})
public class deleteTicket extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
        response.setContentType("text/html;charset=UTF-8");
        String seats_booked = request.getParameter("seats_booked");
        String slot_id = request.getParameter("slot_id");
        String show_time = request.getParameter("show_time");

        String S[] = seats_booked.split(",");
//        List<String> SS = new ArrayList<>();
//        SS = Arrays.asList(S);

        PrintWriter out = response.getWriter();
        Connection con = ConnectDB.getConnectDB();
        PreparedStatement ps = con.prepareStatement("SELECT seat_booked from time_slots where slot_id=? and timing=?");
        ps.setString(1, slot_id);
        ps.setString(2, show_time);
        ResultSet rs = ps.executeQuery();
        String actual_seats = "";
        while (rs.next()) {
            actual_seats = rs.getString("seat_booked");
            out.print("\n  acc   " + actual_seats);

        }
        out.print("<br>");
        String AS[] = actual_seats.split(",");
        
        for (int i = 0; i < AS.length; i++) {
            for (int j = 0; j < S.length; j++) {
                if(AS[i].equals(S[j])){
                    AS[i]="";
                }
                
            }
            
        }
        
        String AS2[]={};
        
        String result = "";
        if (AS.length > 0) {
            StringBuilder sb = new StringBuilder();
            for (String s : AS) {
                if("".equals(s)) {
                } else {
                    sb.append(s).append(",");
                }
            }
            result = sb.deleteCharAt(sb.length() - 1).toString();
        }
        
        PreparedStatement p2 = con.prepareStatement("UPDATE time_slot set seat_booked=? where slot_id=? and timing=? ");
        ps.setString(1, result);
        ps.setString(2, slot_id);
        ps.setString(3, show_time);
        
        ps.executeUpdate();
        
        PreparedStatement p3 = con.prepareStatement("Delete from table where ");
//        List<String> ASS = new ArrayList<>();
//        ASS = Arrays.asList(AS);

//        ASS.removeAll(SS);

//        String str[] = new String[ASS.size()];
//        for (int j = 0; j < ASS.size(); j++) {
//
//            str[j] = ASS.get(j);
//        }
//        
//        out.print("SS");
//        for (String str1 : str) {
//            out.print(str1);
//        }
//        String result = "";
//        if (str.length > 0) {
//            StringBuilder sb = new StringBuilder();
//            for (String s : str) {
//                sb.append(s).append(",");
//            }
//            result = sb.deleteCharAt(sb.length() - 1).toString();
//        }

//            out.print(result);
//        for(int i=0;i<S.length;++i)
//        {
//            for(int j=0;j<AS.length;++i){
//                if(S[i].equalsIgnoreCase(AS[j])){
//                    AS[j] = "";
//                }
//            }
//        }
//        
//        for (int i = 0; i < AS.length; i++) {
//            SS+=AS[i]+",";
//            out.print("\n AS:: "+AS[i]);
//        }
//        
//        out.print("\nSS ::   "+SS);
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
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(deleteTicket.class.getName()).log(Level.SEVERE, null, ex);
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
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException | InstantiationException | IllegalAccessException ex) {
            PrintWriter out = response.getWriter();
            out.print(ex);
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
