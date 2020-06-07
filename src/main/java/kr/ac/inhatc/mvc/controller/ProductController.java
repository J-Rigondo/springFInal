package kr.ac.inhatc.mvc.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.inhatc.mvc.dto.ProductDto;
import kr.ac.inhatc.mvc.dto.FileDto;
import kr.ac.inhatc.mvc.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	
	@RequestMapping(value= {"/productList","product/productList"}, method=RequestMethod.GET)
	public String productList(Model model) throws Exception {
		List<?> pList = productService.selectProductList();		
		model.addAttribute("productList", pList);
		return "productList";
	}
	
	@RequestMapping(value= {"/productDetail"}, method=RequestMethod.GET)
	public String productDetail(Model model, @RequestParam("productId") String productId) throws Exception {
		HashMap<?,?> product = productService.productDetail(productId);
		
		model.addAttribute("product", product);
		return "productDetail";
	}
	
	@RequestMapping(value= {"/addProduct"}, method=RequestMethod.GET)
	public String addProduct(Model model) throws Exception {		
		return "manager/addProduct";
	}
	
	@RequestMapping(value= {"/product/add"},  method=RequestMethod.POST)
	public String addProduct(Model model,@ModelAttribute FileDto FD) throws Exception{	
		
		productService.addProduct(FD);
		return "redirect:productList";		
	}
	
	
}
