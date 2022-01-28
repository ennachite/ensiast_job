package ensiastjob.dao;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.Company;
import ensiastjob.model.Member;
import ensiastjob.model.Role;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CompanyDaoImpl implements CompanyDao {
    private final Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public CompanyDaoImpl() {
        connection = DBConnection.getConnected();
    }

    @Override
    public int addCompany(Company company, Member member) {
        //make member as a company
        member.setRole(Role.COMPANY);
        //Implementing Member here to get member_id
        MemberDaoImpl memberDao = new MemberDaoImpl();
        memberDao.addMember(member);
        company.setMemberId(memberDao.getMemberByEmail(member.getEmail()).getMemberId());
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO company(member_id, company_name, ceo_name, " +
                    "company_size, company_fix, company_tif, founded, description) VALUES (?,?,?,?,?,?,?,?)");
            preparedStatement.setInt(1, company.getMemberId());
            preparedStatement.setString(2, company.getCompanyName());
            preparedStatement.setString(3, company.getCeoName());
            preparedStatement.setInt(4, company.getCompanySize());
            preparedStatement.setString(5, company.getCompanyFix());
            preparedStatement.setString(6, company.getCompanyTif());
            preparedStatement.setInt(7, company.getFounded());
            preparedStatement.setString(8, company.getDescription());

            if (preparedStatement.executeUpdate() > 0) {
                return 1;
            } else {
                return 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int updateCompany(Company company, Member member) {
        try {
            preparedStatement = connection.prepareStatement("UPDATE member, company SET member.city=?, company.company_name=?, " +
                    "company.ceo_name=?, company.company_tif=?, company.company_fix=?, company.company_size=?, company.founded=?, " +
                    "company.description=? WHERE member.member_id=? AND company.company_id=?");
            preparedStatement.setString(1, member.getCity());
            preparedStatement.setString(2, company.getCompanyName());
            preparedStatement.setString(3, company.getCeoName());
            preparedStatement.setString(4, company.getCompanyTif());
            preparedStatement.setString(5, company.getCompanyFix());
            preparedStatement.setInt(6, company.getCompanySize());
            preparedStatement.setInt(7, company.getFounded());
            preparedStatement.setString(8, company.getDescription());
            preparedStatement.setInt(9, member.getMemberId());
            preparedStatement.setInt(10, company.getCompanyId());

            if (preparedStatement.executeUpdate() > 0) {
                return 1;
            } else {
                return 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return -1;
    }

    @Override
    public Company getCompanyById(int id) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM company WHERE company_id=?");
            preparedStatement.setInt(1, id);
            return getCompany();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Company getCompanyByMemberId(int memberId) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM company WHERE member_id=?");
            preparedStatement.setInt(1, memberId);
            return getCompany();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Company getCompanyByName(String name) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM company WHERE company_name=?");
            preparedStatement.setString(1, name);
            return getCompany();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String getCompanyProfilePicture(int companyId) {
        Company company = getCompanyById(companyId);
        try {
            preparedStatement = connection.prepareStatement("SELECT picture FROM member WHERE member_id=?");
            preparedStatement.setInt(1, company.getMemberId());
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                return resultSet.getString("picture");
            } else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public int getTotalCompanies() {
        try {
            preparedStatement = connection.prepareStatement("SELECT count(*) as total from company");
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public List<Company> getAllCompanies() {
        List<Company> companies = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM company ");
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Company company = getCompanyAttributes();

                //We implement Member to get his picture
                MemberDaoImpl memberDao = new MemberDaoImpl();
                Member member = memberDao.getMemberById(company.getMemberId());
                company.setEmailCompany(member.getEmail());
                company.setPictureCompany(member.getPicture());
                companies.add(company);
            }
            return companies;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    private Company getCompany() throws SQLException {
        resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            return getCompanyAttributes();
        } else {
            return null;
        }
    }

    private Company getCompanyAttributes() throws SQLException {
        Company company = new Company();
        company.setCompanyId(resultSet.getInt("company_id"));
        company.setMemberId(resultSet.getInt("member_id"));
        company.setCompanyName(resultSet.getString("company_name"));
        company.setCeoName(resultSet.getString("ceo_name"));
        company.setCompanyFix(resultSet.getString("company_fix"));
        company.setCompanySize(resultSet.getInt("company_size"));
        company.setCompanySizeWord(resultSet.getInt("company_size"));
        company.setCompanyTif(resultSet.getString("company_tif"));
        company.setFounded(resultSet.getInt("founded"));
        company.setDescription(resultSet.getString("description"));
        return company;
    }
}
