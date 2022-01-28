package ensiastjob.dao.student;

import ensiastjob.model.student.Education;

import java.util.List;

public interface EducationDao {
    void addEducation(Education education);

    void modifyEducation(Education education);

    void deleteEducation(int educationId);

    List<Education> getAllEducationsByProfileId(int profileId);

}
