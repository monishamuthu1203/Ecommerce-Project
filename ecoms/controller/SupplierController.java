package shan.ecoms.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import shan.ecoms.dao.SupplierDAO;
import shan.ecoms.model.Category;
import shan.ecoms.model.Supplier;


@Controller
public class SupplierController {
	
	@Autowired
	SupplierDAO supplierdao;

	@RequestMapping(value="supplier", method=RequestMethod.GET)
	public ModelAndView sendsupplier(@ModelAttribute("supplier")Supplier supplier)
	{
		ModelAndView mv=new ModelAndView("supplier");
		return mv;
	}
	
	
	@RequestMapping(value="supplier", method=RequestMethod.POST)
	public ModelAndView getSupplier(Supplier supplier)
	{
		
		supplierdao.addSupplier(supplier);
		ModelAndView mv=new ModelAndView("supplier","supplier",new Supplier());
		return mv;			
	}
	@RequestMapping("/supplierlist")
	public ModelAndView supplierlist() {
		  List<Supplier> supplier = supplierdao.supplierlist(); return new
		  ModelAndView("supplierlist", "supplier", supplier); 
		  }
	@RequestMapping("deletesupplier/{supid}")
	public String deleteSupplier(@PathVariable(value = "supid") String supid) {

		

		supplierdao.deletesupplier(supid);
		
		return "redirect:/supplierlist";
	}
	@RequestMapping(value = "editsupplier/{supid}")
	public ModelAndView getEditForm(@PathVariable(value = "supid") String supid) {
		Supplier supplier = supplierdao.getsupid(supid);
		return new ModelAndView("editsupplier", "editsupplierobj", supplier);
	}
	

	@RequestMapping(value = "editsupplier", method = RequestMethod.POST)
	public String editsupplier(@ModelAttribute(value = "editsupplierobj") Supplier supplier) {
		supplierdao.editsupplier(supplier);
		return "redirect:/supplierlist";
	}
	
	
}
