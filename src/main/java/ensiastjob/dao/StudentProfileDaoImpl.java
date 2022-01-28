package ensiastjob.dao;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.StudentProfile;

import java.sql.*;

public class StudentProfileDaoImpl implements StudentProfileDao{
    private final Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public StudentProfileDaoImpl() {
        connection = DBConnection.getConnected();
    }

    @Override
    public int addStudentProfile(StudentProfile profile, int studentId) {
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO profile(student_id, active, summary) VALUES (?,?,?)");
            preparedStatement.setInt(1, studentId);
            preparedStatement.setString(2, String.valueOf(profile.isActive()));
            preparedStatement.setString(3, profile.getSummary());
            if (preparedStatement.executeUpdate() > 0) {
                return 1;
            } else {
                return 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    @Override
    public int updateStudentProfile(StudentProfile studentProfile) {
        try {
            preparedStatement = connection.prepareStatement("UPDATE profile SET summary=? WHERE student_id=?");
            preparedStatement.setString(1, studentProfile.getSummary());
            preparedStatement.setInt(2, studentProfile.getStudentId());

            if (preparedStatement.executeUpdate() > 0) {
                return 1;
            } else {
                return 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return -1;
    }

    @Override
    public StudentProfile getStudentProfileByStudentId(int studentId) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM profile WHERE student_id=?");
            preparedStatement.setInt(1, studentId);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                StudentProfile profile = new StudentProfile();
                profile.setProfileId(resultSet.getInt("profile_id"));
                profile.setStudentId(resultSet.getInt("student_id"));
                profile.setActive(Boolean.parseBoolean(resultSet.getString("active")));
                profile.setSummary(resultSet.getString("summary"));

                return profile;
            } else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
