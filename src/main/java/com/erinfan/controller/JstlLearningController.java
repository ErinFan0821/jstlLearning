package com.erinfan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/jstlTest")
public class JstlLearningController{

    @RequestMapping(method = RequestMethod.GET)
    protected String showTestingResult() {
        return "jstlTestPage";
    }
}
