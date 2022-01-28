package ensiastjob.controller;

import ensiastjob.dao.CompanyDaoImpl;
import ensiastjob.dao.MemberDaoImpl;
import ensiastjob.extra.Strings;
import ensiastjob.model.Company;
import ensiastjob.model.Member;
import ensiastjob.model.Role;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "SignupCompany", value = "/signup-company")
public class SignupCompanyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") != null) {
            response.sendRedirect("/profile");
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
        String description = request.getParameter("description");

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
            company.setDescription(description);

            companyDao.addCompany(company, member);

            //to have a new version of member and company with hash password and ids
            member = memberDao.getMemberByEmail(email);
            company = companyDao.getCompanyByMemberId(member.getMemberId());

            //create a session
            HttpSession session = request.getSession();
            session.setAttribute("member", member);
            session.setAttribute("company", company);
            session.setAttribute("role", "COMPANY");

            response.sendRedirect("/home_company");

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
