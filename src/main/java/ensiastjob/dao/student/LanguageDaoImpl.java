package ensiastjob.dao.student;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.student.Language;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LanguageDaoImpl implements LanguageDao {
    private final Connection connection;
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
            preparedStatement.setInt(3, language.getLanguageId());
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

    @Override
    public List<Language> getAllLanguagesByProfileId(int profileId) {
        List<Language> languages = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM language WHERE profile_id=?");
            preparedStatement.setInt(1, profileId);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Language language = new Language();
                language.setLanguageId(resultSet.getInt("language_id"));
                language.setProfileId(resultSet.getInt("profile_id"));
                language.setLanguageName(resultSet.getString("language_name"));
                language.setLevel(resultSet.getString("level"));

                languages.add(language);
            }

            return languages;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
