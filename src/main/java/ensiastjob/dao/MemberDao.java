package ensiastjob.dao;

import ensiastjob.model.Member;

public interface MemberDao {
    public int verifyLogin(String email, String password);
    public int addMember(Member member);
    public Member getMemberById(int id);
    public Member getMemberByIdForGuest(int id);
    public Member getMemberByEmail(String email);
    public int emailExist(String email);
    public int updatePassword(String email, String currentPassword, String newPassword);
    public int addPicture(int memberId, String picturePath);
    public int updateCity(int memberId, String city);
    public int getTotalMembers();
}
