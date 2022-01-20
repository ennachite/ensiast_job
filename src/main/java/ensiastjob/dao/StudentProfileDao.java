package ensiastjob.dao;

import ensiastjob.model.StudentProfile;

public interface StudentProfileDao {
    public int addStudentProfile(StudentProfile profile, int studentId);
    public StudentProfile getStudentProfileByStudentId(int studentId);
}
