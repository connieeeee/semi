package bit.com.a.service;

import java.util.HashMap;
import java.util.List;

import bit.com.a.dto.ProductDto;

public interface ProductService {

	List<ProductDto> getProductList(String id);
	
	List<ProductDto> get_product_sort_list(String id);
	List<ProductDto> get_product_unit_cate(String id);

	void add_product(ProductDto dto);
	void update_product_inform(ProductDto dto);	
	void delete_product(int product_seq);
	
	ProductDto get_product_inform (int product_seq);
}
