package ensiastjob.dao;

import ensiastjob.model.Member;

public interface MemberDao {
    int verifyLogin(String email, String password);

    int addMember(Member member);

    Member getMemberById(int id);

    Member getMemberByIdForGuest(int id);

    Member getMemberByEmail(String email);

    int emailExist(String email);

    int updatePassword(String email, String currentPassword, String newPassword);

    int addPicture(int memberId, String picturePath);

    int updateCity(int memberId, String city);

    int getTotalMembers();

    int deleteMember(int memberId);
}
