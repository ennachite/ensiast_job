package ensiastjob.dao;

import ensiastjob.model.Candidacy;

import java.util.List;

public interface CandidacyDao {
    public int addCandidacy(Candidacy candidacy, int studentId, int offerId);
    public Candidacy getCandidacyById(int candidacyId);
    public List<Candidacy> getCandidaciesByOffer(int offerId);
    public List<Candidacy> getCandidaciesByStudent(int studentId);
    public void modifyCandidacyStatus(int candidacyId, String candidacyStatus);
}
