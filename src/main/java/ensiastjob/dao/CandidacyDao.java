package ensiastjob.dao;

import ensiastjob.model.Candidacy;

import java.util.List;

public interface CandidacyDao {
    int addCandidacy(Candidacy candidacy);

    Candidacy getCandidacyById(int candidacyId);

    List<Candidacy> getCandidaciesByOffer(int offerId);

    void deleteAllCandidaciesByOffer(int offerId);

    List<Candidacy> getCandidaciesByStudent(int studentId);

    void modifyCandidacyStatus(int candidacyId, String candidacyStatus);

    int totalCandidaciesByCompany (int companyId);
}
