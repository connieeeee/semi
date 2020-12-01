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
	public List<BuyerDto> getBuyerList(String buyer_id) {
		return dao.getBuyerList(buyer_id);
	}

	@Override
	public int check_buyer(BuyerDto dto) {
		return dao.check_buyer(dto);
	}

	@Override
	public boolean add_buyer(BuyerDto dto) {
		return dao.add_buyer(dto);
	}

	@Override
	public boolean update_buyer(BuyerDto dto) {
		return dao.update_buyer(dto);
	}

	@Override
	public BuyerDto get_buyer_inform(BuyerDto dto) {
		return dao.get_buyer_inform(dto);
	}

}
