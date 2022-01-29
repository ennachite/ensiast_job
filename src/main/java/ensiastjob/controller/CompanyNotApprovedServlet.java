package ensiastjob.controller;

import ensiastjob.model.Company;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CompanyNotApproved", value = "/not-approved")
public class CompanyNotApprovedServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("STUDENT")) {
                response.sendRedirect("/home-student");
            } else if (session.getAttribute("role").equals("COMPANY")) {
                Company company = (Company) session.getAttribute("company");

                if (company.isApproved()) {
                    response.sendRedirect("/home-company");
                } else {
                    request.getRequestDispatcher("view/company/notApprovedCompany.jsp").forward(request, response);
                }
            }
        }
    }
}
