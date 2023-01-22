package com.DockerDemo.Controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class BaicAPIController {
	@RequestMapping(value = "/helloworld", method=RequestMethod.GET)
	public String hellworld() {
		return "hell of the world :(";
	}

}
