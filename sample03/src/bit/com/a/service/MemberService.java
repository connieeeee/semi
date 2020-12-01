package bit.com.a.service;

import java.util.List;

import bit.com.a.dto.MemberDto;

public interface MemberService {

	List<MemberDto> allMember();
	
	int getId(String id);
	boolean addmember(MemberDto mem);
	MemberDto login(MemberDto dto);
}
