package com.tuyenlm.computershop;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestParam;

@RestController
public class HelloController {

    @GetMapping("/")
    public String sayHello() {
        return "Hello, World!";
    }

    @GetMapping("/user")
    public String userPageString() {
        return "Hello, " + "Tuyên" + "!";
    }

    @GetMapping("/admin")
    public String adminPageString() {
        return "Hello, Admin " + "Tuyên" + "!";
    }

}
