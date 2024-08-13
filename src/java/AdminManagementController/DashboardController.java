package AdminManagementController;

import Dal.DashboardDAO;
import Model.DashBoardPaymentDBO;
import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

<<<<<<< HEAD
public class DashboardController extends HttpServlet {

=======

public class DashboardController extends HttpServlet {
>>>>>>> origin/payment
    private static final long serialVersionUID = 1L;

    public Double TotalPrice(String year, String month) {
        DashboardDAO db = new DashboardDAO();
        List<DashBoardPaymentDBO> pay_list = db.getAllpaymentByMonthAndYear(year, month);
        double total = 0.0;
        for (DashBoardPaymentDBO payment : pay_list) {
            total += payment.getAmount();
        }
        return total;
    }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/create-course1
=======
>>>>>>> origin/crud_quiz
    public int numberOfActor(String role){
       DashboardDAO db = new DashboardDAO();
       return db.getAllUser(role).size();
    }
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/AdminManager
=======
>>>>>>> origin/create-course1
=======
>>>>>>> origin/crud_quiz
=======
>>>>>>> origin/payment

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Lấy tham số year từ request
        String yearParam = request.getParameter("year");
        String year = (yearParam != null) ? yearParam : "2024"; // Sử dụng giá trị mặc định nếu không có tham số year

        // Fetch data for all months
        double[] monthlyIncome = new double[12];
        for (int i = 0; i < 12; i++) {
<<<<<<< HEAD
            monthlyIncome[i] = TotalPrice(year, String.valueOf(i + 1)) / 1000000;
=======
            monthlyIncome[i] = TotalPrice(year, String.valueOf(i + 1))/1000000;
>>>>>>> origin/payment
        }

        // Dữ liệu mẫu cho biểu đồ
        Map<String, Object> data = new HashMap<>();
        data.put("totalStudents", 422);
        data.put("newStudents", 357);
        data.put("totalCourse", 547);
        data.put("feesCollection", 3280);
        data.put("sparkBarData", new int[]{33, 22, 68, 54, 8, 30, 74, 7, 36, 5, 41, 19, 43, 90, 38}); // Dữ liệu cho Spark Bar Chart
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        data.put("sparkLineChart", new int[]{numberOfActor("1"), numberOfActor("2"), numberOfActor("3"), numberOfActor("4")}); // Dữ liệu cho Sparkline Chart 1 là mầu xanh nước biển 2 là mầu hồng 3 mầu đỏ 4 mầu xanh lá
=======
        data.put("sparkLineChart", new int[]{24, 61, 51}); // Dữ liệu cho Sparkline Chart
>>>>>>> origin/AdminManager
=======
        data.put("sparkLineChart", new int[]{numberOfActor("1"), numberOfActor("2"), numberOfActor("3"), numberOfActor("4")}); // Dữ liệu cho Sparkline Chart 1 là mầu xanh nước biển 2 là mầu hồng 3 mầu đỏ 4 mầu xanh lá
>>>>>>> origin/create-course1
=======
        data.put("sparkLineChart", new int[]{numberOfActor("1"), numberOfActor("2"), numberOfActor("3"), numberOfActor("4")}); // Dữ liệu cho Sparkline Chart 1 là mầu xanh nước biển 2 là mầu hồng 3 mầu đỏ 4 mầu xanh lá
>>>>>>> origin/crud_quiz
        data.put("barChart", monthlyIncome); // Dữ liệu cho Bar Chart
        data.put("areaChart", monthlyIncome); // Dữ liệu cho Area Chart
        double totalIncome = 0;
        for (double income : monthlyIncome) {
            totalIncome += income;
        }
        data.put("totalIncome", totalIncome);
=======
        data.put("sparkLineChart", new int[]{24, 61, 51}); // Dữ liệu cho Sparkline Chart
        data.put("barChart", monthlyIncome); // Dữ liệu cho Bar Chart
        data.put("areaChart", monthlyIncome); // Dữ liệu cho Area Chart
>>>>>>> origin/payment

        String json = new Gson().toJson(data);

        PrintWriter out = response.getWriter();
        out.print(json);
        out.flush();
    }
<<<<<<< HEAD
=======
    
   
>>>>>>> origin/payment

}
