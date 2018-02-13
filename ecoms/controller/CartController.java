package shan.ecoms.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shan.ecoms.dao.CartDAO;
import shan.ecoms.dao.ProductDAO;
import shan.ecoms.dao.RegisterDAO;
import shan.ecoms.model.Cart;
import shan.ecoms.model.Product;
import shan.ecoms.model.Register;
@Controller
public class CartController {

	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	RegisterDAO registerDAO;
	
	@RequestMapping(value="AddCart/{productid}",method=RequestMethod.GET)
	public String addCart(@PathVariable("productid")int productid,HttpSession session,Model m)
	{
	
		Product cart1=productDAO.getproductid(productid);
		System.out.println(cart1);
		Cart cart = new Cart();
		cart.setProductid(cart1.getProductid());
		cart.setProductprice(cart1.getProductprice());
		cart.setProductname(cart1.getProductname());
		cart.setProductquantity(1);
		//Register r=registerDAO.getRegisterBy((String) session.getAttribute("username"));
		//cart.setUserName(r.getUsername());
		
		cartDAO.addCart(cart);
		
		
		return "redirect:/cart";
	}
	
	@RequestMapping(value="deleteCart/{productid}",method=RequestMethod.GET)
	public String deleteCart(@PathVariable("productid")int productid,Model m)
	{
		Cart cart=cartDAO.getCart(productid);
		System.out.println(cart);
		
		
		cartDAO.deleteCart(cart);
		List<Cart> listCart=cartDAO.retrieveCart();
		m.addAttribute("cartList",listCart);
		
		Cart cart1=new Cart();
		m.addAttribute(cart1);
		
		return "redirect:/cart";
	}
	
	
	
	@RequestMapping("/cart")
	public String Showcart(Model m)
	{
		Cart cart=new Cart();
		m.addAttribute(cart);
		
		List<Cart> listCart=cartDAO.retrieveCart();
		m.addAttribute("cartList",listCart);
		return "cart";
	}
	
	
}



