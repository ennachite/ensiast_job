package ensiastjob.dao;

import ensiastjob.extra.DBConnection;
import ensiastjob.model.Member;
import ensiastjob.model.Role;
import ensiastjob.model.Student;
import ensiastjob.model.StudentProfile;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDaoImpl implements StudentDao {
    private final Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public StudentDaoImpl() {
        connection = DBConnection.getConnected();
    }

    @Override
    public int addStudent(Student student, Member member) {
        //make member as a student
        member.setRole(Role.STUDENT);
        //Implementing Member here to get member_id
        MemberDaoImpl memberDao = new MemberDaoImpl();
        memberDao.addMember(member);
        int memberId = memberDao.getMemberByEmail(member.getEmail()).getMemberId();
        student.setMemberId(memberId);
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO student(member_id, first_name, last_name, cne, " +
                    "cin, birthdate, gender, specialty, promo, year_studies, phone) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
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
                //after creating Student account we must create student profile that's need studentId
                createStudentProfile(memberId);
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
    public int updateStudent(Student student, Member member) {
        try {
            preparedStatement = connection.prepareStatement("UPDATE student SET first_name=?, last_name=?, cin=?, cne=?, " +
                    "gender=?, birthdate=?, phone=?, promo=?,year_studies=?,specialty=? WHERE student_id=?");
            preparedStatement.setString(1, student.getFirstName());
            preparedStatement.setString(2, student.getLastName());
            preparedStatement.setString(3, student.getCIN());
            preparedStatement.setString(4, student.getCNE());
            preparedStatement.setString(5, student.getGender());
            preparedStatement.setString(6, student.getBirthdate());
            preparedStatement.setString(7, student.getPhone());
            preparedStatement.setInt(8, student.getPromo());
            preparedStatement.setString(9, student.getYearStudies());
            preparedStatement.setString(10, student.getSpecialty());
            preparedStatement.setInt(11, student.getStudentId());

            if (preparedStatement.executeUpdate() > 0) {
                MemberDaoImpl memberDao = new MemberDaoImpl();
                memberDao.updateCity(member.getMemberId(), member.getCity());
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
            return getStudent(preparedStatement ,id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Student getStudentByMemberId(int memberId) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM student WHERE member_id=?");
            return getStudent(preparedStatement ,memberId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    private void createStudentProfile(int memberId) {
        StudentProfile studentProfile = new StudentProfile();
        studentProfile.setActive(true);
        //getting studentId by using memberId
        int studentId = getStudentByMemberId(memberId).getStudentId();
        StudentProfileDaoImpl studentProfileDao = new StudentProfileDaoImpl();
        studentProfileDao.addStudentProfile(studentProfile, studentId);
    }

    @Override
    public int getTotalStudents() {
        try {
            preparedStatement = connection.prepareStatement("SELECT count(*) as total from student");
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
    public List<Student> getAllStudents() {
        List<Student> students = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM student ");
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Student student = getStudentAttributes();

                MemberDaoImpl memberDao = new MemberDaoImpl();
                Member member = memberDao.getMemberById(student.getMemberId());
                student.setEmailStudent(member.getEmail());
                student.setPicture(member.getPicture());
                student.setCityStudent(member.getCity());
                students.add(student);

            }
            return students;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    private Student getStudent(PreparedStatement preparedStatement ,int id) throws SQLException {
        preparedStatement.setInt(1, id);
        resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            return getStudentAttributes();
        } else {
            return null;
        }
    }

    private Student getStudentAttributes() throws SQLException {
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
    }
}
