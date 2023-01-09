package com.fooday.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fooday.model.AreaVo;
import com.fooday.model.CityVo;
import com.fooday.model.LoginVo;
import com.fooday.model.UserRegisterVo;
import com.fooday.model.RestaurantVo;
import com.fooday.model.StateVo;
import com.fooday.service.AreaService;
import com.fooday.service.CityService;
import com.fooday.service.LoginService;
import com.fooday.service.RestaurantService;
import com.fooday.service.StateService;
import com.fooday.service.UserService;
import com.fooday.utils.baseMethods;

@Controller
public class FoodContoller {
	@Autowired
	StateService stateservice;

	@Autowired
	CityService cityservice;

	@Autowired
	AreaService areaservice;

	@Autowired
	LoginService loginservice;

	@Autowired
	UserService userservice;

	@Autowired
	RestaurantService restaurantservice;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView loadLogin() {

		return new ModelAndView("login");
	}

	@RequestMapping(value = "userRegister", method = RequestMethod.GET)
	public ModelAndView userRegister(@ModelAttribute UserRegisterVo uservo) {

		return new ModelAndView("userRegister", "uservo", new UserRegisterVo());
	}

	@RequestMapping(value = "addUser.html", method = RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute UserRegisterVo uservo, HttpServletRequest request) {

		String email = request.getParameter("email");
		String password = baseMethods.generatePassword();
		LoginVo loginvo = uservo.getLoginVo();
		loginvo.setUsername(email);
		loginvo.setRole("ROLE_USER");
		loginvo.setStatus(true);
		loginvo.setPassword(password);

		loginservice.insertUser(loginvo);

		userservice.InsertUsre(uservo);

		return new ModelAndView("login");
	}

	@RequestMapping(value = "restaurantRegister", method = RequestMethod.GET)
	public ModelAndView register(@ModelAttribute RestaurantVo restaurantvo) {

		return new ModelAndView("restaurantRegister", "restaurantvo", new RestaurantVo());
	}

	@RequestMapping(value = "stateAjax.html", method = RequestMethod.GET)
	public ModelAndView state(@ModelAttribute StateVo statevo) {
		List statelist = stateservice.searchState(statevo);
		System.out.println(statelist);
		return new ModelAndView("admin/jsonState", "statelist", statelist);
	}

	@RequestMapping(value = "cityAjax.html", method = RequestMethod.GET)
	public ModelAndView citySearch(@ModelAttribute StateVo statevo, @ModelAttribute CityVo cityvo,
			HttpServletRequest request) {
		int stateId = Integer.parseInt(request.getParameter("id"));

		System.out.println("Stateid:" + stateId);

		statevo.setId(stateId);
		cityvo.setStatevo(statevo);

		List citylist = cityservice.jsonCity(cityvo);

		return new ModelAndView("admin/jsonCity", "citylist", citylist);
	}

	@RequestMapping(value = "areaAjax.html", method = RequestMethod.GET)
	public ModelAndView areaSearch(@ModelAttribute CityVo cityvo, @ModelAttribute AreaVo areavo,
			HttpServletRequest request) {
		int cityId = Integer.parseInt(request.getParameter("id"));

		System.out.println("Cityid:" + cityId);
		cityvo.setId(cityId);
		areavo.setCityvo(cityvo);

		List arealist = areaservice.jsonAreaData(areavo);

		return new ModelAndView("admin/jsonArea", "areaList", arealist);
	}

	@RequestMapping(value = "addRestaurant.html", method = RequestMethod.POST)
	public ModelAndView addRestaurant(@ModelAttribute RestaurantVo restaurantvo, 
			@RequestParam(name = "file") List<MultipartFile> file,
			@RequestParam(name = "icon") List<MultipartFile> icon, HttpServletRequest request, HttpSession session) {

		String email = request.getParameter("email");
		String password = baseMethods.generatePassword();
		LoginVo loginvo = restaurantvo.getLoginvo();
		loginvo.setUsername(email);
		loginvo.setRole("ROLE_RESTAURANT");
		loginvo.setPassword(password);

		loginservice.insertRestaurant(loginvo);

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
		restaurantvo.setImage(link);

		link = "";
		fileSize = icon.size();
		for (int i = 0; i < fileSize; i++) {
			String path = session.getServletContext().getRealPath("/");
			String filename = icon.get(i).getOriginalFilename();
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
		}
		restaurantvo.setProfileImage(link);
		restaurantservice.InsertRestaurant(restaurantvo);
		/*
		 * @RequestParam(name = "chef_name") String[] chefName,
		 * 
		 * @RequestParam(name = "chef_contact") String[] chefContact,
		 * 
		 * @RequestParam(name = "chef_email") String[] chefEmail,
		 * 
		 * @RequestParam(name = "chef_photo") MultipartFile[] imgFile,
		 * managervo.setLoginvo(loginvo);
		 * managervo.setManagerName(request.getParameter("manager_name"));
		 * managervo.setContactNumber(request.getParameter("manager_contact"));
		 * managervo.setEmailAddress(request.getParameter("manager_email"));
		 * managervo.setStatus(true);
		 * System.out.println(":::::Data::::"+managervo + loginvo +
		 * request.getParameter("manager_name"));
		 * 
		 * managerservice.InsertManager(managervo);
		 * System.out.println(">>>>>Length<<<<<<<<<"+chefName.length);
		 * 
		 * for (int i = 0; i < chefName.length; i++) {
		 * 
		 * String fileName = imgFile[i].getOriginalFilename(); String str =
		 * request.getSession().getServletContext().getRealPath("/"); String
		 * filePath = str + "document/";
		 * 
		 * try {
		 * 
		 * byte br[] = imgFile[i].getBytes(); BufferedOutputStream bout = new
		 * BufferedOutputStream(new FileOutputStream(filePath + "/" +
		 * fileName)); bout.write(br); bout.flush(); bout.close();
		 * 
		 * } catch (Exception e) { e.printStackTrace(); } String temp_link =
		 * baseMethods.s3FileUpload(filePath + "/" + fileName);
		 * System.out.println("TempLink>>>>>>>" + temp_link);
		 * 
		 * RestaurantChefVo chefvo = new RestaurantChefVo();
		 * chefvo.setChefName(chefName[i]); chefvo.setStatus(true);
		 * chefvo.setContactNumber(chefContact[i]);
		 * chefvo.setEmailAddress(chefEmail[i]);
		 * chefvo.setProfileImageUrl(temp_link); chefvo.setLoginvo(loginvo);
		 * 
		 * System.out.println(":::::Data::::"+chefvo + loginvo +
		 * request.getParameter("manager_name"));
		 * 
		 * chefservice.InsertChef(chefvo);
		 * 
		 * }
		 */
		return new ModelAndView("login");
	}

	@RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	public ModelAndView adminIndex() {
		return new ModelAndView("admin/index");
	}

	@RequestMapping(value = "/restaurantAdmin/index", method = RequestMethod.GET)
	public ModelAndView restaurantAdminIndex() {

		return new ModelAndView("restaurantAdmin/index");
	}

	@RequestMapping(value = "/user/index", method = RequestMethod.GET)
	public ModelAndView userIndex(@ModelAttribute RestaurantVo restaurantvo) {

		List restaurantList = restaurantservice.SearchRestaurant(restaurantvo);
		int listSize = restaurantList.size();
		return new ModelAndView("user/index", "data", restaurantList).addObject("size", listSize);
	}

	@RequestMapping(value = "/logout", method = { RequestMethod.POST, RequestMethod.GET })
	public String viewUserDetails(ModelMap model, HttpServletResponse response, HttpServletRequest request) {

		System.out.print("logout successfull");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
			request.getSession().invalidate();
			request.getSession().setAttribute("tempStatus", "success");
			request.getSession().setAttribute("statusText", "Logout Successfully!");
		}

		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView load() {

		return new ModelAndView("login");
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView load403() {

		return new ModelAndView("login");
	}

	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public ModelAndView error() {

		return new ModelAndView("login");
	}

	@RequestMapping(value = "index.html", method = RequestMethod.GET)
	public ModelAndView index2() {
		return new ModelAndView("/admin/index");
	}

}
