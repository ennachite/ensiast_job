package ensiastjob.dao.student;

import ensiastjob.model.student.Language;

import java.util.List;

public interface LanguageDao {
    void addLanguage(Language language);

    void modifyLanguage(Language language);

    void deleteLanguage(int languageId);

    List<Language> getAllLanguagesByProfileId(int profileId);
}
