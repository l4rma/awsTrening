package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
class CDController {

    @GetMapping(path = "/")
    public String hello() {
        return "Hello world!\n";
    }

	 @GetMapping(path = "/api/test")
	 public String msg() {
		 return "This is a test!\n";
	 }

}
