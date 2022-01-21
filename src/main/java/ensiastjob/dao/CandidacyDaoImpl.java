package ensiastjob.dao;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.Candidacy;
import ensiastjob.model.Offer;
import ensiastjob.model.Student;

import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class CandidacyDaoImpl implements CandidacyDao{
    private final Connection connection;
    private Statement statement;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public CandidacyDaoImpl () {
        connection = DBConnection.getConnected();
    }

    @Override
    public int addCandidacy(Candidacy candidacy, int studentId, int offerId) {
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO candidacy(student_id, company_id, status, CV, " +
                    "date_candidacy, motivation) VALUES (?,?,?,?,?,?)");
            preparedStatement.setInt(1, studentId);
            preparedStatement.setInt(2, offerId);
            preparedStatement.setString(3, String.valueOf(candidacy.getCandidacyStatus()));
            preparedStatement.setString(4, candidacy.getStudentCV());
            preparedStatement.setString(5, dateFormatter.format(now));
            preparedStatement.setString(6, candidacy.getMotivation());

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
}
