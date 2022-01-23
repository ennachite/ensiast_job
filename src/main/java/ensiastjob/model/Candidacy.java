package ensiastjob.model;

public class Candidacy {
    private int candidacyId, studentId, offerId;
    private String studentName, studentCV, githubUsername, dateCandidacy, motivation;
    private CandidacyStatus candidacyStatus;

    public int getCandidacyId() {
        return candidacyId;
    }

    public void setCandidacyId(int candidacyId) {
        this.candidacyId = candidacyId;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public int getOfferId() {
        return offerId;
    }

    public void setOfferId(int offerId) {
        this.offerId = offerId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getStudentCV() {
        return studentCV;
    }

    public void setStudentCV(String studentCV) {
        this.studentCV = studentCV;
    }

    public String getGithubUsername() {
        return githubUsername;
    }

    public void setGithubUsername(String githubUsername) {
        this.githubUsername = githubUsername;
    }

    public String getDateCandidacy() {
        return dateCandidacy;
    }

    public void setDateCandidacy(String dateCandidacy) {
        this.dateCandidacy = dateCandidacy;
    }

    public String getMotivation() {
        return motivation;
    }

    public void setMotivation(String motivation) {
        this.motivation = motivation;
    }

    public CandidacyStatus getCandidacyStatus() {
        return candidacyStatus;
    }

    public void setCandidacyStatus(CandidacyStatus candidacyStatus) {
        this.candidacyStatus = candidacyStatus;
    }
}
