package com.klef.demo;

import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FarmerController {
	@Autowired
	farmer_service serv;
	@Autowired
	EntityManager entityManager;
	
	
	@GetMapping("/home")
	public ModelAndView home()
	{
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("home");
	  return mv;
	}
	
	@GetMapping("/form")
	public ModelAndView form()
	{
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("form");
	  return mv;
	}
	
	@PostMapping("/form_fill")
	public String formfill(@RequestParam("season")String season,@RequestParam("soil")String soil,@RequestParam("seed")String seed)
	{
		suggested_seeds ss=new suggested_seeds();
		ss.setSeason(season);
		ss.setSoil(soil);
		ss.setSeed(seed);
		serv.add_formfill(ss);
		return "redirect:/form";
	}
	
	@GetMapping("/error")
	public ModelAndView error()
	{
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("error");
	  return mv;
	}

	@GetMapping("/farmer_index")
	public ModelAndView farmer_index()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("farmer_index");
		return mv;
	}
	
	@GetMapping("/farmer_signin")
	public ModelAndView farmer_signin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("farmer_signin");
		return mv;
	}
	
	@GetMapping("/farmer_signup")
	public ModelAndView farmer_signup()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("farmer_signup");
		return mv;
	}
	
	@PostMapping("/farmer_signup_register")
	public String submituser(@RequestParam("name")String name,@RequestParam("email")String email,@RequestParam("phonenumber")String phonenumber,@RequestParam("address")String address,@RequestParam("password")String password)
	{
		farmer_profile fp=new farmer_profile();
		fp.setName(name);
		fp.setEmail(email);
		fp.setPhonenumber(phonenumber);
		fp.setAddress(address);
		fp.setPassword(password);
		serv.add_farmer_profile(fp);
		//ModelAndView mv=new ModelAndView();
		//mv.setViewName("farmer_homepage");
		//mv.addObject(fp);
		//return mv;
		return "redirect:/farmer_signin";
	}
	
	@PostMapping("/farmer_login")
	public String userlogin(@RequestParam("email")String email,@RequestParam("password")String password,HttpServletRequest req)
	{  
		ModelAndView mv=new ModelAndView();
	    List<farmer_profile> users = serv.farmerlogin(email, password);
	    if(users.isEmpty())
	    {
	    	//mv.setViewName("error");
	        //return "error";
	    	return "redirect:/error";
	    }
	    HttpSession sess=req.getSession();
	    sess.setAttribute("email",email);
	    sess.setAttribute("id",users.get(0).getId());
	    
		return "redirect:/farmer_homepage";
	}
	
	@GetMapping("/farmer_homepage")
	public ModelAndView farmer_homepage()
	{
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("farmer_homepage");
	  return mv;
	}
	
	@GetMapping("/farmer_sellyourcrops")
	public ModelAndView farmer_sellyourcrops()
	{
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("farmer_sellyourcrops");
	  return mv;
	}
	
	@PostMapping("/farmer_sellyourcrops_register")
	public String farmer_sellyourcrops_register(@RequestParam("cropname")String cropname,@RequestParam("quantity")String quantity,@RequestParam("cost")int cost,HttpServletRequest req)
	{
		HttpSession sess=req.getSession(false);
		farmer_sellyourcrops fsyc=new farmer_sellyourcrops();
		fsyc.setEmail((String)sess.getAttribute("email"));
		fsyc.setCropname(cropname);
		fsyc.setQuantity(quantity);
		fsyc.setCost(cost);
		fsyc.setStatus("Not Accepted");
		System.out.println("hello");
		
		serv.add_farmer_sellyourcrops(fsyc);
		System.out.println("huyy");
		return "redirect:/farmer_homepage";
	}
	
	@GetMapping("/get_CropsYouSold")
	public ModelAndView get_CropsYouSold(HttpServletRequest req)
	{
		HttpSession sess=req.getSession(false);
		List<farmer_sellyourcrops> fsyc=serv.get_CropsYouSold((String)sess.getAttribute("email"));
		for(int i=0;i<fsyc.size();i++)
		{
			farmer_sellyourcrops x=fsyc.get(i);
			System.out.println(x.getCropname()+""+x.getId());
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("farmer_CropsYouSold");
		mv.addObject("fsyc",fsyc);
		return mv;
	}
	
	@GetMapping("/farmer_buyseeds")
	public ModelAndView farmer_buyseeds()
	{
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("farmer_buyseeds");
	  return mv;
	}
	
	@PostMapping("/get_suggestedseed")
	public ModelAndView get_suggestedseed(@RequestParam("season")String season,@RequestParam("soil")String soil,HttpServletRequest req)
	{
		//HttpSession sess=req.getSession(false);
		List<suggested_seeds> ss=serv.get_suggestedseed(season,soil);
		for(int i=0;i<ss.size();i++)
		{
			suggested_seeds x=ss.get(i);
			System.out.println(x.getSoil()+" "+x.getSeed());
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("farmer_buyseeds");
		mv.addObject("ss",ss);
		return mv;
		//return "redirect:/farmer_homepage";
	}
	
	
	
	@GetMapping("/farmer_logout")
	public String userlogout(HttpServletRequest req)
	{
	    HttpSession sess=req.getSession(false);
		System.out.println(sess.getAttribute("email"));
		sess.removeAttribute("email");
		System.out.println(sess.getAttribute("id"));
		sess.removeAttribute("id");
		return "redirect:/home";
	}
}
