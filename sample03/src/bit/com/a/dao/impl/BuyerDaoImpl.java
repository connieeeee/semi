package bit.com.a.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.BuyerDao;
import bit.com.a.dto.BuyerDto;
import bit.com.a.dto.MemberDto;
@Repository
public class BuyerDaoImpl implements BuyerDao {
	
	@Autowired
	SqlSession session;
	
	String ns = "Buyer.";
	
	@Override
	public List<BuyerDto> getBuyerList(String buyer_id) {
		List<BuyerDto> list = session.selectList(ns + "getBuyerList", buyer_id);
		return list;
	}

	@Override
	public int check_buyer(BuyerDto dto) {
		return session.selectOne(ns + "check_buyer", dto);
	}

	@Override
	public boolean add_buyer(BuyerDto dto) {
		int count = session.insert(ns + "add_buyer", dto);
		return count > 0 ? true:false;
	}

	@Override
	public boolean update_buyer(BuyerDto dto) {
		int count = session.update(ns + "update_buyer", dto);
		return count > 0 ? true:false;
	}

	@Override
	public BuyerDto get_buyer_inform(BuyerDto dto) {
		return session.selectOne(ns + "get_buyer", dto);
	}

}
