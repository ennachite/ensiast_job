package ensiastjob.dao;

import ensiastjob.model.Offer;

import java.util.List;

public interface OfferDao {
    int addOffer(Offer offer);

    Offer getOfferById(int offerId);

    List<Offer> getAllOffersByCompany(int companyId);

    List<Offer> getAllOffers(boolean approved);

    void updateOffer(Offer offer);

    void deleteOffer(int offerId);

    int getTotalOffers();
    int getTotalOffersByCompany(int companyId);

    int getTotalInternships();
    int getTotalInternshipsByCompany(int companyID);

    void approveOffer(int offerId);
}
