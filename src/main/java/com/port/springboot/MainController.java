package com.port.springboot;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.port.springboot.dao.IItemDao;
import com.port.springboot.dao.IUserDao;
import com.port.springboot.dto.UserDto;

@Controller
public class MainController 
{
	
	@Autowired
	private IItemDao ItemDao;
	
	@Autowired
	private IUserDao UserDao;
	
	@RequestMapping("/")
	public String root() throws Exception {
		return "redirect:main";
	}
	
	@RequestMapping("/main")
	public String main_main(Model model)
	{
		return "main/main";
	}
	
	@RequestMapping("/header")
	public String main_header(Model model)
	{
		return "main/header";
	}
	
	//company 페이지
	@RequestMapping("/map")
	public String company_map(Model model)
	{
		return "company/map";
	}
	
	@RequestMapping("/introduce")
	public String company_introduce(Model model)
	{
		return "company/introduce";
	}
	
	//service 페이지 
	@RequestMapping("/inquiry")
	public String service_inquiry(Model model)
	{
		return "service/inquiry";
	}
	
	@RequestMapping("/inquiryList")
	public String service_inquiryList(Model model)
	{
		return "service/inquiryList";
	}
	
	@RequestMapping("/review")
	public String service_review(Model model)
	{
		return "service/review";
	}
	
	
	//order페이지
	@RequestMapping("/item")
	public String order_item(HttpServletRequest request, Model model)
	{		
		int item_no = Integer.parseInt(request.getParameter("item_no"));
		
		System.out.println("select item_type : " + item_no);
		
		model.addAttribute("list", ItemDao.item(item_no));
		
		return "order/item";
	}
	@RequestMapping("/basket")
	public String order_basket(HttpServletRequest request, Model model)
	{
		int user_no = Integer.parseInt(request.getParameter("user_no"));
		
		System.out.println("select user_no : " + user_no);
		
		model.addAttribute("list", ItemDao.basket(user_no));
		
		return "order/basket";
	}
	@RequestMapping("/order")
	public String order_order(Model model)
	{
		return "order/order";
	}
	@RequestMapping("/list")
	public String order_list(HttpServletRequest request, Model model)
	{
		HttpSession session = request.getSession();		
		
		String item_type = request.getParameter("item_type");
		
		session.setAttribute("item_type", item_type);
		
		System.out.println("select item_type : " + item_type);
		
		model.addAttribute("list", ItemDao.itemTypeList(item_type));
		
		return "order/list";
	}
	
	
	//MyPage
	@RequestMapping("/orderHistory")
	public String order_history(Model model)
	{
		return "mypage/orderHistory";
	}
	
	@RequestMapping("/mypage")
	public String mypage(Model model)
	{
		return "mypage/mypage";
	}
	
	//로그인
	@RequestMapping("/login")
	public String login()
	{
		return "member/login";
	}
	//아이디찾기
	@RequestMapping("/FindID")
	public String FindID()
	{
		return "member/FindID";
	}
	//비빌번호찾기
	@RequestMapping("/FindPassword")
	public String FindPasswor()
	{
		return "member/FindPassword";
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
		
		//로그인 타입에따른 관리자, 회원 분리
		//User_login_type = 0 이면 회원, User_login_type = 1이면 관리자
		System.out.println("user.getUser_login_type() : " + user.getUser_login_type());
		
		if(user.getUser_login_type() == 0)
		{
			return "redirect:/main";			
		}
		else
		{
			return "redirect:/admin/memberList";			
		}
	}
	
	//로그아웃
	@RequestMapping("/Logout")
	public String Logout(HttpSession session)
	{
		session.invalidate();
		return "redirect:/main";
	}
	
	
	@RequestMapping("/register")
	public String register(Model model)
	{
		return "member/register";
	}
}
