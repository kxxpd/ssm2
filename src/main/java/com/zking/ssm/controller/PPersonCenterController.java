package com.zking.ssm.controller;

import com.zking.ssm.model.Room;
import com.zking.ssm.service.IPPersonCenterBiz;
import com.zking.ssm.service.IPRoomBiz;
import com.zking.ssm.vo.PCommentsVo;
import com.zking.ssm.vo.PRoomOrderInfo;
import com.zking.ssm.vo.RoomInfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/sys/person")
public class PPersonCenterController {

    //个人中心访问页面层

    @Autowired
    private IPPersonCenterBiz personCenterBiz;
    private PRoomOrderInfo roomOrderInfo;

    @ModelAttribute
    public void init(Model model){
        System.out.println("init开始了");
        PRoomOrderInfo roomOrderInfo = new PRoomOrderInfo();
        model.addAttribute("rm",roomOrderInfo);
    }

    @RequestMapping("/contact")
    public String tocontact(){
        return "contact";
    }

    //查询全部订单
    @RequestMapping("/roomOrder")
    public ModelAndView toroomOrder(PRoomOrderInfo rr,HttpServletRequest req, ModelAndView mv){
        List<PRoomOrderInfo> pRoomOrderInfos = personCenterBiz.showRoomOrder(rr.getName());
        mv.addObject("pRoomOrderInfos",pRoomOrderInfos);
        mv.addObject("name",rr.getName());
        mv.setViewName("Personalcenter");
        return mv;
    }

    //查询未出行
    @RequestMapping("/roomnotgo")
    public ModelAndView toroomnotgo(PRoomOrderInfo rr,HttpServletRequest req, ModelAndView mv){
        List<PRoomOrderInfo> pRoomOrderInfosno = personCenterBiz.showRoomOrdernotgo(rr.getName());
        mv.addObject("pRoomOrderInfosno",pRoomOrderInfosno);
        mv.addObject("name",rr.getName());
        mv.setViewName("Personalnotgo");
        return mv;
    }

    //查询待点评
    @RequestMapping("/toreview")
    public ModelAndView toreview(PRoomOrderInfo rr,HttpServletRequest req, ModelAndView mv){
        List<PRoomOrderInfo> pRoomOrderInfosview = personCenterBiz.showRoomtoreview(rr.getName());
        mv.addObject("pRoomOrderInfosview",pRoomOrderInfosview);
        mv.addObject("name",rr.getName());
        mv.setViewName("Personaltoreview");
        return mv;
    }




}
