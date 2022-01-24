package ensiastjob.dao.student;

import ensiastjob.model.student.Education;

public interface EducationDao {
    public void addEducation(Education education);
    public void modifyEducation(Education education);
    public void deleteEducation(int educationId);
}
