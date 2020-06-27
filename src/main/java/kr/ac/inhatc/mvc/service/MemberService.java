package kr.ac.inhatc.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.inhatc.mvc.dao.MemberDao;
import kr.ac.inhatc.mvc.dto.MemberDto;

@Service
public class MemberService {
	@Autowired
	MemberDao memberDao;
	
	public int memberLoginPost(MemberDto md) {
		
		return memberDao.memberLoginPost(md);
	}

	public int idCheck(String id) {		
		return memberDao.idCheck(id);
	}

	public int memberRegisterPost(MemberDto memberDto) {
		return memberDao.memberRegisterPost(memberDto);
		
	}


	
}
