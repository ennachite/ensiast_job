package ensiastjob.dao.student;

import ensiastjob.model.student.Experience;

import java.util.List;

public interface ExperienceDao {
    void addExperience(Experience experience);

    void modifyExperience(Experience experience);

    void deleteExperience(int experienceId);

    List<Experience> getAllExperiencesByProfileId(int profileId);
}
