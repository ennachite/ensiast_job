package ensiastjob.dao.student;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.student.Education;

import java.sql.*;

public class EducationDaoImpl implements EducationDao{
    private final Connection connection;
    private Statement statement;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public EducationDaoImpl() {
        connection = DBConnection.getConnected();
    }

    @Override
    public void addEducation(Education education) {
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO education (profile_id, school_name, degree, " +
                    "field_studies, start_date, end_date, description) VALUES (?,?,?,?,?,?,?)");
            preparedStatement.setInt(1, education.getProfileId());
            preparedStatement.setString(2, education.getSchoolName());
            preparedStatement.setString(3, education.getDegree());
            preparedStatement.setString(4, education.getFieldStudies());
            preparedStatement.setString(5, education.getStartDate());
            preparedStatement.setString(6, education.getEndDate());
            preparedStatement.setString(7, education.getEductionDescription());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void modifyEducation(Education education) {
        try {
            preparedStatement = connection.prepareStatement("UPDATE education SET school_name=?, degree=?," +
                    "field_studies=?, start_date=?, end_date=?, description=? WHERE education_id=?");
            preparedStatement.setString(1, education.getSchoolName());
            preparedStatement.setString(2, education.getDegree());
            preparedStatement.setString(3, education.getFieldStudies());
            preparedStatement.setString(4, education.getStartDate());
            preparedStatement.setString(5, education.getEndDate());
            preparedStatement.setString(6, education.getEductionDescription());
            preparedStatement.setInt(7,education.getEducationId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteEducation(int educationId) {
        try {
            preparedStatement = connection.prepareStatement("DELETE FROM education WHERE education_id=?");
            preparedStatement.setInt(1, educationId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
