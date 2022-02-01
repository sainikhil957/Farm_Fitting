package com.klef.demo;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class farmer_service {
	 @Autowired
	 farmer_repository rep;
	 @Autowired
	 farmer_sellyourcrops_repository sycrep;
	 @Autowired
	 suggested_seeds_repository ssrep;
	 @Autowired
	 EntityManager entityManager;
	 
	 public void add_farmer_profile(farmer_profile fp)
	 {
		 rep.save(fp);
	 }

	 public List<farmer_profile> farmerlogin(String email,String password)
	 {
		 Query query = entityManager.createQuery("select u from farmer_profile u where u.email=:email and u.password=:password");
			query.setParameter("email",email);
			query.setParameter("password", password);
		    List<farmer_profile> users = query.getResultList();
		    return users;
	 }
	 
	 public void add_farmer_sellyourcrops(farmer_sellyourcrops fsyc)
	 {
		 sycrep.save(fsyc);
	 }
	 
	 public List<farmer_sellyourcrops> get_CropsYouSold(String email)
	 {
		 Query query = entityManager.createQuery("from farmer_sellyourcrops where email=:email");
			query.setParameter("email",email);
			List<farmer_sellyourcrops> res=query.getResultList();
			return res;
		 //return (List<farmer_sellyourcrops>) sycrep.findAll();
	 }
	 
	 public void add_formfill(suggested_seeds ss)
	 {
		 ssrep.save(ss);
	 }
	 
	 public List<suggested_seeds> get_suggestedseed(String season,String soil)
	 {
		 //farmer_sellyourcrops fsyc=new farmer_sellyourcrops();
		 //suggested_seeds ss=new suggested_seeds();
		 //ss=sscrep.findById(season,soil).get();
		 //return (List<farmer_profile>) rep.findAll();
		 
		 Query query = entityManager.createQuery("from suggested_seeds where season=:season and soil=:soil");
			query.setParameter("season",season);
			query.setParameter("soil", soil);
			List<suggested_seeds> res=query.getResultList();
			return res;
	 }
}
