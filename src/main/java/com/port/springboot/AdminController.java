package com.port.springboot;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.port.springboot.dao.IAdminDao;
import com.port.springboot.dto.ItemDto;

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
	
	//상품 추가 페이지
	@RequestMapping("/itemAddForm")
	public String itemAddForm()
	{
		return "/admin/itemAdd";
	}
	
	//상품 추가 액션
	@RequestMapping("/itemAdd")
	public String productAdd(HttpServletRequest request, Model model)
	{
		ItemDto dto = new ItemDto();
		dto.setItem_nm(request.getParameter("item_nm"));
		dto.setPrice(Integer.parseInt(request.getParameter("price")));
		dto.setStock(Integer.parseInt(request.getParameter("stock")));
		dto.setCon_img(request.getParameter("con_img"));
		AdminDao.itemAdd(dto);
		return "redirect:itemList";
	}
	
	//상품 목록
	@RequestMapping("/itemList")
	public String productList(Model model)
	{
		model.addAttribute("list", AdminDao.itemList());
		return "/admin/itemList";
	}
	
	//문의 목록
	@RequestMapping("/itemQna")
	public String productQna(Model model)
	{
		model.addAttribute("list", AdminDao.itemQna());
		return "/admin/itemQna";
	}
	
	@RequestMapping("/qnaReply")
	public String qnaReply(Model model)
	{
		return "/admin/qnaReply";
	}
}
