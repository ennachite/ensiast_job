package ensiastjob.controller;

import ensiastjob.model.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProfileCompany", value = "/company-profile")
public class ProfileCompanyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if ( (Member) session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            request.getRequestDispatcher("view/company/profileCompany.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
