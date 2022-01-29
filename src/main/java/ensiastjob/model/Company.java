package ensiastjob.model;

public class Company {
    private int companyId, memberId;
    private boolean approved;
    private String companyName, ceoName, companyFix, companyTif, description, companySizeWord, emailCompany, pictureCompany;
    private int companySize, founded;

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

    public boolean isApproved() {
        return approved;
    }

    public void setApproved(boolean approved) {
        this.approved = approved;
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

    public int getCompanySize() {
        return companySize;
    }

    public void setCompanySize(int companySize) {
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

    public String getCompanySizeWord() {
        return companySizeWord;
    }

    public void setCompanySizeWord(int companySize) {
        if (companySize == 0) this.companySizeWord = null;
        else if (companySize < 10) this.companySizeWord = "Micro";
        else if (companySize < 50) this.companySizeWord = "Small";
        else if (companySize < 250) this.companySizeWord = "Medium";
        else this.companySizeWord = "Large";
    }

    public String getEmailCompany() {
        return emailCompany;
    }

    public void setEmailCompany(String emailCompany) {
        this.emailCompany = emailCompany;
    }

    public String getPictureCompany() {
        return pictureCompany;
    }

    public void setPictureCompany(String pictureCompany) {
        this.pictureCompany = pictureCompany;
    }
}
