package ensiastjob.dao;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.Member;
import ensiastjob.model.Student;

import java.sql.*;

public class StudentDaoImpl implements StudentDao{
    private final Connection connection;
    private Statement statement;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public StudentDaoImpl() {
        connection = DBConnection.getConnected();
    }

    @Override
    public int addStudent(Student student, Member member) {
        //Implementing Member here to get member_id
        MemberDaoImpl memberDao = new MemberDaoImpl();
        memberDao.addMember(member);
        student.setMemberId(memberDao.getMemberByEmail(member.getEmail()).getMemberId());
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO student(member_id, first_name, last_name, cne, " +
                    "cin, birthdate, gender, specialty, promo, year_studies, phone) Values (?,?,?,?,?,?,?,?,?,?,?)");
            preparedStatement.setInt(1, student.getMemberId());
            preparedStatement.setString(2, student.getFirstName());
            preparedStatement.setString(3, student.getLastName());
            preparedStatement.setString(4, student.getCNE());
            preparedStatement.setString(5, student.getCIN());
            preparedStatement.setString(6, student.getBirthdate());
            preparedStatement.setString(7, student.getGender());
            preparedStatement.setString(8, student.getSpecialty());
            preparedStatement.setInt(9, student.getPromo());
            preparedStatement.setString(10, student.getYearStudies());
            preparedStatement.setString(11, student.getPhone());

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
    public Student getStudentById(int id) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM student WHERE student_id=?");
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                Student student = new Student();
                student.setStudentId(resultSet.getInt("student_id"));
                student.setMemberId(resultSet.getInt("member_id"));
                student.setFirstName(resultSet.getString("first_name"));
                student.setLastName(resultSet.getString("last_name"));
                student.setCNE(resultSet.getString("cne"));
                student.setCIN(resultSet.getString("cin"));
                student.setBirthdate(resultSet.getString("birthdate"));
                student.setGender(resultSet.getString("gender"));
                student.setSpecialty(resultSet.getString("specialty"));
                student.setPromo(resultSet.getInt("promo"));
                student.setYearStudies(resultSet.getString("year_studies"));
                student.setPhone(resultSet.getString("phone"));

                return student;
            } else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
