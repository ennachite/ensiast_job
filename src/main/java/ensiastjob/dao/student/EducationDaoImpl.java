package ensiastjob.dao.student;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.student.Education;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EducationDaoImpl implements EducationDao {
    private final Connection connection;
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
            preparedStatement.setInt(7, education.getEducationId());
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

    @Override
    public List<Education> getAllEducationsByProfileId(int profileId) {
        List<Education> educations = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM education WHERE profile_id=?");
            preparedStatement.setInt(1, profileId);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Education education = new Education();
                education.setEducationId(resultSet.getInt("education_id"));
                education.setProfileId(resultSet.getInt("profile_id"));
                education.setSchoolName(resultSet.getString("school_name"));
                education.setDegree(resultSet.getString("degree"));
                education.setFieldStudies(resultSet.getString("field_studies"));
                education.setStartDate(resultSet.getString("start_date"));
                education.setEndDate(resultSet.getString("end_date"));
                education.setEductionDescription(resultSet.getString("description"));

                educations.add(education);
            }

            return educations;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
