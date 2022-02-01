package com.klef.demo;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class admin_service {

	 @Autowired
	 farmer_repository rep;
	 @Autowired
	 farmer_sellyourcrops_repository fsycrep;
	 @Autowired
	 EntityManager entityManager;
	 
	 public List<farmer_profile> get_farmers_profile()
	 {
		 return (List<farmer_profile>) rep.findAll();
	 }
	 
	 public List<farmer_sellyourcrops> get_FarCropReq()
	 {
		 return (List<farmer_sellyourcrops>) fsycrep.findAll();
	 }
	 public void updateFCR(int id)
	 {
		 farmer_sellyourcrops fsyc=new farmer_sellyourcrops();
		 fsyc=fsycrep.findById(id).get();
		 fsyc.setStatus("Accepted");
		 fsycrep.save(fsyc);
	 }
}
