package com.klef.demo;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class admin_controller {
	@Autowired
	admin_service adserv;
	@Autowired
	EntityManager entityManager;
	
	@GetMapping("/admin_signin")
	public ModelAndView admin_signin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("admin_signin");
		return mv;
	}
	
	@PostMapping("/admin_login")
	public String admin_login(@RequestParam("email")String email,@RequestParam("password")String password,HttpServletRequest req)
	{
		if(email.equals("admin123@gmail.com"))
		{
			return "redirect:/admin_homepage";
		}
		return "redirect:/home";
	}
	
	@GetMapping("/admin_homepage")
	public ModelAndView admin_homepage()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("admin_homepage");
		return mv;
	}
	
	@GetMapping("/get_farmers_profile")
	public ModelAndView get_farmers_profile()
	{
		List<farmer_profile> fp=adserv.get_farmers_profile();
		/*for(int i=0;i<fp.size();i++)
		{
			farmer_profile x=fp.get(i);
			System.out.println(x.getName()+""+x.getId());
		}*/
		ModelAndView mv=new ModelAndView();
		mv.setViewName("admin_farmers_profile");
		mv.addObject("fp",fp);
		return mv;
	}
	
	@GetMapping("/get_FarCropReq")
	public ModelAndView get_FarCropReq()
	{
		List<farmer_sellyourcrops> fcr=adserv.get_FarCropReq();
		for(int i=0;i<fcr.size();i++)
		{
			farmer_sellyourcrops x=fcr.get(i);
			System.out.println(x.getCropname()+""+x.getId());
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("admin_DisFarmCropReq");
		mv.addObject("fcr",fcr);
		return mv;
	}
	
	@GetMapping("/updateFCR/{id}")
	public String updateFCR(@PathVariable("id")int id,HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		adserv.updateFCR(id);
		return "redirect:/get_FarCropReq";
	}
}
