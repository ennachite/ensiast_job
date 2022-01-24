package ensiastjob.dao.student;

import ensiastjob.model.student.Experience;

public interface ExperienceDao {
    public void addExperience(Experience experience);
    public void modifyExperience(Experience experience);
    public void deleteExperience(int experienceId);
}
