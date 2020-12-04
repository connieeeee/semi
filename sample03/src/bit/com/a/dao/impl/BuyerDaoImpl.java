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
	public List<BuyerDto> getBuyerList(String seller_id) {
		List<BuyerDto> list = session.selectList(ns + "getBuyerList", seller_id);
		return list;
	}

	@Override
	public int check_buyer(BuyerDto dto) {
		return session.selectOne(ns + "check_buyer", dto);
	}

	@Override
	public void add_buyer(BuyerDto dto) {
		session.insert(ns + "add_buyer", dto);
	}

	@Override
	public void update_buyer(BuyerDto dto) {
		System.out.println("daoimpl: " + dto.getBuyer_address1());
		session.update(ns + "update_buyer", dto);
	}

	@Override
	public BuyerDto get_buyer_inform(int buyer_seq) {
		return session.selectOne(ns + "get_buyer_inform", buyer_seq);
	}

}
