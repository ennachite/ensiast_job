package ensiastjob.dao.student;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.student.Language;

import java.sql.*;

public class LanguageDaoImpl implements LanguageDao{
    private final Connection connection;
    private Statement statement;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public LanguageDaoImpl() {
        connection = DBConnection.getConnected();
    }

    @Override
    public void addLanguage(Language language) {
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO language (profile_id, language_name, level) VALUES (?,?,?)");
            preparedStatement.setInt(1, language.getProfileId());
            preparedStatement.setString(2, language.getLanguageName());
            preparedStatement.setString(3, language.getLevel());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void modifyLanguage(Language language) {
        try {
            preparedStatement = connection.prepareStatement("UPDATE language SET language_name=?, level=? WHERE language_id=?");
            preparedStatement.setString(1, language.getLanguageName());
            preparedStatement.setString(2, language.getLevel());
            preparedStatement.setInt(3,language.getLanguageId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteLanguage(int languageId) {
        try {
            preparedStatement = connection.prepareStatement("DELETE FROM language WHERE language_id=?");
            preparedStatement.setInt(1, languageId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
