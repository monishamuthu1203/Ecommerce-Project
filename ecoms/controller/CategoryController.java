package shan.ecoms.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import shan.ecoms.dao.CategoryDAO;
import shan.ecoms.model.Category;


@Controller
public class CategoryController {
	
	@Autowired
	CategoryDAO categorydao;

	@RequestMapping(value="category", method=RequestMethod.GET)
	public ModelAndView sendcategory(@ModelAttribute("category")Category category)
	{
		ModelAndView mv=new ModelAndView("category");
		return mv;
	}
	
	
	@RequestMapping(value="category", method=RequestMethod.POST)
	public ModelAndView getCategory(Category category)
	{
		
		categorydao.addCategory(category);
		ModelAndView mv=new ModelAndView("category","category",new Category());
		return mv;			
	}
	@RequestMapping("/categorylist")
	public ModelAndView categorylist() {
		  List<Category> category = categorydao.categorylist(); return new
		  ModelAndView("categorylist", "category", category); 
		  }
	
	@RequestMapping("deletecategory/{catid}")
	public String deleteCategory(@PathVariable(value = "catid") String catid) {

		

		categorydao.deletecategory(catid);
		
		return "redirect:/categorylist";
	}
	@RequestMapping(value = "editcategory/{catid}")
	public ModelAndView getEditForm(@PathVariable(value = "catid") String catid) {
		Category category = categorydao.getcatid(catid);
		return new ModelAndView("editcategory", "editcategoryobj", category);
	}
	

	@RequestMapping(value = "editcategory", method = RequestMethod.POST)
	public String editcategory(@ModelAttribute(value = "editcategoryobj") Category category) {
		categorydao.editcategory(category);
		return "redirect:/categorylist";
	}
	
	


	
	
	
}
						


