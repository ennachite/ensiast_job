package ensiastjob.controller.admin;

import ensiastjob.dao.CompanyDaoImpl;
import ensiastjob.dao.MemberDaoImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteCompany", value = "/delete-company")
public class DeleteCompanyServlet extends HttpServlet {
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
                int companyId = Integer.parseInt(request.getParameter("companyId"));
                CompanyDaoImpl companyDao = new CompanyDaoImpl();
                int memberId = companyDao.getCompanyById(companyId).getMemberId();

                MemberDaoImpl memberDao = new MemberDaoImpl();
                memberDao.deleteMember(memberId);

                response.sendRedirect("/companies-list");
            }
        }
    }
}
