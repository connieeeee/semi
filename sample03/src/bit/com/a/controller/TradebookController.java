package bit.com.a.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.com.a.service.TradebookService;

@Controller
public class TradebookController {

	@Autowired
	TradebookService service;
	
	@RequestMapping(value = "tradebook",method= {RequestMethod.POST, RequestMethod.GET})
	public String tradebook(String id, Model model, HttpServletRequest req) throws Exception{
		
		String user = (String)req.getSession().getAttribute("login");
		
//		MemberDto user = (MemberDto)req.getSession().getAttribute("login");
	//	List<BuyerDto> list = service.getBuyerList(user);

		model.addAttribute("id", user);
	//	model.addAttribute("list", list);
		
		return "tradebook.tiles";
	}
	
	
}
