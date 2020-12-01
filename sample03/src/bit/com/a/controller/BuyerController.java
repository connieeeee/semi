package bit.com.a.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.com.a.dto.BuyerDto;
import bit.com.a.dto.MemberDto;
import bit.com.a.service.BuyerService;

@Controller
public class BuyerController {

	@Autowired
	BuyerService service;

	
	@RequestMapping(value = "movePage",method= {RequestMethod.POST, RequestMethod.GET})
	public String movePage(String id, String page, Model model) {
		
		System.out.println("dd= " + id);
		
		if(page.equals("buyer")) {
			model.addAttribute("id", id);
			System.out.println("buyer");
			return "buyer.tiles";
		}else if(page.equals("product")) {
			model.addAttribute("id", id);
			System.out.println("바이어");
			return "product.tiles";
		}else if(page.equals("tradebook")) {
			model.addAttribute("id", id);
			System.out.println("트레이드");
			return "tradebook.tiles";
		}else if(page.equals("orderbook")) {
			model.addAttribute("id", id);
			System.out.println("오더");
			return "orderbook.tiles";
		}else if(page.equals("total")) {
			model.addAttribute("id", id);
			System.out.println("토탈");
			return "total.tiles";
		}else {
			model.addAttribute("id", id);
			return"main.tiles";
		}
	}
	
	@RequestMapping(value = "buyer",method= {RequestMethod.POST, RequestMethod.GET})
	public String buyer(String id, Model model, HttpServletRequest req) throws Exception{
		
		MemberDto user = (MemberDto)req.getSession().getAttribute("login");
		List<BuyerDto> list = service.getBuyerList(id);
		
		model.addAttribute("id", user.getId());
		model.addAttribute("list", list);
		
		return "buyer.tiles";
	}
	
	@RequestMapping(value = "add_buyer",method= {RequestMethod.POST, RequestMethod.GET})
	public void buyer(BuyerDto dto, Model model, HttpServletRequest req) throws Exception{
		
		MemberDto user = (MemberDto)req.getSession().getAttribute("login");
		int n = service.check_buyer(dto);
		
		if(n > 0) {
			service.update_buyer(dto);
		}else {
			service.add_buyer(dto);
		}
	}
	
}
