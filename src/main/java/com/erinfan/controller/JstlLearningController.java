package com.erinfan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/jstlTest")
public class JstlLearningController{

    @RequestMapping(method = RequestMethod.GET)
    protected String showTestingResult(ModelMap model) {
        model.addAttribute("msg", "I am testing message!");
        return "jstlTestPage";
    }
}
