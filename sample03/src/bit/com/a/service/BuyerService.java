package bit.com.a.service;

import java.util.List;

import bit.com.a.dto.BuyerDto;

public interface BuyerService {

	List<BuyerDto> getBuyerList(String seller_id);
	int check_buyer (BuyerDto dto);
	void add_buyer(BuyerDto dto);
	void update_buyer(BuyerDto dto);
	BuyerDto get_buyer_inform(int buyer_seq);
}
