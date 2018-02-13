package shan.ecoms.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@RequestMapping(value="/aboutus")
	public String getaboutus(){
		
		return "aboutus";
	}
	@RequestMapping("/contactus")
	public String getcontactus(){
		
		return "contactus";
	}
	
	@RequestMapping("/register")
	public String getregister(){
		
		return "register";
	}
	@RequestMapping("/homepage")
	public String gethomepage(){
		
		return "homepage";
	}
	@RequestMapping("/payment")
	public String getpayment() {

		// do something before returning view name

		return "payment";
	}
	@RequestMapping("/receipt")
	public String getreceipt() {

		// do something before returning view name

		return "receipt";
	}
	@RequestMapping("/thankyou")
	public String getthankyou() {

		// do something before returning view name

		return "thankyou";
	}
	@RequestMapping("/header")
	public String getheader() {

		// do something before returning view name

		return "header";
	}

}





