package ensiastjob.controller;

import ensiastjob.dao.MemberDaoImpl;
import ensiastjob.extra.Strings;
import ensiastjob.model.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ModifyPassword", value = "/modify-password")
public class ModifyPasswordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if ( (Member) session.getAttribute("member") == null) {
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
        Member member = (Member) session.getAttribute("member");
        String email = member.getEmail();

        int updatePassword = memberDao.updatePassword(email, currentPassword, newPassword);

        if (updatePassword == 1) {
            member = memberDao.getMemberByEmail(email);
            session.setAttribute("member", member);

            String role = String.valueOf(member.getRole());

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
