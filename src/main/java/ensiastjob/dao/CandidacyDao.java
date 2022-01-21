package ensiastjob.dao;

import ensiastjob.model.Candidacy;
import ensiastjob.model.Offer;
import ensiastjob.model.Student;

public interface CandidacyDao {
    public int addCandidacy(Candidacy candidacy, int studentId, int offerId);
}
