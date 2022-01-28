package ensiastjob.controller.admin;

import ensiastjob.dao.AdminDaoImpl;
import ensiastjob.dao.MemberDaoImpl;
import ensiastjob.extra.Strings;
import ensiastjob.model.Admin;
import ensiastjob.model.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ModifyAdminProfile", value = "/modify-admin-profile")
public class ModifyAdminProfileServlet extends HttpServlet {
    private static final String MEMBER = "member";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute(MEMBER) == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("STUDENT") || session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/profile");
            } else if (session.getAttribute("role").equals("ADMIN")) {
                request.getRequestDispatcher("view/admin/modifyProfileAdmin.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemberDaoImpl memberDao = new MemberDaoImpl();
        AdminDaoImpl adminDao = new AdminDaoImpl();
        String adminName = request.getParameter("admin-name");
        String adminGender = request.getParameter("admin-gender");
        String adminCin = request.getParameter("admin-cin");
        String city = request.getParameter("city");
        String adminBirthdate = request.getParameter("admin-birthdate");
        String adminPhone = request.getParameter("admin-phone");

        HttpSession session = request.getSession(false);
        Member member = (Member) session.getAttribute(MEMBER);
        Admin admin = (Admin) session.getAttribute("admin");

        member.setCity(city);

        admin.setAdminName(adminName);
        admin.setAdminGender(adminGender);
        admin.setAdminCIN(adminCin);
        admin.setAdminBirthdate(adminBirthdate);
        admin.setAdminPhone(adminPhone);

        int updateProfile = adminDao.updateAdmin(admin);
        int updateCity = memberDao.updateCity(member.getMemberId(), member.getCity());

        if (updateProfile == 1 && updateCity == 1) {
            member = memberDao.getMemberById(member.getMemberId());
            admin = adminDao.getAdminById(admin.getAdminId());

            session.setAttribute(MEMBER, member);
            session.setAttribute("admin", admin);

            response.sendRedirect("/profile");
        } else if (updateProfile == 0 || updateCity == 0) {
            String error = Strings.ERROR_WRONG;
            request.setAttribute("error", error);

            request.getRequestDispatcher("view/company/modifyProfileAdmin.jsp").forward(request, response);
        } else {
            String error = Strings.ERROR_DB_PROBLEM;
            request.setAttribute("error", error);

            request.getRequestDispatcher("view/company/modifyProfileAdmin.jsp").forward(request, response);
        }

    }
}
