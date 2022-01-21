package ensiastjob.model;

public class Offer {
    private int offerId, companyId;
    private String offerName, offerType, offerLocation, offerDomain, jobType, offerDescription;
    private int offerSalary;

    public int getOfferId() {
        return offerId;
    }

    public void setOfferId(int offerId) {
        this.offerId = offerId;
    }

    public int getCompanyId() {
        return companyId;
    }

    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }

    public String getOfferName() {
        return offerName;
    }

    public void setOfferName(String offerName) {
        this.offerName = offerName;
    }

    public String getOfferType() {
        return offerType;
    }

    public void setOfferType(String offerType) {
        this.offerType = offerType;
    }

    public String getOfferLocation() {
        return offerLocation;
    }

    public void setOfferLocation(String offerLocation) {
        this.offerLocation = offerLocation;
    }

    public String getOfferDomain() {
        return offerDomain;
    }

    public void setOfferDomain(String offerDomain) {
        this.offerDomain = offerDomain;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

    public String getOfferDescription() {
        return offerDescription;
    }

    public void setOfferDescription(String offerDescription) {
        this.offerDescription = offerDescription;
    }

    public int getOfferSalary() {
        return offerSalary;
    }

    public void setOfferSalary(int offerSalary) {
        this.offerSalary = offerSalary;
    }
}
