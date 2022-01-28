package ensiastjob.dao.student;

import ensiastjob.model.student.Certification;

import java.util.List;

public interface CertificationDao {
    void addCertification(Certification certification);

    void modifyCertification(Certification certification);

    void deleteCertification(int certificationId);

    List<Certification> getAllCertificationsByProfileId(int profileId);
}
