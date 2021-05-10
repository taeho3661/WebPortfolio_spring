package com.port.springboot;


import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.port.springboot.dao.IBoardDao;
import com.port.springboot.dao.IItemDao;
import com.port.springboot.dao.IOrderDao;
import com.port.springboot.dao.IUserDao;
import com.port.springboot.dto.BoardDto;
import com.port.springboot.dto.ItemDto;
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
	
	// 게시판관련
		@RequestMapping("/inquiryList")
		public String boardList(Model model, HttpServletRequest request)
		{
			HttpSession session = request.getSession();
			
			System.out.println("session : "+session.getId());
			
			UserDto user = (UserDto) session.getAttribute("user");	
		
			
			if (user != null) {
				String user_id = user.getUser_id();
				
				if(user_id != null ) {
				System.out.println("writer id : "+user_id);
				model.addAttribute("list", BoardDao.inquiryList(user_id));
				return "/service/inquiryList";
				
				}else {
					return "member/login";
				}
				
			}else {
			 return "member/login"; }
			
		}
		//
		
	
	
	@RequestMapping("/")
	public String root() throws Exception {
		return "redirect:main";
	}
	
	@RequestMapping("/main")
	public String main_main(Model model)
	{
		//상품나열
		model.addAttribute("list", ItemDao.mainList());
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
	@RequestMapping("/announcement")
	public String company_announcement(Model model)
	{
		model.addAttribute("announList" , BoardDao.announList());
		return "company/announcement";
	}
	
	
	@RequestMapping("/introduce")
	public String company_introduce(Model model)
	{
		return "company/introduce";
	}
	@RequestMapping("/agreement")
	public String company_agreement(Model model)
	{
		return "company/agreement";
	}
	@RequestMapping("/guide")
	public String company_guide(Model model)
	{
		return "company/guide";
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
	//inquiry등록 액션
		@RequestMapping("/inquiryAdd")
		public String inquiryAdd(HttpServletRequest request) throws IOException
		{
			HttpSession session = request.getSession();
			UserDto user = (UserDto) session.getAttribute("user");	
			String board_writer = user.getUser_id();
			
			BoardDto dto = new BoardDto();
			
			
			dto.setBoard_name(request.getParameter("board_name"));
			dto.setBoard_content(request.getParameter("board_content"));
			dto.setBoard_writer(board_writer);
			
			
			BoardDao.inquiryAdd(dto);
			
			return "redirect:inquiryList";
		}
		
	//review등록 액션
		@RequestMapping("/reviewAdd")
		
		
		public String reviewAdd(HttpServletRequest request) throws IOException
		{		
			
			BoardDto dto = new BoardDto();
			
			
			dto.setBoard_content(request.getParameter("review_content"));			
			
			BoardDao.reviewAdd(dto);
			
			return "redirect:reviewList";
		}

	
	//상품후기 액션
	@RequestMapping("/inquiry_view")
	public String inquiry_view_action(HttpServletRequest request, Model model) {
		
		int board_no = Integer.parseInt(request.getParameter("board_no"));
	
		
		model.addAttribute("dto", BoardDao.reviewView(board_no));
		
		return "/service/inquiry_view";
	}
	
	//리뷰보기
	@RequestMapping("/reviewList")
	public String reviewList( HttpServletRequest request, Model model)
	{	
		String item_name = request.getParameter("item_name");
		
		model.addAttribute( "reviewList" , BoardDao.review_List(item_name));
		
		
		return "redirect:orderHistory";
	}
	
	
	
	
	//리뷰 쓰기
	@RequestMapping("/review_view")
	public String review_view( HttpServletRequest request, Model model)
	{	
		int order_no = Integer.parseInt(request.getParameter("order_no"));
		
		model.addAttribute( "list" , OrderDao.review_view(order_no));
		
		return "/service/review_view";
	}
	
	
	
	
	
	
	//order페이지
	@RequestMapping("/item")
	public String order_item(HttpServletRequest request, Model model)
	{		
		int item_no = Integer.parseInt(request.getParameter("item_no"));
		
		System.out.println("select item_type : " + item_no);
		
		model.addAttribute("list", ItemDao.item(item_no));
		model.addAttribute( "boardList" , BoardDao.reviewList(item_no));
		
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
	int tempUser_no = 0;
	//장바구니 추가
	@RequestMapping("/basketAdd")
	public String order_basketAdd(HttpServletRequest request, Model model)
	{
		//장바구니에 추가하는 부분
		OrderDto dto = new OrderDto();
		dto.setUser_no(Integer.parseInt(request.getParameter("user_no")));
		dto.setItem_no(Integer.parseInt(request.getParameter("item_no")));
		dto.setOrder_count(Integer.parseInt(request.getParameter("order_count")));
		dto.setOrder_price(Integer.parseInt(request.getParameter("order_price")));
		ItemDao.basketAdd(dto);
		
		//System.out.println("장바구니add에 order_price : " + Integer.parseInt(request.getParameter("order_price")));
		
		tempUser_no = Integer.parseInt(request.getParameter("user_no"));
		
		return "redirect:basketList";
	}
	@RequestMapping("/basketList")
	public String basketList(HttpServletRequest request, Model model)
	{		
		//int user_no = Integer.parseInt(request.getParameter("user_no"));		 
		System.out.println("select user_no : " + tempUser_no);
		model.addAttribute("list", ItemDao.basket(tempUser_no));
		
		return "/order/basket";
	}
	
	//장바구니 삭제
	@RequestMapping("/basketDelete")
	public String basketDelete(HttpServletRequest request, Model model)
	{
		int order_no = Integer.parseInt(request.getParameter("order_no"));
		ItemDao.basketDelete(order_no);
		System.out.println("basketDelete");
		System.out.println(order_no);
		return "redirect:basketList";
	}
	
	@RequestMapping("/order")
	public String order_order(HttpServletRequest request, Model model)
	{
		//check박스에 order_no을 매칭시켜서 선택된 상품 찾아내서 가져옴
		if(request.getParameterValues("order_no") != null)
		{
			String order_no[] = request.getParameterValues("order_no");
			for(String val : order_no)
			{
				System.out.println("선택된 상품의 order_no : " + val);
			}
		}
		
		String order_no[] = request.getParameterValues("order_no");
		
		model.addAttribute("list", ItemDao.orderFromBasket(order_no));
		
		return "order/order";
		
			
	}
	

	
	
	
	
	
	
	@RequestMapping("/list")
	public String order_list(HttpServletRequest request, Model model)
	{		
		HttpSession session = request.getSession();

		session.setAttribute("item_name", null); // 검색어가 저장된 섹션은 null로 만들고,
		
		String item_type = request.getParameter("item_type");
		
		session.setAttribute("item_type", item_type);
		
		System.out.println("select item_type : " + item_type);
		
		model.addAttribute("list", ItemDao.itemTypeList(item_type));
		
		return "order/list";
	}
	@RequestMapping("/listSort")
	public String order_listSort(HttpServletRequest request, Model model)
	{
		
		String item_type = request.getParameter("item_type");
		String sort_point = request.getParameter("sort_point");
		String sort_method = request.getParameter("sort_method");
		
		System.out.println("select item_type123123 : " + item_type);
		System.out.println("select item_type123123 : " + sort_point);
		System.out.println("select item_type123123 : " + sort_method);
		
		model.addAttribute("list", ItemDao.itemTypeListSort(item_type, sort_point, sort_method));
		
		return "order/list";
	}
	
	//주문페이지 주소불러오기
	@RequestMapping("/loadUserAdr")
	public String order_loadUserAdr(HttpServletRequest request, Model model)
	{
		System.out.println("loadUserAdr 들어옴");
//		int order_no = Integer.parseInt(request.getParameter("order_no"));
//		ItemDao.basketDelete(order_no);
//		System.out.println("basketDelete");
//		System.out.println(order_no);
		return "redirect:order";
	}
	
	@RequestMapping("/orderCompleted")
	public String orderCompleted(HttpServletRequest request, Model model)
	{		
		String order_adr1 = request.getParameter("order_adr1");
		String order_adr2 = request.getParameter("order_adr2");
		String order_adr3 = request.getParameter("order_adr3");
		String order_adr4 = request.getParameter("order_adr4");
		String order_price = request.getParameter("order_price");
		String order_memo = request.getParameter("order_memo");
		
		String order_no[] = request.getParameterValues("order_no");
		///////////////////////////////////////////////////////////////////////////////////////////
		// Dao 쿼리문으로 넘길때 같은 자료형만 넘어가서 배열을 그냥 만들어버리자
		///////////////////////////////////////////////////////////////////////////////////////////
		String covToStringOrder_no = "(";
		for(String val : order_no)
		{
			System.out.println("(orderCompleted) 선택된 상품의 order_no : " + val);
			covToStringOrder_no += val;
			covToStringOrder_no += ",";
		}
		//마지막 "," 삭제
		covToStringOrder_no = covToStringOrder_no.substring(0, covToStringOrder_no.length()-1);
		covToStringOrder_no += ")";
		System.out.println("covToStringOrder_no : " + covToStringOrder_no);
		///////////////////////////////////////////////////////////////////////////////////////////
		///////////////////////////////////////////////////////////////////////////////////////////
		
		System.out.println(request.getParameter("order_adr1"));
		System.out.println(request.getParameter("order_adr2"));
		System.out.println(request.getParameter("order_adr3"));
		System.out.println(request.getParameter("order_adr4"));
		System.out.println(request.getParameter("order_price"));
		System.out.println(request.getParameter("order_memo"));
		
		ItemDao.orderCompleted(order_adr1, order_adr2, order_adr3, order_adr4, order_price, order_memo, covToStringOrder_no);
		

		//scoreUpdate 누적금액설정

		int payment = Integer.parseInt(request.getParameter("payment"));
		System.out.println("payment : " + payment);
		int user_no = Integer.parseInt(request.getParameter("user_no"));
		System.out.println("user_no : " + user_no);
		
		ItemDao.scoreUpdate(payment, user_no);
		
		//재고 수량 계산
		String order_count[] = request.getParameterValues("order_count");
		String item_name[] = request.getParameterValues("item_name");
		
		int index = 0;
		for(String val : order_count)		// 수량,이름
		{			
			System.out.println(order_count[index]);
			System.out.println(item_name[index]);
			ItemDao.itemStockMinusAction(order_count[index], item_name[index]);
			index++;
		}
		//int item_no = Integer.parseInt(request.getParameter("item_no"));
		//ItemDao.itemStockMinusAction(order_count, item_no);
		
		return "redirect:main";
	}
	
	
	
	//메인 헤더의 검색기능
	@RequestMapping("/mainSearch")
	public String main_header_search(HttpServletRequest request, Model model)
	{
		HttpSession session = request.getSession();
		
		String item_name = request.getParameter("item_name");
		
		session.setAttribute("item_name", item_name);
		
		System.out.println("select item_name : " + item_name);
		
		model.addAttribute("list", ItemDao.mainSearch(item_name));
		
		////todo::
		//String searchWord = "검색어는 [" + item_name + "] 입니다.";
		//
		//session.setAttribute("searchWord", searchWord);		
		////
		
		return "order/list";
	}
	
	//메인 헤더의 검색기능
	@RequestMapping("/mainSearchSort")
	public String main_header_search_sort(HttpServletRequest request, Model model)
	{
		HttpSession session = request.getSession();
		
		String item_name = request.getParameter("item_name");			//		item_name = 검색어
		String sort_point = request.getParameter("sort_point");			//		sort_point = 정렬 기준
		String sort_method = request.getParameter("sort_method");		//		sort_method = 정렬 방법
		
		session.setAttribute("item_name", item_name);
		
		System.out.println("select item_name_Sort : " + item_name);
	
		System.out.println("select item_type_Sort : " + sort_point);	
		System.out.println("select item_type_Sort : " + sort_method);	
		
		model.addAttribute("list", ItemDao.mainSearchSort(item_name, sort_point, sort_method));
		
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
	
	@RequestMapping("/orderHistory1d")
	public String order_history_1d(Model model, HttpServletRequest request)
	{
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		cal.add(Calendar.DATE, -1);
		
		DateFormat df = new SimpleDateFormat("yy-MM-dd");
		String date = df.format(cal.getTime());
		
		System.out.println("date : "+date);
		
		HttpSession session = request.getSession();
		UserDto user = (UserDto) session.getAttribute("user");
		int user_no = user.getUser_no();
		
		System.out.println("orderHistory user no d1 : "+user_no);
		
		model.addAttribute("list",OrderDao.userOrderDate(user_no, date));
		return "mypage/orderHistory";
	}
	
	@RequestMapping("/orderHistory7d")
	public String order_history_7d(Model model, HttpServletRequest request)
	{
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		cal.add(Calendar.DATE, -7);
		
		DateFormat df = new SimpleDateFormat("yy-MM-dd");
		String date = df.format(cal.getTime());
		
		System.out.println("date : "+date);
		
		HttpSession session = request.getSession();
		UserDto user = (UserDto) session.getAttribute("user");
		int user_no = user.getUser_no();
		
		System.out.println("orderHistory user no d7 : "+user_no);
		
		model.addAttribute("list",OrderDao.userOrderDate(user_no, date));
		return "mypage/orderHistory";
	}
	
	@RequestMapping("/orderHistory1m")
	public String order_history_1m(Model model, HttpServletRequest request)
	{
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		cal.add(Calendar.MONTH, -1);
		
		DateFormat df = new SimpleDateFormat("yy-MM-dd");
		String date = df.format(cal.getTime());
		
		System.out.println("date : "+date);
		
		HttpSession session = request.getSession();
		UserDto user = (UserDto) session.getAttribute("user");
		int user_no = user.getUser_no();
		
		System.out.println("orderHistory user no m1 : "+user_no);
		
		model.addAttribute("list",OrderDao.userOrderDate(user_no, date));
		return "mypage/orderHistory";
	}
	
	@RequestMapping("/orderHistory3m")
	public String order_history_3m(Model model, HttpServletRequest request)
	{
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		cal.add(Calendar.MONTH, -3);
		
		DateFormat df = new SimpleDateFormat("yy-MM-dd");
		String date = df.format(cal.getTime());
		
		System.out.println("date : "+date);
		
		HttpSession session = request.getSession();
		UserDto user = (UserDto) session.getAttribute("user");
		int user_no = user.getUser_no();
		
		System.out.println("orderHistory user no m1 : "+user_no);
		
		model.addAttribute("list",OrderDao.userOrderDate(user_no, date));
		return "mypage/orderHistory";
	}
	
	@RequestMapping("/orderHistory6m")
	public String order_history_6m(Model model, HttpServletRequest request)
	{
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		cal.add(Calendar.MONTH, -6);
		
		DateFormat df = new SimpleDateFormat("yy-MM-dd");
		String date = df.format(cal.getTime());
		
		System.out.println("date : "+date);
		
		HttpSession session = request.getSession();
		UserDto user = (UserDto) session.getAttribute("user");
		int user_no = user.getUser_no();
		
		System.out.println("orderHistory user no m1 : "+user_no);
		
		model.addAttribute("list",OrderDao.userOrderDate(user_no, date));
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
	

	
	//아이디찾기 액션
	@RequestMapping("/findIdAction")
	public String findIdAction(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String user_name = request.getParameter("user_name");
		String user_email = request.getParameter("user_email");
		
		System.out.println(user_name);
		
		String user_id = UserDao.findIdAction(user_name, user_email);
		
		String msg;
		
		if(user_id!=null)
		{
			msg = "회원님의 아이디는 "+user_id+"입니다.";
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('"+msg+"'); history.go(-2);</script>");
			out.flush();
		}
		else
		{
			msg = "아이디를 찾을 수 없습니다.";
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('"+msg+"'); history.go(-1);</script>");
			out.flush();
		}
		
		System.out.println(msg);
		
		return "redirect:/main";
	}
	

	//비번찾기
	@RequestMapping("/FindPassword")
	public String FindPassword()
	{
		return "member/FindPassword";
	}
	

	//비빌번호찾기
	@RequestMapping("/findpasswordAction")
	public String findPasswordAction(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String user_id = request.getParameter("user_id");
		String user_name = request.getParameter("user_name");
		String user_email = request.getParameter("user_email");
		
		System.out.println("ㅇㅇ");
		
		String user_password = UserDao.findpasswordAction(user_id,user_name, user_email);
		
		String msg2;
		
		if(user_password!=null)
		{
			msg2 = "회원님의 비밀번호는"+user_password+"입니다.";
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out2 = response.getWriter();
			out2.println("<script>alert('"+msg2+"'); history.go(-2);</script>");
			out2.flush();
		}
		else
		{
			msg2 = "잘못된 정보입니다.";
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out2 = response.getWriter();
			out2.println("<script>alert('"+msg2+"'); history.go(-1);</script>");
			out2.flush();
			
		}
		
		System.out.println(msg2);
		

		return "redirect:/main";
	}
	
	//회원가입
	@RequestMapping("/registerAction")
	public String registerAction(HttpServletRequest request, Model model)
	{
		UserDto dto = new UserDto();
		
		dto.setUser_id(request.getParameter("user_id"));
		dto.setUser_pw(request.getParameter("user_pw"));
		dto.setUser_name(request.getParameter("user_name"));
		dto.setUser_adr1(request.getParameter("user_adr1"));
		dto.setUser_adr2(request.getParameter("user_adr2"));
		dto.setUser_adr3(request.getParameter("user_adr3"));
		dto.setUser_adr4(request.getParameter("user_adr4"));
		dto.setUser_phone(request.getParameter("user_phone"));
		dto.setUser_email(request.getParameter("user_email"));
		UserDao.registerAction(dto);
		
		model.addAttribute("alert", "회원가입을 완료했습니다.");
		
		return "/main/main";
	}
	

	
	//정보수정 페이지
	@RequestMapping("/Modify")
	public String Modify(HttpServletRequest request, Model model)
	{
		HttpSession session = request.getSession();
		UserDto user = (UserDto) session.getAttribute("user");
		int user_no = user.getUser_no();
		model.addAttribute("dto", UserDao.modifyView(user_no));
		return "member/Modify";
	}
	
	@RequestMapping("/modifyAction")
	public String modifyAction(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		UserDto user = (UserDto) session.getAttribute("user");
		int user_no = user.getUser_no();
		
		UserDto dto = new UserDto();
		dto.setUser_no(user_no);
		dto.setUser_id(request.getParameter("user_id"));
		dto.setUser_pw(request.getParameter("user_pw"));
		dto.setUser_name(request.getParameter("user_name"));
		dto.setUser_adr1(request.getParameter("user_adr1"));
		dto.setUser_adr2(request.getParameter("user_adr2"));
		dto.setUser_adr3(request.getParameter("user_adr3"));
		dto.setUser_adr4(request.getParameter("user_adr4"));
		dto.setUser_phone(request.getParameter("user_phone"));
		dto.setUser_email(request.getParameter("user_email"));
		
		System.out.println(request.getParameter("user_adr1"));
		
		
		UserDao.modifyAction(dto);
		//session.invalidate();
		return "/main/main";
	}
	
	//멤버 삭제
	@RequestMapping("/modifyDelete")
	public String modifyDelete(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		UserDto user = (UserDto) session.getAttribute("user");
		int user_no = user.getUser_no();
		
		System.out.println("delete user no : "+user_no);
		
		UserDao.modifyDelete(user_no);
		session.invalidate();
		return "redirect:main";
	}
	
	//로그인 기능
	@RequestMapping(value="/loginAction", method= RequestMethod.POST)
	public String loginAction(HttpServletRequest request,  HttpServletResponse response) throws IOException
	{
		HttpSession session = request.getSession();
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		System.out.println("insert id : "+user_id);
		System.out.println("insert pw : "+user_pw);
		UserDto user = UserDao.userLogin(user_id, user_pw);
		
		/*
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
		*/
		
		if(user == null)
		{
			session.setAttribute("user", null);
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
            out.flush();
			return "redirect:login";
		}
		else
		{
			if(user.getUser_login_type() == 0)
			{
				
				session.setAttribute("user", user);
				return "redirect:/main";			
			}
			else
			{
				session.setAttribute("user", user);
				return "redirect:/admin/memberList";			
			}
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
	public String register()
	{
		return "member/register";
	}
	
	
	
	
	// 아이디 중복 검사
	@RequestMapping(value = "/idCheckAjax", method = RequestMethod.POST)
	@ResponseBody
	public void idCheckAjax(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		System.out.print("진입ㄷㅈㄱㄷㅈㄱ");
		
		int result = 0;
		try 
		{
			String member_id = request.getParameter("member_id");
			System.out.println("insert id : "+member_id);
			request.setAttribute("check_id", member_id);
			
			result = UserDao.idCheck(member_id);
			//result = MemberDao.idCheck(request);
	
			System.out.println(result);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		if(result == 1) { //아이디 중복됨
    		response.getWriter().print("1");
    	} else { 
    		response.getWriter().print("0");
    	}
		
	} 
 
    
	
}
