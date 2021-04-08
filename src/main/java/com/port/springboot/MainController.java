package com.port.springboot;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.port.springboot.dao.IUserDao;
import com.port.springboot.dto.UserDto;

@Controller
public class MainController 
{
	
	@Autowired
	private IUserDao UserDao;
	
	@RequestMapping("/")
	public String root() throws Exception {
		return "redirect:main";
	}
	
	@RequestMapping("/main")
	public String admin_member_list(Model model)
	{
		return "main/main";
	}
	
	//order페이지
	@RequestMapping("/item")
	public String order_item(Model model)
	{
		return "order/item";
	}
	@RequestMapping("/basket")
	public String order_basket(Model model)
	{
		return "order/basket";
	}
	@RequestMapping("/order")
	public String order_order(Model model)
	{
		return "order/order";
	}
	@RequestMapping("/list")
	public String order_list(Model model)
	{
		return "order/list";
	}
	@RequestMapping("/orderHistory")
	public String order_history(Model model)
	{
		return "mypage/orderHistory";
	}
	
	//로그인
	@RequestMapping("/login")
	public String login()
	{
		return "member/login";
	}
	
	//로그인 기능
	@RequestMapping(value="/loginAction", method= RequestMethod.POST)
	public String loginAction(HttpServletRequest request, RedirectAttributes rttr)
	{
		HttpSession session = request.getSession();
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		System.out.println("insert id : "+user_id);
		System.out.println("insert pw : "+user_pw);
		UserDto user = UserDao.userLogin(user_id, user_pw);
		
		if(user == null)
		{
			session.setAttribute("user", null);
			rttr.addFlashAttribute("msg", false);
		}
		else
		{
			session.setAttribute("user", user);
		}
		
		return "redirect:/main";
	}
	
	
	@RequestMapping("/register")
	public String register(Model model)
	{
		return "member/register";
	}
}
