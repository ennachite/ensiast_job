package ensiastjob.dao;

import ensiastjob.model.Company;
import ensiastjob.model.Member;

import java.util.List;

public interface CompanyDao {
    int addCompany(Company company, Member member);

    int updateCompany(Company company, Member member);

    Company getCompanyById(int id);

    Company getCompanyByMemberId(int memberId);

    Company getCompanyByName(String name);

    String getCompanyProfilePicture(int companyId);

    int getTotalCompanies();

    List<Company> getAllCompanies();
}
