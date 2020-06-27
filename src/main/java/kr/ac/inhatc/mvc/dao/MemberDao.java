package kr.ac.inhatc.mvc.dao;

import kr.ac.inhatc.mvc.dto.MemberDto;

public interface MemberDao {

	public int memberLoginPost(MemberDto md);

	public int idCheck(String id);

	public int memberRegisterPost(MemberDto memberDto);

}
