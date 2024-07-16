package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.helper.FileUploadHelper;
import com.example.demo.model.Product;
import com.example.demo.model.User;
import com.example.demo.service.ProductRepo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController{
	@Autowired
	private FileUploadHelper fileUploadHelper;

	@Autowired
	UserRepo userrepo;
	@Autowired
	ProductRepo prepo;
	@RequestMapping("index")
	public String index() {
		return "index";
	}
	@RequestMapping("index2")
	public String index2() {
		return "index2";
	}
	
	@RequestMapping("signup")
	public String signup()
	{
		return "signup";
	}
	
	@RequestMapping("login")
	public String login()
	{
		return "login";
	}
	@RequestMapping("movielist")
	public String movielist()
	{
		return "movielist";
	}
	@RequestMapping("movielistafter")
	
	public String movielistafter()
	{
		return "movielistafter";
	}
	@RequestMapping("movie1")
	public String movie1()
	{
		return "movie1";
	}
	
	@RequestMapping("regprocess")
	public String register(@RequestParam("uname") String name,
							@RequestParam("uemail") String email,
							@RequestParam("upass") String password,
							@RequestParam("uphno") String phno,
							@RequestParam("uans") String answer) 
	{
		User u =new User();
		u.setName(name);
		u.setEmail(email);
		u.setPhno(phno);
		u.setPassword(password);
		u.setAnswer(answer);
		userrepo.save(u);
		return "index";
	}
	
	
	@RequestMapping("loginproc")
	public String loginProc(@RequestParam("uemail")String email,
							@RequestParam("upass")String pass,
							ModelMap model,
							HttpSession session)
	{
		User u=null;
		try {
			u=userrepo.findByEmail(email);
		}catch(Exception e) {}
		if(u!=null)
		{
			session.setAttribute("data", email);
			return "index2";
		}
		else 
		{
			model.put("msg", "email or password error!");
			return "login";
		}
		
		
	}
	
	@RequestMapping("destroy")
	public String destroySession(HttpServletRequest request) {
		request.getSession().invalidate();
		return "index";
	
	}
	@RequestMapping("admlogin")
	public String adminlogin()
	{
		return "adminlogin";
	}
	@RequestMapping("admloginproc")
	public String admLoginProc(@RequestParam("uemail")String email,
								@RequestParam("upass")String pass,
								ModelMap model)
	{
		if(email.equals("admin@gmail.com")&& pass.equals("admin"))
		{
			return "admin_dashboard";
		}
		else 
		{
			model.put("msg", "email or password error!");
			return "adminlogin";
		}
	}
	
	@RequestMapping("admdash")
	public String adminDashboard()
	{
		return "admin_dashboard";
	}
	@RequestMapping("addproduct")
	public String addProduct()
	{
		return "add_product";
	}
	@RequestMapping("prod")
	public String product(@RequestParam("prodid")String pid,
						@RequestParam("prodname")String pname,
						@RequestParam("catagory")String catagory,
						/*@RequestParam("video")String video2,*/@RequestParam("video") MultipartFile file)
	{
		
	    try {
	    	
	    	boolean f=fileUploadHelper.uploadFile(file);
	    	
	    	String movname=file.getOriginalFilename();
	    	Product p=new Product();
			p.setProdId(pid);
			p.setProdName(pname);
		    p.setCatagory(catagory);
		    p.setVideo(movname);
			//userrepo.save(u);
		    prepo.save(p);
	    	System.out.println(movname);
	    }catch(Exception e) {}
		return "add_product";
	}
	@RequestMapping("viewproduct")
	public String viewProduct()
	{
		return "view_product";
	}
	 @RequestMapping("deleteproduct")
	    public String deleteProduct() {
	        return "delete_product";  
	    
	}
}
