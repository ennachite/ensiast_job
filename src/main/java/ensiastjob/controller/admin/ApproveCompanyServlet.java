package ensiastjob.controller.admin;

import ensiastjob.dao.CompanyDaoImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ApproveCompanyServlet", value = "/approve-company")
public class ApproveCompanyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("STUDENT")) {
                response.sendRedirect("/home-student");
            } else if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/home-company");
            } else if (session.getAttribute("role").equals("ADMIN")) {
                int companyId = Integer.parseInt(request.getParameter("companyId"));
                CompanyDaoImpl companyDao = new CompanyDaoImpl();
                companyDao.approveCompany(companyId);

                response.sendRedirect("/not-approved-accounts");
            }
        }
    }
}
