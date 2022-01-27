package ensiastjob.dao;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.*;

import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class CandidacyDaoImpl implements CandidacyDao{
    private final Connection connection;
    private Statement statement;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public CandidacyDaoImpl () {
        connection = DBConnection.getConnected();
    }

    @Override
    public int addCandidacy(Candidacy candidacy) {
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO candidacy(student_id, offer_id, status, CV, " +
                    "github_username, date_candidacy, motivation) VALUES (?,?,?,?,?,?,?)");
            preparedStatement.setInt(1, candidacy.getStudentId());
            preparedStatement.setInt(2, candidacy.getOfferId());
            preparedStatement.setString(3, candidacy.getCandidacyStatus());
            preparedStatement.setString(4, candidacy.getStudentCV());
            preparedStatement.setString(5, candidacy.getGithubUsername());
            preparedStatement.setString(6, dateFormatter.format(now));
            preparedStatement.setString(7, candidacy.getMotivation());

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
    public Candidacy getCandidacyById(int candidacyId) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM  candidacy WHERE candidacy_id=?");
            preparedStatement.setInt(1, candidacyId);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                return getCandidacy();
            }

            return null;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Candidacy> getCandidaciesByOffer(int offerId) {
        List<Candidacy> candidacies = new ArrayList<Candidacy>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM candidacy WHERE offer_id=?");
            preparedStatement.setInt(1, offerId);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Candidacy candidacy = getCandidacy();
                //We implement Student to get his name
                StudentDaoImpl studentDao = new StudentDaoImpl();
                Student student = studentDao.getStudentById(candidacy.getStudentId());
                candidacy.setStudentName(student.getFirstName() + " " + student.getLastName());
                //We implement Member to get his picture
                MemberDaoImpl memberDao = new MemberDaoImpl();
                Member member = memberDao.getMemberById(student.getMemberId());
                candidacy.setStudentPicture(member.getPicture());

                candidacies.add(candidacy);
            }
            return candidacies;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public void deleteAllCandidaciesByOffer(int offerId) {
        try {
            preparedStatement = connection.prepareStatement("DELETE FROM candidacy WHERE offer_id=?");
            preparedStatement.setInt(1, offerId);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Candidacy> getCandidaciesByStudent(int studentId) {
        List<Candidacy> candidacies = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM candidacy WHERE student_id=?");
            preparedStatement.setInt(1, studentId);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Candidacy candidacy = getCandidacy();
                OfferDaoImpl offerDao = new OfferDaoImpl();
                Offer offer = offerDao.getOfferById(candidacy.getOfferId());
                CompanyDaoImpl companyDao = new CompanyDaoImpl();
                Company company = companyDao.getCompanyById(offer.getCompanyId());
                candidacy.setCompanyId(company.getCompanyId());
                candidacy.setCompanyName(company.getCompanyName());
                MemberDaoImpl memberDao = new MemberDaoImpl();
                candidacy.setCompanyPicture(memberDao.getMemberById(company.getMemberId()).getPicture());
                candidacy.setOfferName(offer.getOfferName());
                candidacy.setOfferLocation(offer.getOfferLocation());
                candidacy.setOfferJobType(offer.getJobType());
                candidacy.setOfferDescription(offer.getOfferDescription());

                candidacies.add(candidacy);
            }
            return candidacies;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    private Candidacy getCandidacy() throws SQLException {
        Candidacy candidacy = new Candidacy();
        candidacy.setCandidacyId(resultSet.getInt("candidacy_id"));
        candidacy.setStudentId(resultSet.getInt("student_id"));
        candidacy.setOfferId(resultSet.getInt("offer_id"));
        candidacy.setCandidacyStatus(CandidacyStatus.valueOf(resultSet.getString("status")));
        candidacy.setStudentCV(resultSet.getString("CV"));
        candidacy.setGithubUsername(resultSet.getString("github_username"));
        candidacy.setDateCandidacy(resultSet.getString("date_candidacy"));
        candidacy.setMotivation(resultSet.getString("motivation"));
        return candidacy;
    }

    @Override
    public void modifyCandidacyStatus(int candidacyId, String candidacyStatus) {
        try {
            preparedStatement = connection.prepareStatement("UPDATE candidacy SET status=? WHERE candidacy_id=?");
            preparedStatement.setString(1, candidacyStatus);
            preparedStatement.setInt(2, candidacyId);

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
