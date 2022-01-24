package ensiastjob.dao.student;

import ensiastjob.model.student.Education;

import java.util.List;

public interface EducationDao {
    public void addEducation(Education education);
    public void modifyEducation(Education education);
    public void deleteEducation(int educationId);
    public List<Education> getAllEducationsByProfileId(int profileId);

}
