package bit.com.a.service;

import java.util.List;

import bit.com.a.dto.ProductDto;

public interface ProductService {

	List<ProductDto> getProductList(String id);
}
