package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.CustomerMapper;
import com.zking.ssm.mapper.RoomMapper;
import com.zking.ssm.model.Customer;
import com.zking.ssm.model.Room;
import com.zking.ssm.service.IPCustomerBiz;
import com.zking.ssm.service.IPRoomBiz;
import com.zking.ssm.vo.PCommentsVo;
import com.zking.ssm.vo.RoomInfoVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IPCustomerBizImpl implements IPCustomerBiz {

    @Autowired

    private CustomerMapper customerMapper;

    @Override
    public int deleteByPrimaryKey(String id) {
        return customerMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Customer record) {
        return customerMapper.insert(record);
    }

    @Override
    public int insertSelective(Customer record) {
        return customerMapper.insertSelective(record);
    }

    @Override
    public Customer selectByPrimaryKey(String id) {
        return customerMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Customer record) {
        return customerMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Customer record) {
        return customerMapper.updateByPrimaryKey(record);
    }

    @Override
    public Customer customerLogin(@Param("customername") String customername, @Param("password") String password) {
        return customerMapper.customerLogin(customername,password);
    }
}
