package ensiastjob.controller;

import ensiastjob.dao.CompanyDaoImpl;
import ensiastjob.dao.MemberDaoImpl;
import ensiastjob.dao.StudentDaoImpl;
import ensiastjob.dao.StudentProfileDaoImpl;
import ensiastjob.extra.Strings;
import ensiastjob.model.Company;
import ensiastjob.model.Member;
import ensiastjob.model.Student;
import ensiastjob.model.StudentProfile;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session =request.getSession(false);

        if ((Member) session.getAttribute("member") != null) {
            response.sendRedirect("/");
        } else {
            request.getRequestDispatcher("view/login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        MemberDaoImpl memberDao = new MemberDaoImpl();

        int verifyLogin = memberDao.verifyLogin(email, password);

        if (verifyLogin == 1) {
            Member member = memberDao.getMemberByEmail(email);
            String role = String.valueOf(member.getRole());

            if (role.equals("STUDENT")) {
                StudentDaoImpl studentDao = new StudentDaoImpl();
                StudentProfileDaoImpl studentProfileDao = new StudentProfileDaoImpl();

                Student student = studentDao.getStudentByMemberId(member.getMemberId());
                StudentProfile studentProfile = studentProfileDao.getStudentProfileByStudentId(member.getMemberId());

                HttpSession session = request.getSession();
                session.setAttribute("member", member);
                session.setAttribute("student", student);
                session.setAttribute("profile_student", studentProfile);
                session.setAttribute("role", role);

                request.getRequestDispatcher("view/student/profileStudent.jsp").forward(request, response);

            } else if (role.equals("COMPANY")) {
                CompanyDaoImpl companyDao = new CompanyDaoImpl();
                Company company = companyDao.getCompanyByMemberId(member.getMemberId());

                HttpSession session = request.getSession();
                session.setAttribute("member", member);
                session.setAttribute("company", company);
                session.setAttribute("role", role);

                request.getRequestDispatcher("view/company/profileCompany.jsp").forward(request, response);

            }

        } else if (verifyLogin == 0) {
            String error = Strings.ERROR_LOGIN;
            request.setAttribute("error", error);

            request.getRequestDispatcher("view/login.jsp").forward(request, response);

        } else {
            String error = Strings.ERROR_DB_PROBLEM;
            request.setAttribute("error", error);

            request.getRequestDispatcher("view/login.jsp").forward(request, response);
        }
    }
}
