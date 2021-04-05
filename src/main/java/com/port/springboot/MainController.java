package com.port.springboot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.port.springboot.dao.IAdminDao;

@Controller
public class MainController 
{
	
	@Autowired
	private IAdminDao UserDao;
	
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
}
