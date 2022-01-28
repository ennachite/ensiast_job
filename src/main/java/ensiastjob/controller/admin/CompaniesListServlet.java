package ensiastjob.controller.admin;

import ensiastjob.dao.CompanyDaoImpl;
import ensiastjob.model.Company;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CompaniesList", value = "/companies-list")
public class CompaniesListServlet extends HttpServlet {
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
                CompanyDaoImpl companyDao = new CompanyDaoImpl();
                List<Company> companies = companyDao.getAllCompanies();
                request.setAttribute("companies", companies);
                request.getRequestDispatcher("/view/admin/companiesList.jsp").forward(request, response);
            }
        }
    }

}
