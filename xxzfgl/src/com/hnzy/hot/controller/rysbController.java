package com.hnzy.hot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("rysbCon")
@Controller
public class rysbController {
	
	@RequestMapping("rysb")
	public String rysb(){
		return"hrz/rysb";
	}
	@RequestMapping("jzsb")
	public String jzsb(){
		return"hrz/jzsb";
	}
}
