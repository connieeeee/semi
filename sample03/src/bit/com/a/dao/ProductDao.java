package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.ProductDto;

public interface ProductDao {

	List<ProductDto> getProductList(String id);
}
