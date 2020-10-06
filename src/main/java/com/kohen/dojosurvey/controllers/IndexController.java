package com.kohen.dojosurvey.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class IndexController {
	@GetMapping("/")
	public String index() {
		return "index";
	}

	@PostMapping("/submitInfo")
	public String submitInfo(HttpSession session, @RequestParam(value = "name") String name, @RequestParam(value = "dojo") String dojo,
			@RequestParam(value = "faveLan") String faveLan, @RequestParam(value = "comments") String comments) {
		session.setAttribute("name", name);
		session.setAttribute("dojo", dojo);
		session.setAttribute("faveLan", faveLan);
		session.setAttribute("comments", comments);
		return "redirect:/success";
	}
	
	@GetMapping("/success")
	public String counter(Model model, HttpSession session) {
		String name = (String) session.getAttribute("name");
		model.addAttribute("name", name);
		String dojo = (String) session.getAttribute("dojo");
		model.addAttribute("dojo", dojo);
		String faveLan = (String) session.getAttribute("faveLan");
		model.addAttribute("faveLan", faveLan);
		String comments = (String) session.getAttribute("comments");
		model.addAttribute("comments", comments);
		return "success";
	}
}
