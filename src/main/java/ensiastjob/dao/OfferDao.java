package ensiastjob.dao;

import ensiastjob.model.Offer;

import java.util.List;

public interface OfferDao {
    int addOffer(Offer offer);

    Offer getOfferById(int offerId);

    List<Offer> getAllOffersByCompany(int companyId);

    List<Offer> getAllOffers(boolean approved);

    int updateOffer(Offer offer);

    int deleteOffer(int offerId);

    int getTotalOffers();

    int getTotalInternships();

    void approveOffer(int offerId);
}
