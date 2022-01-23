package ensiastjob.controller;

import ensiastjob.dao.MemberDaoImpl;
import ensiastjob.dao.StudentDaoImpl;
import ensiastjob.dao.StudentProfileDaoImpl;
import ensiastjob.extra.Strings;
import ensiastjob.model.Member;
import ensiastjob.model.Student;
import ensiastjob.model.StudentProfile;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ModifyProfileStudent", value = "/modify-student-profile")
public class ModifyProfileStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if ( (Member) session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/profile");
            } else if (session.getAttribute("role").equals("STUDENT")) {
                request.getRequestDispatcher("view/student/modifyProfileStudent.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemberDaoImpl memberDao = new MemberDaoImpl();
        StudentDaoImpl studentDao = new StudentDaoImpl();
        StudentProfileDaoImpl studentProfileDao = new StudentProfileDaoImpl();

        String firstName = request.getParameter("first-name");
        String lastName = request.getParameter("last-name");
        String CIN = request.getParameter("cin");
        String CNE = request.getParameter("cne");
        String gender = request.getParameter("gender");
        String birthdate = request.getParameter("birthdate");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        int promo = Integer.parseInt(request.getParameter("promo"));
        String yearStudies = request.getParameter("year-studies");
        String specialty = request.getParameter("specialty");
        String summary = request.getParameter("summary");

        HttpSession session = request.getSession(false);
        Member member = (Member) session.getAttribute("member");
        Student student = (Student) session.getAttribute("student");
        StudentProfile studentProfile = (StudentProfile) session.getAttribute("profile_student");

        member.setCity(city);

        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setCIN(CIN);
        student.setCNE(CNE);
        student.setGender(gender);
        student.setBirthdate(birthdate);
        student.setPhone(phone);
        student.setPromo(promo);
        student.setYearStudies(yearStudies);
        student.setSpecialty(specialty);

        studentProfile.setSummary(summary);
        studentProfileDao.updateStudentProfile(studentProfile);

        int updateStudent = studentDao.updateStudent(student, member);

        if (updateStudent == 1) {
            member = memberDao.getMemberById(member.getMemberId());
            student = studentDao.getStudentById(student.getStudentId());
            studentProfile = studentProfileDao.getStudentProfileByStudentId(student.getStudentId());

            session.setAttribute("member", member);
            session.setAttribute("student", student);
            session.setAttribute("profile_student", studentProfile);

            response.sendRedirect("/profile");
        } else if (updateStudent == 0) {
            String error = Strings.ERROR_WRONG;
            request.setAttribute("error", error);

            request.getRequestDispatcher("view/student/modifyProfileStudent.jsp").forward(request, response);
        } else {
            String error = Strings.ERROR_DB_PROBLEM;
            request.setAttribute("error", error);

            request.getRequestDispatcher("view/student/modifyProfileStudent.jsp").forward(request, response);
        }
    }
}
