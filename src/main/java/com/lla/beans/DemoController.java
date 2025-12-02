package com.lla.beans;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/api")
public class DemoController {
    
    @GetMapping("/hello")
    public String hello() {
        log.info("Hello endpoint called");
        log.error("Hello endpoint error log");
        return "Hello from DemoController!";
    }
    
    @GetMapping("/demo")
    public String demo() {
        log.info("Demo endpoint called");
        return "Demo endpoint working!";
    }
}
