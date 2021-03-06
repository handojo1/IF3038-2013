/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DashBoard;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Christianto
 */
@WebServlet(name = "addCategory", urlPatterns = {"/addCategory"})
public class addCategory extends HttpServlet {
    private Connection conn;
    private Statement query;
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
            /* TODO output your page here. You may use following sample code. */
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/progin_405_13510003", "root", "");
            query = conn.createStatement();
            
            ResultSet result = query.executeQuery("SELECT MAX(id_kategori) FROM kategori");
            result.first();
            int id_kategori = result.getInt(1) + 1;
            result.close();
            
            out.println(id_kategori);
            int hasil = query.executeUpdate("INSERT INTO `kategori`(`nama_kategori`,`id_kategori`,`username`)"
                    + " VALUES('"+request.getParameter("catname")+"',"+id_kategori+",'"+request.getParameter("username")+"')");
            
            String[] orang = request.getParameter("catass").split("/");
            for (int i=0;i<orang.length;++i) {
                out.println(orang[i]);
                hasil = query.executeUpdate("INSERT INTO `hak_akses`(`username`,`id_kategori`)"
                    + " VALUES('"+orang[i]+"',"+id_kategori+")");
            }
            
            response.sendRedirect("dashboard.jsp");
        } catch (SQLException ex) {
            out.println("Failure to execute SQL query");
        } catch(ClassNotFoundException ex){
            out.println("Failure to create connection");
        } finally {            
            out.close();
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
