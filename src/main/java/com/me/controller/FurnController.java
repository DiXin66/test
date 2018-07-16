package com.me.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.me.PropertyUtils;
import com.me.Strings;
import com.me.pojo.Furn;
import com.me.service.FurnService;

/**
 * 家居
 *
 */
@Controller
@RequestMapping("/furn")
public class FurnController {
	
	@Autowired
	private FurnService furnService;
	
	@RequestMapping("home")
	public String home(Model model,HttpServletRequest request,String name){
		Page<Furn> page = com.me.ConUtils.setPage(request);
		if(Strings.isEmpty(name)){
			furnService.getFurnlist();
		}else{
			furnService.getFurnlist2(name);
		}
		PageInfo<Furn> pageInfo = page.toPageInfo();
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("name", name);
		return "furn/index";
	}
	
	@RequestMapping("add")
	public String addOrEdit(Integer id,Model model){
		if(null == id){
			return "furn/edit";
		}
		Furn info = furnService.getFurnById(id);
		model.addAttribute("info", info);
		return "furn/edit";
	}
	
	@RequestMapping("/save")
	public String save(Furn furn,MultipartFile pic){
		if(!pic.isEmpty()){
			furn.setPicture(pic.getOriginalFilename());
		}
		if(furn.getId()==null){	
			furnService.addInfo(furn);
		}else{
			furnService.updateInfo(furn);
		}
		if(!pic.isEmpty()){
			File newFile = new File(PropertyUtils.getProperty("template")+pic.getOriginalFilename());
			try {
				pic.transferTo(newFile);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "redirect:/furn/home";
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public int delete(int id){
		return furnService.deleteFurn(id);
	}

}
