package ensiastjob.dao;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.Company;
import ensiastjob.model.Member;
import ensiastjob.model.Role;

import java.sql.*;

public class CompanyDaoImpl implements CompanyDao{
    private final Connection connection;
    private Statement statement;
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
            preparedStatement.setString(4, company.getCompanySize());
            preparedStatement.setString(5, company.getCompanyFix());
            preparedStatement.setString(6, company.getCompanyTif());
            preparedStatement.setInt(7, company.getFounded());
            preparedStatement.setString(8, company.getDescription());

            if (preparedStatement.executeUpdate() > 0 ) {
                return 1;
            } else {
                return 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
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

    private Company getCompany() throws SQLException {
        resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            Company company = new Company();
            company.setCompanyId(resultSet.getInt("company_id"));
            company.setMemberId(resultSet.getInt("member_id"));
            company.setCompanyName(resultSet.getString("company_name"));
            company.setCeoName(resultSet.getString("ceo_name"));
            company.setCompanyFix(resultSet.getString("company_fix"));
            company.setCompanyTif(resultSet.getString("company_tif"));
            company.setFounded(resultSet.getInt("founded"));
            company.setDescription(resultSet.getString("description"));

            return company;
        } else {
            return null;
        }
    }
}
