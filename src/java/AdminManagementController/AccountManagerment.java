/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package AdminManagementController;

import Dal.AdminDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import Model.UserDBO;
import Model.RoleDBO;
import java.util.List;

/**
 *
 * @author buiqu
 */
public class AccountManagerment extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
   Dal.AdminDAO db = new AdminDAO();
      List<UserDBO> listUser = db.getAllUser();
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      request.setAttribute("list_accounts", db);
=======
=======
>>>>>>> origin/AdminManager
=======
>>>>>>> origin/create-course1
=======
>>>>>>> origin/payment
     int check = Integer.parseInt(request.getParameter("check"));
      request.setAttribute("list_accounts", db);
     request.setAttribute("check", check);
      
       
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/DashBoard
=======
      request.setAttribute("list_accounts", db);
>>>>>>> origin/develop
=======
>>>>>>> origin/AdminManager
=======
      request.setAttribute("list_accounts", db);
>>>>>>> origin/comment
=======
>>>>>>> origin/create-course1
=======
     int check = Integer.parseInt(request.getParameter("check"));
      request.setAttribute("list_accounts", db);
     request.setAttribute("check", check);
      
       
>>>>>>> origin/crud_quiz
=======
      request.setAttribute("list_accounts", db);
>>>>>>> origin/front-end
=======
>>>>>>> origin/payment
      request.getRequestDispatcher("all-accounts.jsp").forward(request, response);
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
      Dal.AdminDAO db = new AdminDAO();
      List<UserDBO> listUser = db.getAllUser();
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      request.setAttribute("list_accounts", listUser);
=======
=======
>>>>>>> origin/AdminManager
=======
>>>>>>> origin/create-course1

      String check = request.getParameter("check" );
      request.setAttribute("check", check);

      
      request.setAttribute("list_accounts", listUser);
   
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/DashBoard
=======
      request.setAttribute("list_accounts", listUser);
>>>>>>> origin/develop
=======
>>>>>>> origin/AdminManager
=======
      request.setAttribute("list_accounts", listUser);
>>>>>>> origin/comment
=======
>>>>>>> origin/create-course1
=======

      String check = request.getParameter("check" );
      request.setAttribute("check", check);

      
      request.setAttribute("list_accounts", listUser);
   
>>>>>>> origin/crud_quiz
=======
      request.setAttribute("list_accounts", listUser);
>>>>>>> origin/front-end
=======
      
      request.setAttribute("list_accounts", listUser);
   
>>>>>>> origin/payment
      request.getRequestDispatcher("all-accounts.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
