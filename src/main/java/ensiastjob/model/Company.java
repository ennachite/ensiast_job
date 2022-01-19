package ensiastjob.model;

public class Company {
    private int companyId, memberId;
    private String companyName, ceoName, companySize, companyFix, companyTif, description;
    private int founded;

    public int getCompanyId() {
        return companyId;
    }

    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }

    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCeoName() {
        return ceoName;
    }

    public void setCeoName(String ceoName) {
        this.ceoName = ceoName;
    }

    public String getCompanySize() {
        return companySize;
    }

    public void setCompanySize(String companySize) {
        this.companySize = companySize;
    }

    public String getCompanyFix() {
        return companyFix;
    }

    public void setCompanyFix(String companyFix) {
        this.companyFix = companyFix;
    }

    public String getCompanyTif() {
        return companyTif;
    }

    public void setCompanyTif(String companyTif) {
        this.companyTif = companyTif;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getFounded() {
        return founded;
    }

    public void setFounded(int founded) {
        this.founded = founded;
    }
}
