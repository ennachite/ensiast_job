package ensiastjob.dao;

import ensiastjob.model.Member;
import ensiastjob.model.Student;

public interface StudentDao {
    public int addStudent(Student student, Member member);
    public Student getStudentById(int id);
}
