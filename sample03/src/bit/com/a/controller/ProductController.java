package bit.com.a.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import bit.com.a.dto.ProductDto;
import bit.com.a.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService service;
	
	@RequestMapping(value = "product",method= {RequestMethod.POST, RequestMethod.GET})
	public String product(String id, Model model, HttpServletRequest req) throws Exception{
		
		String user = (String)req.getSession().getAttribute("login");
		
//		MemberDto user = (MemberDto)req.getSession().getAttribute("login");
		List<ProductDto> list = service.getProductList(user);
		List<ProductDto> listSort = service.get_product_sort_list(user);
		List<ProductDto> listUnit = service.get_product_unit_cate(user);

		model.addAttribute("id", user);
		model.addAttribute("list", list);
		model.addAttribute("listSort", listSort);
		model.addAttribute("listUnit", listUnit);
		
		return "product.tiles";
	}
	
	@RequestMapping(value = "add_product",method= {RequestMethod.POST, RequestMethod.GET})
	public String add_product(ProductDto dto, HttpServletRequest req) throws Exception{
		String user = (String)req.getSession().getAttribute("login");
		
		dto.setSeller_id(user);
		
		if(dto.getProduct_seq() == 0) {
			service.add_product(dto);
		}else {
			service.update_product_inform(dto);
		}
		
		return "redirect:/product";
	}
	
	@ResponseBody
	@RequestMapping(value = "show_inform_product",method= {RequestMethod.POST, RequestMethod.GET})
	public ProductDto show_inform_product(int product_seq, HttpServletRequest req) throws Exception{
		
		ProductDto dto = service.get_product_inform(product_seq);
		
		return dto;
	}
	
	@RequestMapping(value = "delete_product",method= {RequestMethod.POST, RequestMethod.GET})
	public String delete_product(int product_seq, HttpServletRequest req) throws Exception{
		service.delete_product(product_seq);
		return "redirect:/product";
	}
}