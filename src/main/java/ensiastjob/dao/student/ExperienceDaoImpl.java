package ensiastjob.dao.student;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.student.Experience;
import ensiastjob.model.student.Experience;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ExperienceDaoImpl implements ExperienceDao{
    private final Connection connection;
    private Statement statement;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public ExperienceDaoImpl() {
        connection = DBConnection.getConnected();
    }

    @Override
    public void addExperience(Experience experience) {
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO experience (profile_id, title, job_type, " +
                    "company_name, location, start_date, end_date, description) VALUES (?,?,?,?,?,?,?,?)");
            preparedStatement.setInt(1, experience.getProfileId());
            preparedStatement.setString(2, experience.getExperienceTitle());
            preparedStatement.setString(3, experience.getJobType());
            preparedStatement.setString(4, experience.getCompanyName());
            preparedStatement.setString(5, experience.getCompanyLocation());
            preparedStatement.setString(6, experience.getStartDate());
            preparedStatement.setString(7, experience.getEndDate());
            preparedStatement.setString(8, experience.getExperienceDescription());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void modifyExperience(Experience experience) {
        try {
            preparedStatement = connection.prepareStatement("UPDATE experience SET title=?, job_type=?," +
                    "company_name=?, location=?, start_date=?, end_date=?, description=? WHERE experience_id=?");
            preparedStatement.setString(1, experience.getExperienceTitle());
            preparedStatement.setString(2, experience.getJobType());
            preparedStatement.setString(3, experience.getCompanyName());
            preparedStatement.setString(4, experience.getCompanyLocation());
            preparedStatement.setString(5, experience.getStartDate());
            preparedStatement.setString(6, experience.getEndDate());
            preparedStatement.setString(7, experience.getExperienceDescription());
            preparedStatement.setInt(8,experience.getExperienceId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteExperience(int experienceId) {
        try {
            preparedStatement = connection.prepareStatement("DELETE FROM experience WHERE experience_id=?");
            preparedStatement.setInt(1, experienceId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Experience> getAllExperiencesByProfileId(int profileId) {
        List<Experience> experiences = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM experience WHERE profile_id=?");
            preparedStatement.setInt(1, profileId);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Experience experience = new Experience();
                experience.setExperienceId(resultSet.getInt("experience_id"));
                experience.setProfileId(resultSet.getInt("profile_id"));
                experience.setExperienceTitle(resultSet.getString("title"));
                experience.setJobType(resultSet.getString("job_type"));
                experience.setCompanyName(resultSet.getString("company_name"));
                experience.setCompanyLocation(resultSet.getString("location"));
                experience.setStartDate(resultSet.getString("start_date"));
                experience.setEndDate(resultSet.getString("end_date"));
                experience.setExperienceDescription(resultSet.getString("description"));

                experiences.add(experience);
            }

            return experiences;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
