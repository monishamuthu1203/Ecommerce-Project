package shan.ecoms.controller;


import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;

import shan.ecoms.dao.ProductDAO;
import shan.ecoms.model.Product;


@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productdao;
	
	@RequestMapping(value="product", method=RequestMethod.GET)
	public String addProduct(@ModelAttribute("product")Product product, HttpServletRequest request,RedirectAttributes attributes)
	{
	
		productdao.addProduct(product);

		//copy absolute path of image folder from the drive and use in the below given format.

		String path="C:\\DTProject\\Ecommerce\\src\\main\\webapp\\resources\\images\\";
		path=path+String.valueOf(product.getProductid())+".jpg";
		File f=new File(path);
	
		MultipartFile filedet=product.getPimage();
		
		if(!filedet.isEmpty())
		{
			try
			{
			  byte[] bytes=filedet.getBytes();
			  System.out.println(bytes.length);
			  FileOutputStream fos=new FileOutputStream(f);
              			BufferedOutputStream bs=new BufferedOutputStream(fos);
              			bs.write(bytes);
              			bs.close();
             			 System.out.println("File Uploaded Successfully");
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised"+e);
			}
		}
		else
		{
			System.out.println("File is Empty not Uploaded");
			
		}
		
		
		return "Product";
	}
	public ModelAndView sendproduct(@ModelAttribute("product")Product product)
	{
		ModelAndView mv=new ModelAndView("product");
		return mv;
	}
	
	
	@RequestMapping(value="product", method=RequestMethod.POST)
	public ModelAndView getProduct(Product product)
	{
		
		productdao.addProduct(product);
		ModelAndView mv=new ModelAndView("product","product",new Product());
		return mv;			
	}
	@RequestMapping("/productlist")
	public ModelAndView productlist() {
		  List<Product> product = productdao.productlist(); return new
		  ModelAndView("productlist", "product", product); 
		  }
	

@RequestMapping("deleteproduct/{productid}")
public String deleteProduct(@PathVariable(value = "productid") int productid) {

	

	productdao.deleteproduct(productid);
	
	return "redirect:/productlist";
}
@RequestMapping(value = "editproduct/{productid}")
public ModelAndView getEditForm(@PathVariable(value = "productid") int productid) {
	Product product = productdao.getproductid(productid);
	return new ModelAndView("editproduct", "editproductobj", product);
}


@RequestMapping(value = "editproduct", method = RequestMethod.POST)
public String editproduct(@ModelAttribute(value = "editproductobj") Product product) {
	productdao.editproduct(product);
	return "redirect:/productlist";
}

}
