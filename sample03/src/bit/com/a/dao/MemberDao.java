package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.MemberDto;

public interface MemberDao {

	int getId(String id);
	boolean addmember(MemberDto mem);
//	MemberDto login(MemberDto dto);
	MemberDto login(MemberDto dto);
	
	MemberDto get (String id);
}
