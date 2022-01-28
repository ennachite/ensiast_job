package ensiastjob.dao;

import ensiastjob.model.Admin;
import ensiastjob.model.Member;

import java.util.List;

public interface AdminDao {
    int addAdmin(Admin admin, Member member);

    int updateAdmin(Admin admin);

    Admin getAdminById(int id);

    Admin getAdminByMemberId(int memberId);

    List<Admin> getAllAdmins();
}
