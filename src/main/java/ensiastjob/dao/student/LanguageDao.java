package ensiastjob.dao.student;

import ensiastjob.model.student.Language;

public interface LanguageDao {
    public void addLanguage(Language language);
    public void modifyLanguage(Language language);
    public void deleteLanguage(int languageId);
}
