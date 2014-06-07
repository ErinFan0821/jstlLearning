package com.erinfan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/jstlTest")
public class JstlLearningController {

    @RequestMapping(method = RequestMethod.GET)
    protected String showTestingResult(Model model) {

        List<String> testList = new ArrayList();
        testList.add("account1");
        testList.add("account2");
        testList.add("account3");
        testList.add("account4");

        model.addAttribute("accountList", testList);

        return "jstlTestPage";
    }
}
