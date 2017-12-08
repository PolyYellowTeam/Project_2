package com.Controllers;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.Entities.Banners;
import com.Models.BannerModel;

@Transactional
@Controller
public class BannerAdminController {

	@Autowired
	SessionFactory factory;
	ServletContext context;

	private BannerModel baModel;

	@RequestMapping(value = "admin/QLBAdata", method = RequestMethod.GET)
	public String QLBAdata(ModelMap model) {
		baModel = new BannerModel();

		List<Banners> listBa = baModel.getDataBanner();
		model.addAttribute("listBa", listBa);

		return "admin/QLBAdata";
	}

	@RequestMapping(value = "admin/QLBAadd", method = RequestMethod.GET)
	public String QLBAadd(ModelMap model) {
		model.addAttribute("BA", new Banners());
		return "admin/QLBAadd";
	}

	@RequestMapping(value = "admin/QLBAdata/addBA", headers = "content-type=multipart/*", method = RequestMethod.POST)
	public String QLBAadd(ModelMap model, HttpServletRequest request, @ModelAttribute("BA") Banners banners,
			@RequestParam("bannerImgUrl") MultipartFile bannerImgUrl) {

		String filename = bannerImgUrl.getOriginalFilename();

		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		if (!filename.equals(""))
			try {
				banners.setBannerImgUrl("images/" + filename);
				String photoPath = context.getRealPath("/images/" + bannerImgUrl.getOriginalFilename());

				bannerImgUrl.transferTo(new File(photoPath));
				session.save(banners);
				transaction.commit();
				model.addAttribute("message", "Add new successful!!");
			} catch (Exception e) {
				transaction.rollback();
				model.addAttribute("message", "Add new failed!!");
				return "admin/QLBAadd";
			} finally {
				session.close();
			}
		return "admin/QLBAdata";
	}

}
