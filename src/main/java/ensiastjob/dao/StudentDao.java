package ensiastjob.dao;

import ensiastjob.model.Member;
import ensiastjob.model.Student;

import java.util.List;

public interface StudentDao {
    int addStudent(Student student, Member member);

    int updateStudent(Student student, Member member);

    Student getStudentById(int id);

    Student getStudentByMemberId(int memberId);

    int getTotalStudents();

    List<Student> getAllStudents();
}
