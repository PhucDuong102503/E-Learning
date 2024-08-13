package CourseManagementController;

import Dal.CourseDAO;
import Dal.UserDAO;
import Model.CourseDBO;
import Model.UserDBO;
<<<<<<< HEAD

=======
>>>>>>> origin/payment
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
<<<<<<< HEAD
import jakarta.servlet.http.HttpSession;
=======
>>>>>>> origin/payment
import java.io.IOException;
import java.util.List;

@WebServlet("/updateTeacher1")
public class UpdateTeacherServlet1 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        CourseDAO courseDAO = new CourseDAO();
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/payment
        // Lấy danh sách giáo viên (role_id = 2 là giáo viên)
        List<UserDBO> teachers = (List<UserDBO>) userDAO.getUsersByRole(2);
List<CourseDBO> course = courseDAO.getAllCourses();
        request.setAttribute("teachers", teachers); // Đặt danh sách giáo viên vào thuộc tính của request
request.setAttribute("course", course);
        // Forward đến trang chooseTeacher.jsp để chọn giáo viên
<<<<<<< HEAD
=======
HttpSession session = request.getSession();
=======

>>>>>>> origin/front-end
        // Lấy tham số tìm kiếm và phân trang từ request
        String searchQuery = request.getParameter("txtSearch");
        String pageStr = request.getParameter("page");
        String courseIdStr = request.getParameter("courseId");
        int page = (pageStr != null) ? Integer.parseInt(pageStr) : 1;
<<<<<<< HEAD
       UserDBO user = (UserDBO) session.getAttribute("user");
=======

>>>>>>> origin/front-end
        // Nếu thanh tìm kiếm trống, đặt giá trị mặc định là chuỗi rỗng
        if (searchQuery == null) {
            searchQuery = "";
        }

        // Lấy danh sách giáo viên theo tìm kiếm và phân trang
<<<<<<< HEAD
        List<UserDBO> teachers = userDAO.searchTeachers(searchQuery, page,user.getId());
=======
        List<UserDBO> teachers = userDAO.searchTeachers(searchQuery, page);
>>>>>>> origin/front-end
        int totalTeachers = userDAO.countTeachers(searchQuery);

        // Tính toán số trang
        int totalPages = (int) Math.ceil((double) totalTeachers / 10);

        // Lấy danh sách khóa học
        List<CourseDBO> courses = courseDAO.getAllCourses();

        // Lấy teacherId của khóa học hiện tại
        int courseId = (courseIdStr != null) ? Integer.parseInt(courseIdStr) : 0;
        int currentTeacherId = courseDAO.getTeacherIdByCourseId(courseId);

        // Đặt các thuộc tính vào request
        request.setAttribute("teachers", teachers);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("searchQuery", searchQuery);
        request.setAttribute("courses", courses);
        request.setAttribute("currentTeacherId", currentTeacherId);
        request.setAttribute("courseId", courseId);

        // Forward đến trang chooseTeacher1.jsp để chọn giáo viên
<<<<<<< HEAD
>>>>>>> origin/create-course1
=======
>>>>>>> origin/front-end
        request.getRequestDispatcher("chooseTeacher1.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
=======
        request.getRequestDispatcher("chooseTeacher1.jsp").forward(request, response);
    }

  @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
>>>>>>> origin/payment
        // Lấy thông tin từ request
        String action = request.getParameter("action");
        String courseIdStr = request.getParameter("courseId");
        String teacherIdStr = request.getParameter("teacherId");
<<<<<<< HEAD
        UserDBO user = (UserDBO) session.getAttribute("user");
=======
>>>>>>> origin/payment

        // Kiểm tra nếu thiếu thông tin
        if (courseIdStr == null || teacherIdStr == null || courseIdStr.isEmpty() || teacherIdStr.isEmpty()) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().write("Course ID or Teacher ID missing");
            return;
        }

        int courseId = Integer.parseInt(courseIdStr);
        int teacherId = Integer.parseInt(teacherIdStr);
<<<<<<< HEAD

        CourseDAO courseDAO = new CourseDAO();
        UserDAO userDAO = new UserDAO();
        CourseDBO course = courseDAO.getCourseByID(courseId);
        UserDBO teacher = userDAO.getUserByID(teacherId); // Sử dụng hàm DAO mới

        if ("delete".equals(action)) {
            // Xóa giáo viên khỏi khóa học cụ thể
            boolean deleteSuccess = courseDAO.removeTeacherFromCourse(courseId, teacherId);

            if (deleteSuccess) {
                EmailSender.sendLeaveCourseEmail(teacher.getEmail(), course.getName());
                response.sendRedirect("manage-courses"); // Chuyển hướng về trang quản lý khóa học sau khi xóa thành công
            } else {
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                response.getWriter().write("Failed to remove teacher from course");
            }
        } else {
            // Cập nhật giáo viên cho khóa học
            boolean updateSuccess = courseDAO.updateCourseTeacher(courseId, teacherId, user.getId());

            if (updateSuccess) {
                EmailSender.sendJoinCourseEmail(teacher.getEmail(), course.getName());
=======
        int userId = 1; // Thay thế bằng ID người dùng thực tế hoặc lấy từ session

        if ("delete".equals(action)) {
            // Xóa giáo viên
            CourseDAO courseDAO = new CourseDAO();
            boolean deleteSuccess = courseDAO.deleteTeacherById(teacherId);

            if (deleteSuccess) {
                response.sendRedirect("manage-courses"); // Chuyển hướng về trang quản lý khóa học sau khi xóa thành công
            } else {
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                response.getWriter().write("Failed to delete teacher");
            }
        } else {
            // Cập nhật giáo viên cho khóa học
            CourseDAO courseDAO = new CourseDAO();
            boolean updateSuccess = courseDAO.updateCourseTeacher(courseId, teacherId, userId);

            if (updateSuccess) {
>>>>>>> origin/payment
                // Chuyển hướng về trang manage-courses.jsp sau khi cập nhật thành công
                response.sendRedirect("manage-courses");
            } else {
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                response.getWriter().write("Failed to update course teacher");
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Update Teacher Servlet";
    }
}
