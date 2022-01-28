package ensiastjob.controller;

import ensiastjob.dao.CompanyDaoImpl;
import ensiastjob.dao.MemberDaoImpl;
import ensiastjob.extra.Strings;
import ensiastjob.model.Company;
import ensiastjob.model.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ModifyProfileCompany", value = "/modify-company-profile")
public class ModifyProfileCompanyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("STUDENT")) {
                response.sendRedirect("/profile");
            } else if (session.getAttribute("role").equals("COMPANY")) {
                request.getRequestDispatcher("view/company/modifyProfileCompany.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemberDaoImpl memberDao = new MemberDaoImpl();
        CompanyDaoImpl companyDao = new CompanyDaoImpl();

        String companyName = request.getParameter("company-name");
        String ceoName = request.getParameter("ceo-name");
        String companyTif = request.getParameter("company-tif");
        String companyFix = request.getParameter("fix");
        String city = request.getParameter("city");
        int companySize = Integer.parseInt(request.getParameter("company-size"));
        int founded = Integer.parseInt(request.getParameter("founded"));
        String description = request.getParameter("description");

        HttpSession session = request.getSession(false);
        Member member = (Member) session.getAttribute("member");
        Company company = (Company) session.getAttribute("company");

        member.setCity(city);

        company.setCompanyName(companyName);
        company.setCeoName(ceoName);
        company.setCompanyTif(companyTif);
        company.setCompanyFix(companyFix);
        company.setCompanySize(companySize);
        company.setFounded(founded);
        company.setDescription(description);

        int updateProfile = companyDao.updateCompany(company, member);

        if (updateProfile == 1) {
            member = memberDao.getMemberById(member.getMemberId());
            company = companyDao.getCompanyById(company.getCompanyId());

            session.setAttribute("member", member);
            session.setAttribute("company", company);

            response.sendRedirect("/profile");
        } else if (updateProfile == 0) {
            String error = Strings.ERROR_WRONG;
            request.setAttribute("error", error);

            request.getRequestDispatcher("view/company/modifyProfileCompany.jsp").forward(request, response);
        } else {
            String error = Strings.ERROR_DB_PROBLEM;
            request.setAttribute("error", error);

            request.getRequestDispatcher("view/company/modifyProfileCompany.jsp").forward(request, response);
        }
    }
}
