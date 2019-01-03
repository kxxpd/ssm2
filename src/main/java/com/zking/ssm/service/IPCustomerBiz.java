package com.zking.ssm.service;

import com.zking.ssm.model.Customer;
import com.zking.ssm.model.Room;
import com.zking.ssm.vo.PCommentsVo;
import com.zking.ssm.vo.RoomInfoVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IPCustomerBiz {
    int deleteByPrimaryKey(String id);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);

    Customer customerLogin(@Param("customername") String customername, @Param("password") String password);  //登录
}