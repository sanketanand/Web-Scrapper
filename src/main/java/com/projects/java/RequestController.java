package com.projects.java;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RequestController {

	@RequestMapping("/getTimeStories")
	public String func() {
		return "news.jsp";
	}
}
