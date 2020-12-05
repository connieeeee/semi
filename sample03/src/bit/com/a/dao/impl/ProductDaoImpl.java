package bit.com.a.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import bit.com.a.dao.ProductDao;
import bit.com.a.dto.ProductDto;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	SqlSession session;
	
	String ns = "Product.";
	
	@Override
	public List<ProductDto> getProductList(String id) {
		return session.selectList(ns + "getProductList", id);
	}

	@Override
	public List<ProductDto> get_product_sort_list(String id) {
		return  session.selectList(ns + "get_product_sort_list", id);
	}

	@Override
	public List<ProductDto> get_product_unit_cate(String id) {
		return session.selectList(ns + "get_product_unit_cate", id);
	}

	@Override
	public void add_product(ProductDto dto) {
		session.insert(ns + "add_product", dto);
	}

	@Override
	public ProductDto get_product_inform(int product_seq) {
		return session.selectOne(ns + "get_product_inform", product_seq);
	}

	@Override
	public void update_product_inform(ProductDto dto) {
		session.update(ns + "update_product_inform", dto);
		
	}

	@Override
	public void delete_product(int product_seq) {
		session.delete(ns + "delete_product", product_seq);
	}

}
