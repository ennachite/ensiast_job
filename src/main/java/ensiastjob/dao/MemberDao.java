package ensiastjob.dao;

import ensiastjob.model.Member;

public interface MemberDao {
    public int verifyLogin(String email, String password);
    public int addMember(Member member);
    public Member getMemberById(int id);
    public Member getMemberByEmail(String email);
    public int emailExist(String email);
}
