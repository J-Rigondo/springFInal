package kr.ac.inhatc.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.inhatc.mvc.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao{
	@Autowired
	protected SqlSessionTemplate sqlSession;
	
	@Override
	public int memberLoginPost(MemberDto md) {
		
		return sqlSession.selectOne("memberLoginPost",md);
	}

	@Override
	public int idCheck(String id) {
		
		return sqlSession.selectOne("idCheck", id);
	}

	@Override
	public int memberRegisterPost(MemberDto memberDto) {		
		return sqlSession.insert("memberRegisterPost", memberDto);
	}

}
