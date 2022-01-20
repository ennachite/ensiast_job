package ensiastjob.controller;

import ensiastjob.dao.MemberDaoImpl;
import ensiastjob.dao.StudentDaoImpl;
import ensiastjob.dao.StudentProfileDaoImpl;
import ensiastjob.extra.Strings;
import ensiastjob.model.Member;
import ensiastjob.model.Role;
import ensiastjob.model.Student;
import ensiastjob.model.StudentProfile;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignupStudent", value = "/signup-student")
public class SignupStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        HttpSession session = request.getSession(false);
//        if (session != null) {
//            response.sendRedirect("/");
//        } else {
//            request.getRequestDispatcher("view/student/signupStudent.jsp").forward(request, response);
//        }
        request.getRequestDispatcher("view/student/signupStudent.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemberDaoImpl memberDao = new MemberDaoImpl();

        String firstName = request.getParameter("first-name");
        String lastName = request.getParameter("last-name");
        String birthdate = request.getParameter("birthdate");
        String gender = request.getParameter("gender");
        String cin = request.getParameter("cne");
        String cne = request.getParameter("cne");
        String phone = request.getParameter("phone");
        String city = request.getParameter("cne");
        String specialty = request.getParameter("cne");
        String yearStudies = request.getParameter("year-studies");
        int promo = Integer.parseInt(request.getParameter("promo"));
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        int emailExist = memberDao.emailExist(email);

        if (emailExist == 0) {
            StudentDaoImpl studentDao = new StudentDaoImpl();
            StudentProfileDaoImpl studentProfileDao = new StudentProfileDaoImpl();

            Member member = new Member();
            Student student = new Student();

            member.setEmail(email);
            member.setPassword(password);
            member.setCity(city);
            member.setRole(Role.valueOf("STUDENT"));

            student.setFirstName(firstName);
            student.setLastName(lastName);
            student.setCNE(cne);
            student.setCIN(cin);
            student.setBirthdate(birthdate);
            student.setGender(gender);
            student.setSpecialty(specialty);
            student.setYearStudies(yearStudies);
            student.setPhone(phone);
            student.setPromo(promo);

            studentDao.addStudent(student, member);

            //to have a new version of member and student with hash password and ids
            member = memberDao.getMemberByEmail(email);
            student = studentDao.getStudentByMemberId(member.getMemberId());
            StudentProfile studentProfile = studentProfileDao.getStudentProfileByStudentId(member.getMemberId());

            //create a session
            HttpSession session = request.getSession();
            session.setAttribute("member", member);
            session.setAttribute("student", student);
            session.setAttribute("profile-student", studentProfile);

            request.getRequestDispatcher("view/student").forward(request, response);

        } else if (emailExist == 1) {
            String error = Strings.ERROR_EMAIL_EXIST;
            request.setAttribute("error", error);

            request.getRequestDispatcher("view/student/signupStudent.jsp").forward(request, response);

        } else {
            request.setAttribute("error", "Connection Error");
            request.getRequestDispatcher("view/student/signupStudent.jsp").forward(request, response);
        }
    }
}
