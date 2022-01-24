package ensiastjob.dao.student;

import ensiastjob.model.student.Certification;

public interface CertificationDao {
    public void addCertification(Certification certification);
    public void modifyCertification(Certification certification);
    public void deleteCertification(int certificationId);
}
