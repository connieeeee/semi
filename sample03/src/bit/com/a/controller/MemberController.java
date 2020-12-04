package bit.com.a.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import bit.com.a.dto.MemberDto;
import bit.com.a.service.MemberService;

@Controller		// view 이동, service data 
public class MemberController {

	@Autowired	// DI IOC
	MemberService memberService;
	
	@RequestMapping(value = "regi", method=RequestMethod.GET)
	public String regi() {
		return "regi.tiles";
	}
	@RequestMapping(value = "login", method=RequestMethod.GET)
	public String login() {
		return "login.tiles";
	}
	
	@ResponseBody
	@RequestMapping(value="idcheck", method=RequestMethod.POST)
	public String idcheck(String id)throws Exception {
		
		int count = memberService.getId(id);
		
		String msg = "";
		if(count > 0) {
			msg = "NO";
		}else {
			msg = "YES";
		}
		return msg;
	}
	@ResponseBody
	@RequestMapping(value = "regiAf", method=RequestMethod.POST)
	public String regiAf(MemberDto dto)throws Exception {
		
		boolean b = memberService.addmember(dto);
		if(b) {
			return "complete";
		}else {
			return "fail";
		}
	}
	@ResponseBody
	@RequestMapping(value = "loginAf", method= {RequestMethod.POST, RequestMethod.GET})
	public String loginAf(MemberDto dto,Model model, HttpServletRequest req) {
		System.out.println("MemberController loginAf()" + dto.getId() + dto.getPwd());
		
	//	MemberDto login = memberService.login(dto);
		
		MemberDto n = memberService.login(dto);
		MemberDto o = memberService.get(dto.getId());
	/*	
		if(login != null && !login.getId().equals("")) {
			// session
			req.getSession().setAttribute("login", login);
			req.getSession().setMaxInactiveInterval(60 * 60 * 8);
			
			model.addAttribute("id", login.getId());
			
			return "ok";
		}
		else {
			return "no";
		}	
	*/
		
		return o + "";
	}
	
	@RequestMapping(value = "main",method= {RequestMethod.POST, RequestMethod.GET})
	public String main(Model model, HttpServletRequest req) throws Exception{
	
		req.getSession().setAttribute("login", "aaa");
		
		String user = (String)req.getSession().getAttribute("login");
		
		model.addAttribute("id", user);
		return "main.tiles";
	}
	
	
}











