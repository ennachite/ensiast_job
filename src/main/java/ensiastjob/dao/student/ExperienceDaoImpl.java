package ensiastjob.dao.student;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.student.Experience;

import java.sql.*;

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
                    "comapny_name, location, start_date, end_date, description) VALUES (?,?,?,?,?,?,?,?)");
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
                    "comapny_name=?, location=?, start_date=?, end_date=?, description=? WHERE experience_id=?");
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
}
