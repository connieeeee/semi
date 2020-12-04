package bit.com.a.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.BuyerDao;
import bit.com.a.dto.BuyerDto;
import bit.com.a.service.BuyerService;
@Service
public class BuyerServiceImpl implements BuyerService {

	@Autowired
	BuyerDao dao;
	
	@Override
	public List<BuyerDto> getBuyerList(String seller_id) {
		return dao.getBuyerList(seller_id);
	}

	@Override
	public int check_buyer(BuyerDto dto) {
		return dao.check_buyer(dto);
	}

	@Override
	public void add_buyer(BuyerDto dto) {
		dao.add_buyer(dto);
	}

	@Override
	public void update_buyer(BuyerDto dto) {
		System.out.println("seviceimpl: " + dto.getBuyer_address1());
		dao.update_buyer(dto);
	}

	@Override
	public BuyerDto get_buyer_inform(int buyer_seq) {
		return dao.get_buyer_inform(buyer_seq);
	}

}
