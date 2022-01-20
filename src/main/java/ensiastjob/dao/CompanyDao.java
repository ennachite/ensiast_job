package ensiastjob.dao;

import ensiastjob.model.Company;
import ensiastjob.model.Member;
import ensiastjob.model.Student;

public interface CompanyDao {
    public int addCompany(Company company, Member member);
    public Company getCompanyById (int id);
    public Company getCompanyByMemberId(int memberId);
    public Company getCompanyByName(String name);
}
