package com.fooday.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fooday.model.CategoryVo;
import com.fooday.model.LoginVo;
import com.fooday.model.ProductVo;
import com.fooday.model.RestaurantVo;
import com.fooday.service.CategoryService;
import com.fooday.service.LoginService;
import com.fooday.service.ProductService;
import com.fooday.service.RestaurantService;
import com.fooday.utils.baseMethods;

@Controller
public class ProductController {
	@Autowired
	CategoryService categoryservice;

	@Autowired
	ProductService productservice;

	@Autowired
	LoginService loginservice;
	
	@Autowired
	RestaurantService restaurantservice;

	@RequestMapping(value = "restaurantAdmin/index.html", method = RequestMethod.GET)
	public ModelAndView home() {
		return new ModelAndView("restaurantAdmin/index");
	}

	@RequestMapping(value = "restaurantAdmin/viewProduct", method = RequestMethod.GET)
	public ModelAndView product(@ModelAttribute ProductVo productvo, LoginVo loginvo) {
		String username = baseMethods.getUser();
		loginvo.setUsername(username);

		List userData = loginservice.getStatus(loginvo);
		LoginVo loginVo2 = (LoginVo) userData.get(0);

		productvo.setLoginvo(loginVo2);

		List productList = productservice.searchProduct(productvo);
		return new ModelAndView("restaurantAdmin/viewProduct", "productList", productList);
	}

	@RequestMapping(value = "restaurantAdmin/addProduct", method = RequestMethod.GET)
	public ModelAndView addWizard(@ModelAttribute ProductVo productvo, CategoryVo categoryvo) {
		List categorylist = categoryservice.searchCategory(categoryvo);

		return new ModelAndView("restaurantAdmin/addProduct", "productvo", new ProductVo()).addObject("categorylist",
				categorylist);
	}

	@RequestMapping(value = "restaurantAdmin/addProduct.html", method = RequestMethod.POST)
	public ModelAndView addProduct(@ModelAttribute ProductVo productvo, LoginVo loginvo,
			@RequestParam(name = "file") List<MultipartFile> file, HttpSession session) {
		String link = "";
		int fileSize = file.size();
		for (int i = 0; i < fileSize; i++) {
			String path = session.getServletContext().getRealPath("/");
			String filename = file.get(i).getOriginalFilename();
			String filePath = path + "document/";
			System.out.print("Data>>>>>>>" + filename + filePath);
			try {
				byte b[] = file.get(i).getBytes();

				BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(
						new FileOutputStream(filePath + filename));
				bufferedOutputStream.write(b);
				bufferedOutputStream.flush();
				bufferedOutputStream.close();

			} catch (Exception e) {
				e.printStackTrace();
			}

			String temp_link = baseMethods.s3FileUpload(filePath + "/" + filename);
			System.out.println("TempLink>>>>>>>" + temp_link);
			link = link + temp_link;
			if (i < (fileSize - 1)) {
				link = link + ",";
			}
		}
		productvo.setProductImageUrl(link);

		String username = baseMethods.getUser();

		loginvo.setUsername(username);
		List userData = loginservice.getStatus(loginvo);

		LoginVo loginVo2 = (LoginVo) userData.get(0);
		System.out.println(loginVo2.getLoginId());

		productvo.setLoginvo(loginVo2);

		System.out.println("Link>>>>>>>" + link);

		productservice.insertProduct(productvo);

		System.out.println("Files>>>>>>>>>>>" + file);
		return new ModelAndView("redirect:/restaurantAdmin/viewProduct");
	}

	@RequestMapping(value = "restaurantAdmin/deleteProductId.html", method = RequestMethod.GET)
	public ModelAndView deleteProduct(@ModelAttribute ProductVo productvo, HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));

		productvo.setId(productId);

		List productList = productservice.searchProductById(productvo);

		ProductVo productvo1 = (ProductVo) productList.get(0);
		productvo1.setStatus(false);

		productservice.updateProduct(productvo1);
		return null;
	}

	@RequestMapping(value = "restaurantAdmin/editProduct", method = RequestMethod.GET)
	public ModelAndView editProduct(@ModelAttribute ProductVo productvo,CategoryVo categoryvo, HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));

		productvo.setId(productId);

		List productList = productservice.searchProductById(productvo);
		List categorylist = categoryservice.searchCategory(categoryvo);
		
		ProductVo productvo2 = (ProductVo) productList.get(0);
		int categoryId = productvo2.getCategoryvo().getId();
	
		categoryvo.setId(categoryId);
		
		
		return new ModelAndView("restaurantAdmin/editProduct", "productvo", productList.get(0))
				.addObject("categorylist", categorylist).addObject("categoryId", categoryId);
	}
	
	@RequestMapping(value = "admin/viewRestaurantProduct.html", method = RequestMethod.GET)
	public ModelAndView adminViewProduct(@ModelAttribute ProductVo productvo, LoginVo loginvo) {
		
		List productList = productservice.searchAllProduct(productvo);
		return new ModelAndView("admin/viewProduct", "productList", productList);
	}
	
	@RequestMapping(value = "user/viewRestaurantProduct.html", method = RequestMethod.GET)
	public ModelAndView View(@ModelAttribute ProductVo productvo,RestaurantVo restaurantvo,HttpServletRequest request,HttpSession session)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		session.setAttribute("restaurantId", id);
		LoginVo loginvo = new LoginVo();
		loginvo.setLoginId(id);
		productvo.setLoginvo(loginvo);;
		List productList = productservice.searchProduct(productvo);
		
		restaurantvo.setLoginvo(loginvo);
		List restaurantList = restaurantservice.SearchRestaurantById(restaurantvo);
		
		return new ModelAndView("user/viewRestaurantProduct", "productList", productList).addObject("restaurantList", restaurantList);
	}
}
