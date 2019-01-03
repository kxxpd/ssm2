package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.CustomerMapper;
import com.zking.ssm.mapper.RoomorderMapper;
import com.zking.ssm.model.Customer;
import com.zking.ssm.model.Roomorder;
import com.zking.ssm.service.IPCustomerBiz;
import com.zking.ssm.service.IPPersonCenterBiz;
import com.zking.ssm.vo.PRoomOrderInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IPPersonBizImpl implements IPPersonCenterBiz {

    @Autowired

    private RoomorderMapper roomorderMapper;

    @Override
    public int deleteByPrimaryKey(String id) {
        return roomorderMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Roomorder record) {
        return roomorderMapper.insert(record);
    }

    @Override
    public int insertSelective(Roomorder record) {
        return roomorderMapper.insertSelective(record);
    }

    @Override
    public Roomorder selectByPrimaryKey(String id) {
        return roomorderMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Roomorder record) {
        return roomorderMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Roomorder record) {
        return roomorderMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<PRoomOrderInfo> showRoomOrder(String name) {
        return roomorderMapper.showRoomOrder(name);
    }

    @Override
    public List<PRoomOrderInfo> showRoomOrdernotgo(String name) {
        return roomorderMapper.showRoomOrdernotgo(name);
    }

    @Override
    public List<PRoomOrderInfo> showRoomtoreview(String name) {
        return roomorderMapper.showRoomtoreview(name);
    }
}
