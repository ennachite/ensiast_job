package ensiastjob.dao;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.Member;
import ensiastjob.model.Role;
import org.apache.commons.codec.digest.DigestUtils;

import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class MemberDaoImpl implements MemberDao {
    private final Connection connection;
    private Statement statement;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public MemberDaoImpl() {
        connection = DBConnection.getConnected();
    }

    private String hashPassword(String password) {
        return DigestUtils.md5Hex(password).toUpperCase();
    }

    @Override
    public int verifyLogin(String email, String password) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM member WHERE email=? AND password=?");
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, hashPassword(password));
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
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
    public int addMember(Member member) {
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO member(email, password, role, city, picture, " +
                    "inscription_date) VALUES (?,?,?,?,?,?)");
            preparedStatement.setString(1, member.getEmail());
            preparedStatement.setString(2, hashPassword(member.getPassword()));
            preparedStatement.setString(3, String.valueOf(member.getRole()));
            preparedStatement.setString(4, member.getCity());
            preparedStatement.setString(5, member.getPicture());
            preparedStatement.setString(6, dateFormatter.format(now));

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
    public Member getMemberById(int id) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM member WHERE member_id=?");
            preparedStatement.setInt(1, id);

            return getMember();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Member getMemberByIdForGuest(int id) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM member WHERE member_id=?");
            preparedStatement.setInt(1, id);

            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                Member member = new Member();
                member.setMemberId(resultSet.getInt("member_id"));
                member.setEmail(resultSet.getString("email"));
                member.setRole(Role.valueOf(resultSet.getString("role")));
                member.setCity(resultSet.getString("city"));
                member.setPicture(resultSet.getString("picture"));

                return member;
            } else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Member getMemberByEmail(String email) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM member WHERE email=?");
            preparedStatement.setString(1, email);

            return getMember();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    private Member getMember() throws SQLException {
        resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            Member member = new Member();
            member.setMemberId(resultSet.getInt("member_id"));
            member.setEmail(resultSet.getString("email"));
            member.setPassword(resultSet.getString("password"));
            member.setRole(Role.valueOf(resultSet.getString("role")));
            member.setCity(resultSet.getString("city"));
            member.setPicture(resultSet.getString("picture"));
            member.setInscriptionDate(resultSet.getString("inscription_date"));

            return member;
        } else {
            return null;
        }
    }

    @Override
    public int emailExist(String email) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM member WHERE email=?");
            preparedStatement.setString(1, email);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
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
    public int updatePassword(String email, String currentPassword, String newPassword) {
        try {
            int correctPassword = verifyLogin(email, currentPassword);
            if (correctPassword == 1) {
                preparedStatement = connection.prepareStatement("UPDATE member SET password=? WHERE email=?");
                preparedStatement.setString(1, hashPassword(newPassword));
                preparedStatement.setString(2, email);

                if (preparedStatement.executeUpdate() > 0) {
                    return 1;
                } else {
                    return 0;
                }
            } else if (correctPassword == 0) {
                return 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return -1;
    }

    @Override
    public int addPicture(int memberId, String picturePath) {
        try {
            preparedStatement = connection.prepareStatement("UPDATE member set picture=? WHERE member_id=?");
            preparedStatement.setString(1, picturePath);
            preparedStatement.setInt(2, memberId);

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
    public int updateCity(int memberId, String city) {
        try {
            preparedStatement = connection.prepareStatement("UPDATE member set city=? WHERE member_id=?");
            preparedStatement.setString(1, city);
            preparedStatement.setInt(2, memberId);

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
}
