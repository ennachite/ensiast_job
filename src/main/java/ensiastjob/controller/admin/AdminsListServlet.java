package ensiastjob.controller.admin;

import ensiastjob.dao.AdminDaoImpl;
import ensiastjob.dao.CompanyDaoImpl;
import ensiastjob.dao.MemberDaoImpl;
import ensiastjob.model.Admin;
import ensiastjob.model.Company;
import ensiastjob.model.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminsList", value = "/admins-list")
public class AdminsListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if ( (Member) session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/home-company");
            } else if (session.getAttribute("role").equals("STUDENT")) {
                response.sendRedirect("/home-student");
            }else if(session.getAttribute("role").equals("ADMIN")){
                AdminDaoImpl adminDao = new AdminDaoImpl();
                List<Admin> admins = adminDao.getAllAdmins();
                request.setAttribute("admins",admins);
                request.getRequestDispatcher("/view/admin/adminsList.jsp").forward(request,response);
            }
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
