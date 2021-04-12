package com.port.springboot;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.port.springboot.dao.IAdminDao;
import com.port.springboot.dto.ItemDto;
import com.port.springboot.dto.OrderDto;

@Controller
@RequestMapping("/admin")
public class AdminController 
{
	
	@Autowired
	private IAdminDao AdminDao;
	
	//회원 목록
	@RequestMapping("/memberList")
	public String memberList(Model model)
	{
		model.addAttribute("list", AdminDao.userList());
		return "/admin/memberList";
	}
	
	@RequestMapping("/userDelete")
	public String userDelete(HttpServletRequest request, Model model)
	{
		String user_id = request.getParameter("user_id");
		AdminDao.userDelete(user_id);
		return "redirect:memberList";
	}
	
	//주문 목록
	@RequestMapping("/orderList")
	public String orderList(Model model)
	{
		model.addAttribute("list", AdminDao.orderList());
		return "/admin/orderList";
	}
	
	//주문 상태 변경
	@RequestMapping("/orderStateChange")
	public String orderStateChange(HttpServletRequest request)
	{
		int order_no = Integer.parseInt(request.getParameter("order_no"));
		int order_state = Integer.parseInt(request.getParameter("order_state"));
		
		System.out.println("order no : "+order_no);
		System.out.println("order_state : "+order_state);
		
		if(order_state<=3)
		{
			++order_state;
		}
		else
		{
			order_state = 4;
		}
		
		System.out.println("order_state changed : "+order_state);
		
		OrderDto dto = new OrderDto();
		dto.setOrder_no(order_no);
		dto.setOrder_state(order_state);
		
		AdminDao.orderStateChange(dto);
		return "redirect:orderList";
	}
	
	//상품 추가 페이지
	@RequestMapping("/itemAddForm")
	public String itemAddForm()
	{
		return "/admin/itemAdd";
	}
	
	//상품 추가 액션
	@RequestMapping("/itemAdd")
	public String itemAdd(HttpServletRequest request, @RequestParam("item_img")MultipartFile item_img, @RequestParam("item_info_img")MultipartFile item_info_img)
	{
		
		String rootPath = request.getSession().getServletContext().getRealPath("");
		String basePath = rootPath + "/" + "img";
		
		String filePath1 = basePath + "/" + item_img.getOriginalFilename();
		String filePath2 = basePath + "/" + item_info_img.getOriginalFilename();
		
		File dest1 = new File(filePath1);
		File dest2 = new File(filePath2);
		
		System.out.println("dest1 : "+dest1);
		
		try 
		{
			item_img.transferTo(dest1);
			item_info_img.transferTo(dest2);
		}
		catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		ItemDto dto = new ItemDto();
		dto.setItem_type(request.getParameter("item_type"));
		dto.setItem_name(request.getParameter("item_name"));
		dto.setItem_price(Integer.parseInt(request.getParameter("item_price")));
		dto.setItem_stock(Integer.parseInt(request.getParameter("item_stock")));
		dto.setItem_img(item_img.getOriginalFilename());
		dto.setItem_info_img(item_info_img.getOriginalFilename());
		AdminDao.itemAdd(dto);
		return "redirect:itemList";
	}
	
	//상품 목록
	@RequestMapping("/itemList")
	public String itemList(Model model)
	{
		model.addAttribute("list", AdminDao.itemList());
		return "/admin/itemList";
	}
	
	//상품 삭제
	@RequestMapping("/itemDelete")
	public String itemDelete(HttpServletRequest request, Model model)
	{
		int item_no = Integer.parseInt(request.getParameter("item_no"));
		AdminDao.itemDelete(item_no);
		return "redirect:itemList";
	}
	
	//문의 목록
	@RequestMapping("/itemQna")
	public String itemQna(Model model)
	{
		model.addAttribute("list", AdminDao.itemQna());
		return "/admin/itemQna";
	}
	
	@RequestMapping("/qnaReply")
	public String qnaReply(Model model)
	{
		return "/admin/qnaReply";
	}
	
	//로그아웃
	@RequestMapping("/adminLogOut")
	public String adminLogOut(HttpSession session)
	{
		session.invalidate();
		return "redirect:/main";
	}
}
