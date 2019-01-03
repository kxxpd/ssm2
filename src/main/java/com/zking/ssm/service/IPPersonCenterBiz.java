package com.zking.ssm.service;

import com.zking.ssm.model.Customer;
import com.zking.ssm.model.Roomorder;
import com.zking.ssm.vo.PRoomOrderInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IPPersonCenterBiz {

    int deleteByPrimaryKey(String id);

    int insert(Roomorder record);

    int insertSelective(Roomorder record);

    Roomorder selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Roomorder record);

    int updateByPrimaryKey(Roomorder record);

    List<PRoomOrderInfo> showRoomOrder(String name); // 查询房间订单情况

    List<PRoomOrderInfo> showRoomOrdernotgo(String name); // 查询房间未出行订单情况

    List<PRoomOrderInfo> showRoomtoreview(String name); // 查询待点评情况
}