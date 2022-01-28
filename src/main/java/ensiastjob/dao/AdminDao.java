package ensiastjob.dao;

import ensiastjob.model.Admin;
import ensiastjob.model.Company;
import ensiastjob.model.Member;

import java.util.List;

public interface AdminDao {
    public int addAdmin(Admin admin, Member member);
    public int updateAdmin(Admin admin);
    public Admin getAdminById(int id);
    public Admin getAdminByMemberId(int memberId);
    public List<Admin> getAllAdmins();
}
