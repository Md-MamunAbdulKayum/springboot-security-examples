package com.notearena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController {

	@GetMapping("/")
	public String getHomePage() {
		return "dashboard";
	}
	
	@GetMapping("/news")
	public String getNewsPage() {
		return "news";
	}
	
	@GetMapping("/about")
	public String getAboutPage() {
		return "about";
	}
	
	@GetMapping("/employer/settings")
	public String getEmployerSettingsPage() {
		return "leaderSettings";
	}
	
	@GetMapping("/employer/updates")
	public String getEmployerUpdatesPage() {
		return "leaderUpdates";
	}
	
	@GetMapping("/system/settings")
	public String getAdminSettingsPage() {
		return "systemSettings"; 
	}
	
	@GetMapping("/system/updates")
	public String getSystemUpdatesPage() {
		return "systemUpdates";
	}
	
	@GetMapping("/jobs")
	public String getJobPostsPage() {
		return "jobPosts";
	}
}
