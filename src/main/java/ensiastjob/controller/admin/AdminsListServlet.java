package ensiastjob.controller.admin;

import ensiastjob.dao.AdminDaoImpl;
import ensiastjob.model.Admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminsList", value = "/admins-list")
public class AdminsListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/home-company");
            } else if (session.getAttribute("role").equals("STUDENT")) {
                response.sendRedirect("/home-student");
            } else if (session.getAttribute("role").equals("ADMIN")) {
                AdminDaoImpl adminDao = new AdminDaoImpl();
                List<Admin> admins = adminDao.getAllAdmins();
                request.setAttribute("admins", admins);
                request.getRequestDispatcher("/view/admin/adminsList.jsp").forward(request, response);
            }
        }
    }

}
