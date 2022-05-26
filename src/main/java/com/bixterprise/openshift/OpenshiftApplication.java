package com.bixterprise.openshift;

import java.util.HashMap;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
@RequestMapping("/api/hello")
public class OpenshiftApplication {

	@GetMapping("/{name}")
	public HashMap<String, String> hello(@PathVariable("name") String name){
		HashMap<String, String> re = new HashMap<>();
		re.put("Say", "Hello "+name);
		return re;
	}
	public static void main(String[] args) {
		SpringApplication.run(OpenshiftApplication.class, args);
	}

}
