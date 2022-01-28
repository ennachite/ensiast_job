package ensiastjob.dao;

import ensiastjob.model.StudentProfile;

public interface StudentProfileDao {
    int addStudentProfile(StudentProfile profile, int studentId);

    int updateStudentProfile(StudentProfile studentProfile);

    StudentProfile getStudentProfileByStudentId(int studentId);
}
