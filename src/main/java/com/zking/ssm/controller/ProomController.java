package com.zking.ssm.controller;

import com.zking.ssm.model.Room;
import com.zking.ssm.service.IPRoomBiz;
import com.zking.ssm.vo.PCommentsVo;
import com.zking.ssm.vo.RoomInfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping("/sys/room")
public class ProomController {

    //房间访问页面层

    @Autowired
    private IPRoomBiz roomBiz;
    private Room room;

    @ModelAttribute
    public void init(Model model){
        System.out.println("init开始了");
        Room room = new Room();
        model.addAttribute("rm",room);
    }

    @RequestMapping("/toBookNow")
    public ModelAndView toBookNow(Room room ,HttpServletRequest req, ModelAndView mv){
        RoomInfoVo roomList = roomBiz.list(room.getId());
        List<PCommentsVo> pCommentsVoList = roomBiz.commList(roomList.getCommentsId());
        mv.addObject("roomList",roomList);
        mv.addObject("pCommentsVoList",pCommentsVoList);
        System.out.println(pCommentsVoList.toString());
        mv.setViewName("booknow");
        return mv;
    }
    @RequestMapping("/an")
    public String toHtIndex(){
        return "htindex";
    }

    @RequestMapping("/welcome")
    public String towelcome(){
        return "welcome";
    }




}
