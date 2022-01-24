package ensiastjob.model.student;

public class Education {
    private int educationId, profileId;
    private String schoolName, degree, fieldStudies, startDate, endDate, eductionDescription;

    public int getEducationId() {
        return educationId;
    }

    public void setEducationId(int educationId) {
        this.educationId = educationId;
    }

    public int getProfileId() {
        return profileId;
    }

    public void setProfileId(int profileId) {
        this.profileId = profileId;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getFieldStudies() {
        return fieldStudies;
    }

    public void setFieldStudies(String fieldStudies) {
        this.fieldStudies = fieldStudies;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getEductionDescription() {
        return eductionDescription;
    }

    public void setEductionDescription(String eductionDescription) {
        this.eductionDescription = eductionDescription;
    }
}
