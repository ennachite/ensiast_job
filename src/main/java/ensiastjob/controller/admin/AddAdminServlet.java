package ensiastjob.controller.admin;

import ensiastjob.dao.AdminDaoImpl;
import ensiastjob.model.Admin;
import ensiastjob.model.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AddAdmin", value = "/add-admin")
public class AddAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("STUDENT")) {
                response.sendRedirect("/home-student");
            } else if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/home-company");
            } else if (session.getAttribute("role").equals("ADMIN")) {
                request.getRequestDispatcher("view/admin/addAdmin.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminDaoImpl adminDao = new AdminDaoImpl();
        String adminName = request.getParameter("admin-name");
        String adminGender = request.getParameter("admin-gender");
        String adminCin = request.getParameter("admin-cin");
        String city = request.getParameter("city");
        String adminBirthdate = request.getParameter("admin-birthdate");
        String adminPhone = request.getParameter("admin-phone");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        HttpSession session = request.getSession(false);
        Member member = (Member) session.getAttribute("member");
        Admin admin = (Admin) session.getAttribute("admin");

        member.setCity(city);
        member.setEmail(email);
        member.setPassword(password);

        admin.setAdminName(adminName);
        admin.setAdminGender(adminGender);
        admin.setAdminCIN(adminCin);
        admin.setAdminBirthdate(adminBirthdate);
        admin.setAdminPhone(adminPhone);

        int status = adminDao.addAdmin(admin, member);

        if (status == -1) {
            request.setAttribute("error", "Connection Error");
            request.getRequestDispatcher("view/admin/addAdmin.jsp").forward(request, response);
        } else {
            response.sendRedirect("/home-admin");
        }

    }
}
