/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package CourseManagementController;

import Dal.CourseDAO;
import Dal.UserDAO;
import Model.CourseDBO;
import Model.UserDBO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class CoursePurchaseHistoryController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CoursePurchaseHistoryController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CoursePurchaseHistoryController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
    HttpSession session = request.getSession();
    UserDAO dao = new UserDAO();
    UserDBO user = (UserDBO) session.getAttribute("user");
    CourseDAO courseDAO = new CourseDAO();
    ArrayList<CourseDBO> listCoursePurchase = courseDAO.getAllPurchaseCourseByUserId(user.getId());

    int currentPage;
    try {
        currentPage = Integer.parseInt(request.getParameter("page"));
    } catch (NumberFormatException e) {
        currentPage = 1; // Default to page 1
    }

    // Calculate total pages
    int itemsPerPage = 5; // Set this to the number of items you want to show per page
    int totalPages = (int) Math.ceil((double) listCoursePurchase.size() / itemsPerPage);

    // Get the courses for the current page
    int start = (currentPage - 1) * itemsPerPage;
    int end = Math.min(start + itemsPerPage, listCoursePurchase.size());
    List<CourseDBO> pageCourses = listCoursePurchase.subList(start, end);

    request.setAttribute("totalPages", totalPages);
    request.setAttribute("currentPage", currentPage);
    request.setAttribute("pageCourses", pageCourses);
    request.getRequestDispatcher("course-purchase-history.jsp").forward(request, response);
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
