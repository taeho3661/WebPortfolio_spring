package com.port.springboot;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.port.springboot.dao.IBoardDao;
import com.port.springboot.dao.IItemDao;
import com.port.springboot.dao.IOrderDao;
import com.port.springboot.dao.IUserDao;
import com.port.springboot.dto.BoardDto;
import com.port.springboot.dto.OrderDto;
import com.port.springboot.dto.UserDto;

@Controller
public class MainController 
{
	
	@Autowired
	private IItemDao ItemDao;
	
	@Autowired
	private IUserDao UserDao;
	
	@Autowired
	private IOrderDao OrderDao;
	
	@Autowired
	private IBoardDao BoardDao;
	
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
	
	//1:1문의 액션
	@RequestMapping("/inquiryAction")
	public String inquiryAction(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		UserDto user = (UserDto) session.getAttribute("user");
		
		BoardDto dto = new BoardDto();
		
		String board_name = request.getParameter("board_name");
		String board_content = request.getParameter("board_content");
		String board_writer = user.getUser_name();
		
		dto.setBoard_name(board_name);
		dto.setBoard_content(board_content);
		dto.setBoard_writer(board_writer);
		
		System.out.println("board name : "+dto.getBoard_name());
		System.out.println("board content : "+dto.getBoard_content());
		System.out.println("board writer : "+dto.getBoard_writer());
		
		BoardDao.inquiryAction(dto);
		
		return "redirect:mypage";
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
	
//	@RequestMapping("/basket") // basket이랑 basketAdd합치기
//	public String order_basket(HttpServletRequest request, Model model)
//	{
//		int user_no = Integer.parseInt(request.getParameter("user_no"));
//		
//		System.out.println("select user_no : " + user_no);
//		
//		model.addAttribute("list", ItemDao.basket(user_no));
//		
//		return "order/basket";
//	}
	
	//장바구니 추가
	@RequestMapping("/basketAdd")
	public String order_basketAdd(HttpServletRequest request, Model model)
	{		
		//장바구니에 추가하는 부분
		OrderDto dto = new OrderDto();
		dto.setUser_no(Integer.parseInt(request.getParameter("user_no")));
		dto.setItem_no(Integer.parseInt(request.getParameter("item_no")));
		dto.setOrder_count(Integer.parseInt(request.getParameter("order_count")));
		ItemDao.basketAdd(dto);
		
		//장바구니 목록을 띄우는 부분		
		int user_no = Integer.parseInt(request.getParameter("user_no"));
		
		System.out.println("select user_no : " + user_no);
		
		model.addAttribute("list", ItemDao.basket(user_no));
		
		//		
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
	public String order_history(Model model, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		UserDto user = (UserDto) session.getAttribute("user");
		model.addAttribute("list",OrderDao.userOrder(user.getUser_no()));
		System.out.println("orderHistory user no : "+user.getUser_no());
		return "mypage/orderHistory";
	}
	
	//주문 삭제 액션
	@RequestMapping("/orderDelete")
	public String orderDelete(HttpServletRequest request)
	{
		int order_no = Integer.parseInt(request.getParameter("order_no"));
		OrderDao.orderDelete(order_no);
		return "redirect:orderHistory";
	}
	
	@RequestMapping("/mypage")
	public String mypage(HttpServletRequest request, Model model)
	{
		HttpSession session = request.getSession();
		UserDto user = (UserDto) session.getAttribute("user");
		System.out.println("mypage user name : "+user.getUser_name());
		System.out.println("mypage user score : "+user.getUser_score());
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
	
	
	@RequestMapping("/Modify")
	public String Modify()
	{
		return "member/Modify";
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
