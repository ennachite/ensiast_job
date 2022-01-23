package ensiastjob.controller;

import ensiastjob.dao.StudentDaoImpl;
import ensiastjob.dao.StudentProfileDao;
import ensiastjob.model.Member;
import ensiastjob.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "UploadServlet", value = "/upload")
public class UploadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        StudentDaoImpl studentDao = new StudentDaoImpl();
        Member member = (Member) session.getAttribute("member");

        Part ImgPart = request.getPart("profile-picture");
        String imageFileName = extractFileName(ImgPart);
        String savePath= "C:\\Users\\oenna\\OneDrive\\Desktop\\ENSIAST_JOB\\Project\\files\\pictures"+ File.separator + member.getMemberId() + imageFileName;
//        String savePath2= "C:\\Users\\user\\IdeaProjects\\recruit-app\\target\\recruit-app-1.0-SNAPSHOT\\img"+ File.separator+idCandidate + imageFileName;
        File fileSaveDir = new File(savePath);
        ImgPart.write(savePath + File.separator);

//        studentDao.st
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
