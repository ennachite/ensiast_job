package ensiastjob.dao;

import ensiastjob.model.Offer;

import java.util.List;

public interface OfferDao {
    public int addOffer(Offer offer);
    public Offer getOfferById(int offerId);
    public List<Offer> getAllOffersByCompany(int companyId);
    public List<Offer> getAllOffers();
    public int updateOffer(Offer offer);
    public int deleteOffer(int offerId);
    public int getTotalOffers();
    public int getTotalInternships();
}
