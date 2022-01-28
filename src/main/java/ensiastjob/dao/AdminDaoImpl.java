package ensiastjob.dao;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.Admin;
import ensiastjob.model.Member;
import ensiastjob.model.Role;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdminDaoImpl implements AdminDao {
    private final Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public AdminDaoImpl() {
        connection = DBConnection.getConnected();
    }

    @Override
    public int addAdmin(Admin admin, Member member) {
        //make member as a ADMIN
        member.setRole(Role.ADMIN);
        //Implementing Member here to get member_id
        MemberDaoImpl memberDao = new MemberDaoImpl();
        memberDao.addMember(member);
        int memberId = memberDao.getMemberByEmail(member.getEmail()).getMemberId();
        admin.setMemberId(memberId);
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO admin(member_id, name, gender, cin, birthdate, " +
                    "phone) VALUES (?,?,?,?,?,?)");
            preparedStatement.setInt(1, memberId);
            preparedStatement.setString(2, admin.getAdminName());
            preparedStatement.setString(3, admin.getAdminGender());
            preparedStatement.setString(4, admin.getAdminCIN());
            preparedStatement.setString(5, admin.getAdminBirthdate());
            preparedStatement.setString(6, admin.getAdminPhone());

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
    public int updateAdmin(Admin admin) {
        try {
            preparedStatement = connection.prepareStatement("UPDATE admin SET name=?, gender=?, cin=?, birthdate=?, phone=? WHERE admin_id=?");
            preparedStatement.setString(1, admin.getAdminName());
            preparedStatement.setString(2, admin.getAdminGender());
            preparedStatement.setString(3, admin.getAdminCIN());
            preparedStatement.setString(4, admin.getAdminBirthdate());
            preparedStatement.setString(5, admin.getAdminPhone());
            preparedStatement.setInt(6, admin.getAdminId());

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
    public Admin getAdminById(int id) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM admin WHERE admin_id=?");
            return getAdmin(preparedStatement ,id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public Admin getAdminByMemberId(int memberId) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM admin WHERE member_id=?");
            return getAdmin(preparedStatement ,memberId);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Admin> getAllAdmins() {
        List<Admin> admins = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM admin ");
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Admin admin = getAdminAttributes();

                //We implement Member to get his picture
                MemberDaoImpl memberDao = new MemberDaoImpl();
                Member member = memberDao.getMemberById(admin.getMemberId());
                admin.setEmailAdmin(member.getEmail());
                admin.setCityAdmin(member.getCity());
                admin.setPictureAdmin(member.getPicture());
                admins.add(admin);
            }
            return admins;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    private Admin getAdmin(PreparedStatement preparedStatement ,int memberId) throws SQLException {
        preparedStatement.setInt(1, memberId);
        resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            return getAdminAttributes();
        } else {
            return null;
        }
    }

    private Admin getAdminAttributes() throws SQLException {
        Admin admin = new Admin();
        admin.setAdminId(resultSet.getInt("admin_id"));
        admin.setMemberId(resultSet.getInt("member_id"));
        admin.setAdminName(resultSet.getString("name"));
        admin.setAdminGender(resultSet.getString("gender"));
        admin.setAdminCIN(resultSet.getString("cin"));
        admin.setAdminBirthdate(resultSet.getString("birthdate"));
        admin.setAdminPhone(resultSet.getString("phone"));
        return admin;
    }
}
