package ensiastjob.model;

public class Admin {
    int adminId, memberId;
    String adminName, adminGender, adminCIN, adminBirthdate, adminPhone, emailAdmin, pictureAdmin,cityAdmin;

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminGender() {
        return adminGender;
    }

    public void setAdminGender(String adminGender) {
        this.adminGender = adminGender;
    }

    public String getAdminCIN() {
        return adminCIN;
    }

    public void setAdminCIN(String adminCIN) {
        this.adminCIN = adminCIN;
    }

    public String getAdminBirthdate() {
        return adminBirthdate;
    }

    public void setAdminBirthdate(String adminBirthdate) {
        this.adminBirthdate = adminBirthdate;
    }

    public String getAdminPhone() {
        return adminPhone;
    }

    public void setAdminPhone(String adminPhone) {
        this.adminPhone = adminPhone;
    }

    public String getEmailAdmin() {
        return emailAdmin;
    }

    public void setEmailAdmin(String emailAdmin) {
        this.emailAdmin = emailAdmin;
    }

    public String getPictureAdmin() {
        return pictureAdmin;
    }

    public void setPictureAdmin(String pictureAdmin) {
        this.pictureAdmin = pictureAdmin;
    }

    public String getCityAdmin() {
        return cityAdmin;
    }

    public void setCityAdmin(String cityAdmin) {
        this.cityAdmin = cityAdmin;
    }
}
