package ensiastjob.dao.student;

import ensiastjob.model.student.Experience;

import java.util.List;

public interface ExperienceDao {
    public void addExperience(Experience experience);
    public void modifyExperience(Experience experience);
    public void deleteExperience(int experienceId);
    public List<Experience> getAllExperiencesByProfileId(int profileId);
}
