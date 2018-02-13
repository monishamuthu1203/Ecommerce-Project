package shan.ecoms.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import shan.ecoms.dao.UserDAO;
import shan.ecoms.model.Register;


@Controller
public class RegisterController {
	
	@Autowired
	UserDAO userdao;

	@RequestMapping(value="register", method=RequestMethod.GET)
	public ModelAndView sendregister(@ModelAttribute("user")Register user)
	{
		ModelAndView mv=new ModelAndView("register");
		return mv;
	}
	
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public ModelAndView getUser(Register user)
	{
		
		userdao.addUser(user);
		ModelAndView mv=new ModelAndView("Login","user",new Register());
		return mv;			
	}
	
	@RequestMapping("/Login")
	public String getLoginPage()
	{
		return "Login";
	}
	@RequestMapping("/Loginf")
	public String getLoginfPage()
	{
		return "Loginf";
	}
	
	
}
