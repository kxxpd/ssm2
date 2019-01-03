package com.zking.ssm.controller;

import com.zking.ssm.model.Customer;
import com.zking.ssm.model.User;
import com.zking.ssm.service.IPCustomerBiz;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/sys/customer")
public class PCustomerrController {

    @Autowired

    private IPCustomerBiz customerBiz;
    private Customer customer;


    @ModelAttribute
    public void init(Model model){
        System.out.println("这是个登录");
        Customer cc = new Customer();
        model.addAttribute("lo",cc);
    }

    @RequestMapping("/login")
    public String toLogin() {
        return "userLogin";
    }



    @RequestMapping("/dologin")
    public ModelAndView dologin(HttpServletRequest req, ModelAndView mv) {
        String customername=req.getParameter("customerName");
        String password=req.getParameter("passWord");
        Customer b = customerBiz.customerLogin(customername,password);
        mv.addObject("customername",customername);
        System.out.println("最后结果   "+b);
        if(b!=null){
            mv.setViewName("index");
        }else {
            mv.setViewName("userLogin");
        }
        return mv;
    }



}
