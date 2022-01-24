package ensiastjob.dao.student;

import ensiastjob.model.student.Certification;
import ensiastjob.model.student.Language;

import java.util.List;

public interface LanguageDao {
    public void addLanguage(Language language);
    public void modifyLanguage(Language language);
    public void deleteLanguage(int languageId);
    public List<Language> getAllLanguagesByProfileId(int profileId);
}
