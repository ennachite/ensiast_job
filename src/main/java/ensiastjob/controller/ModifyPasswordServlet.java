package ensiastjob.controller;

import ensiastjob.dao.MemberDaoImpl;
import ensiastjob.extra.Strings;
import ensiastjob.model.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ModifyPassword", value = "/modify-password")
public class ModifyPasswordServlet extends HttpServlet {
    private static final String MEMBER = "member";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute(MEMBER) == null) {
            response.sendRedirect("/");
        } else {
            request.getRequestDispatcher("view/modifyPassword.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String currentPassword = request.getParameter("current-password");
        String newPassword = request.getParameter("new-password");

        HttpSession session = request.getSession(false);
        MemberDaoImpl memberDao = new MemberDaoImpl();
        Member member = (Member) session.getAttribute(MEMBER);
        String email = member.getEmail();

        int updatePassword = memberDao.updatePassword(email, currentPassword, newPassword);

        if (updatePassword == 1) {
            member = memberDao.getMemberByEmail(email);
            session.setAttribute(MEMBER, member);

            response.sendRedirect("/profile");

        } else if (updatePassword == 0) {
            String error = Strings.ERROR_WRONG;
            request.setAttribute("error", error);

            request.getRequestDispatcher("view/modifyPassword.jsp").forward(request, response);
        } else {
            String error = Strings.ERROR_DB_PROBLEM;
            request.setAttribute("error", error);

            request.getRequestDispatcher("view/modifyPassword.jsp").forward(request, response);
        }
    }
}
