package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.BuyerDto;

public interface BuyerDao {

	List<BuyerDto> getBuyerList(String buyer_id);
	int check_buyer (BuyerDto dto);
	boolean add_buyer(BuyerDto dto);
	boolean update_buyer(BuyerDto dto);
	BuyerDto get_buyer_inform(BuyerDto dto);
}
