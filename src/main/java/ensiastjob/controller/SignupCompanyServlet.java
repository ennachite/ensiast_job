package ensiastjob.controller;

import ensiastjob.dao.CompanyDaoImpl;
import ensiastjob.dao.MemberDaoImpl;
import ensiastjob.extra.Strings;
import ensiastjob.model.Company;
import ensiastjob.model.Member;
import ensiastjob.model.Role;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignupCompany", value = "/signup-company")
public class SignupCompanyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session =request.getSession(false);

        if ((Member) session.getAttribute("member") != null) {
            response.sendRedirect("/");
        } else {
            request.getRequestDispatcher("view/company/signupCompany.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemberDaoImpl memberDao = new MemberDaoImpl();

        String companyName = request.getParameter("company-name");
        String ceoName = request.getParameter("ceo-name");
        String companyTif = request.getParameter("company-tif");
        int companySize = Integer.parseInt(request.getParameter("company-size"));
        String companyFix = request.getParameter("fix");
        String city = request.getParameter("city");
        int founded = Integer.parseInt(request.getParameter("founded"));
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        int emailExist = memberDao.emailExist(email);

        if (emailExist == 0) {
            CompanyDaoImpl companyDao = new CompanyDaoImpl();

            Member member = new Member();
            Company company = new Company();

            member.setEmail(email);
            member.setPassword(password);
            member.setCity(city);
            member.setRole(Role.valueOf("COMPANY"));

            company.setCompanyName(companyName);
            company.setCeoName(ceoName);
            company.setCompanyTif(companyTif);
            company.setCompanySize(companySize);
            company.setCompanyFix(companyFix);
            company.setFounded(founded);

            companyDao.addCompany(company, member);

            //to have a new version of member and company with hash password and ids
            member = memberDao.getMemberByEmail(email);
            company = companyDao.getCompanyByMemberId(member.getMemberId());

            //create a session
            HttpSession session = request.getSession();
            session.setAttribute("member", member);
            session.setAttribute("company", company);
            session.setAttribute("role", "COMPANY");

            request.getRequestDispatcher("view/company/profileCompany.jsp").forward(request, response);

        } else if (emailExist == 1) {
            String error = Strings.ERROR_EMAIL_EXIST;
            request.setAttribute("error", error);

            request.getRequestDispatcher("view/company/signupCompany.jsp").forward(request, response);

        } else {
            request.setAttribute("error", "Connection Error");
            request.getRequestDispatcher("view/company/signupCompany.jsp").forward(request, response);
        }

    }
}
