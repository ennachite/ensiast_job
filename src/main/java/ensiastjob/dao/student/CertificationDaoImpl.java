package ensiastjob.dao.student;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.student.Certification;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CertificationDaoImpl implements CertificationDao{
    private final Connection connection;
    private Statement statement;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public CertificationDaoImpl() {
        connection = DBConnection.getConnected();
    }

    @Override
    public void addCertification(Certification certification) {
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO certification(profile_id, certification_name, " +
                    "issuing_organization, issue_date, expiration_date, credential_id, credential_url) VALUES (?,?,?,?,?,?,?)");
            preparedStatement.setInt(1, certification.getProfileId());
            preparedStatement.setString(2, certification.getCertificationName());
            preparedStatement.setString(3, certification.getIssuingOrganization());
            preparedStatement.setString(4, certification.getIssueDate());
            preparedStatement.setString(5, certification.getExpirationDate());
            preparedStatement.setString(6, certification.getCredentialId());
            preparedStatement.setString(7, certification.getCredentialUrl());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void modifyCertification(Certification certification) {
        try {
            preparedStatement = connection.prepareStatement("UPDATE certification SET certification_name=?, issuing_organization=?," +
                    "issue_date=?, expiration_date=?, credential_id=?, credential_url=? WHERE certification_id=?");
            preparedStatement.setString(1, certification.getCertificationName());
            preparedStatement.setString(2, certification.getIssuingOrganization());
            preparedStatement.setString(3, certification.getIssueDate());
            preparedStatement.setString(4, certification.getExpirationDate());
            preparedStatement.setString(5, certification.getCredentialId());
            preparedStatement.setString(6, certification.getCredentialUrl());
            preparedStatement.setInt(7,certification.getCertificationId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteCertification(int certificationId) {
        try {
            preparedStatement = connection.prepareStatement("DELETE FROM certification WHERE certification_id=?");
            preparedStatement.setInt(1, certificationId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Certification> getAllCertificationsByProfileId(int profileId) {
        List<Certification> certifications = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM certification WHERE profile_id=?");
            preparedStatement.setInt(1, profileId);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Certification certification = new Certification();
                certification.setCertificationId(resultSet.getInt("certification_id"));
                certification.setProfileId(resultSet.getInt("profile_id"));
                certification.setCertificationName(resultSet.getString("certification_name"));
                certification.setIssuingOrganization(resultSet.getString("issuing_organization"));
                certification.setIssueDate(resultSet.getString("issue_date"));
                certification.setExpirationDate(resultSet.getString("expiration_date"));
                certification.setCredentialId(resultSet.getString("credential_id"));
                certification.setCredentialUrl(resultSet.getString("credential_url"));

                certifications.add(certification);
            }

            return certifications;

         } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
