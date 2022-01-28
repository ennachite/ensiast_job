package ensiastjob.dao;

import ensiastjob.model.Company;
import ensiastjob.model.Member;
import ensiastjob.model.Student;

import java.util.List;

public interface StudentDao {
    public int addStudent(Student student, Member member);
    public int updateStudent(Student student, Member member);
    public Student getStudentById(int id);
    public Student getStudentByMemberId(int memberId);
    public int getTotalStudents();
    public List<Student> getAllStudents();
}
