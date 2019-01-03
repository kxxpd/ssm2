package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.RoomMapper;
import com.zking.ssm.model.Room;
import com.zking.ssm.service.IPRoomBiz;
import com.zking.ssm.vo.PCommentsVo;
import com.zking.ssm.vo.RoomInfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IPRoomBizImpl implements IPRoomBiz {

    @Autowired

    private RoomMapper roomMapper;
    @Override
    public int deleteByPrimaryKey(String id) {
        return roomMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Room record) {
        return roomMapper.insert(record);
    }

    @Override
    public int insertSelective(Room record) {
        return roomMapper.insertSelective(record);
    }

    @Override
    public Room selectByPrimaryKey(String id) {
        return roomMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Room record) {
        return roomMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Room record) {
        return roomMapper.updateByPrimaryKey(record);
    }

    @Override
    public RoomInfoVo list(String id) {
        return roomMapper.list(id);
    }

    @Override
    public List<PCommentsVo> commList(Integer commId) {
        return roomMapper.commList(commId);
    }
}
