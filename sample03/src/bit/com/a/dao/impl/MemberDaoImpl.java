package bit.com.a.dao.impl;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.MemberDao;
import bit.com.a.dto.MemberDto;

@Repository	// = 저장소
public class MemberDaoImpl implements MemberDao {

	@Autowired		// DI
	SqlSession sqlSession;		// SqlSession sqlSession = new SqlSessiontemplate();
	
	String namespace = "Member.";
	
	
	@Override
	public int getId(String id) {		
		return sqlSession.selectOne(namespace + "getId", id);
	}
	
	@Override
	public boolean addmember(MemberDto mem) {		
		int n = sqlSession.insert(namespace + "addmember", mem);		
		return n>0?true:false;
	}

	@Override
	public MemberDto login(MemberDto dto) {
		MemberDto mem = sqlSession.selectOne(namespace + "login", dto);
		return mem;
	}
	

	
}









