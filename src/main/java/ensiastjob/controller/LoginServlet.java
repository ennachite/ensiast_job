package ensiastjob.controller;

import ensiastjob.dao.*;
import ensiastjob.extra.Strings;
import ensiastjob.model.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Login", value = "/login")
public class LoginServlet extends HttpServlet {
    private static final String MEMBER = "member";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute(MEMBER) != null) {
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

            switch (role) {
                case "STUDENT": {
                    StudentDaoImpl studentDao = new StudentDaoImpl();
                    StudentProfileDaoImpl studentProfileDao = new StudentProfileDaoImpl();

                    Student student = studentDao.getStudentByMemberId(member.getMemberId());
                    StudentProfile studentProfile = studentProfileDao.getStudentProfileByStudentId(student.getStudentId());

                    HttpSession session = request.getSession();
                    session.setAttribute(MEMBER, member);
                    session.setAttribute("student", student);
                    session.setAttribute("profile_student", studentProfile);
                    session.setAttribute("role", role);

                    response.sendRedirect("/home-student");

                    break;
                }
                case "COMPANY": {
                    CompanyDaoImpl companyDao = new CompanyDaoImpl();
                    Company company = companyDao.getCompanyByMemberId(member.getMemberId());

                    HttpSession session = request.getSession();
                    session.setAttribute(MEMBER, member);
                    session.setAttribute("company", company);
                    session.setAttribute("role", role);

                    response.sendRedirect("/home-company");

                    break;
                }
                case "ADMIN": {
                    AdminDaoImpl adminDao = new AdminDaoImpl();
                    Admin admin = adminDao.getAdminByMemberId(member.getMemberId());

                    HttpSession session = request.getSession();
                    session.setAttribute(MEMBER, member);
                    session.setAttribute("admin", admin);
                    session.setAttribute("role", role);

                    response.sendRedirect("/home-admin");

                    break;
                }

                default:
                    break;
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
