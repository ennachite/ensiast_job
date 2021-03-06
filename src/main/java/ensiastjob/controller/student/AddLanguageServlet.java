package ensiastjob.controller.student;

import ensiastjob.dao.student.LanguageDaoImpl;
import ensiastjob.model.StudentProfile;
import ensiastjob.model.student.Language;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AddLanguage", value = "/profile/add-language")
public class AddLanguageServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("role").equals("STUDENT")) {
            StudentProfile studentProfile = (StudentProfile) session.getAttribute("profile_student");

            String languageName = request.getParameter("language-name");
            String level = request.getParameter("level");

            Language language = new Language();
            LanguageDaoImpl languageDao = new LanguageDaoImpl();

            int studentProfileId = studentProfile.getProfileId();

            language.setProfileId(studentProfileId);
            language.setLanguageName(languageName);
            language.setLevel(level);

            languageDao.addLanguage(language);

            request.setAttribute("languages", languageDao.getAllLanguagesByProfileId(studentProfileId));

            response.sendRedirect("/profile");
        }
    }
}
