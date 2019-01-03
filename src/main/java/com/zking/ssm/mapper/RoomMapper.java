package com.zking.ssm.mapper;

import com.zking.ssm.model.Room;
import com.zking.ssm.vo.PCommentsVo;
import com.zking.ssm.vo.RoomInfoVo;

import java.util.List;

public interface RoomMapper {
    int deleteByPrimaryKey(String id);

    int insert(Room record);

    int insertSelective(Room record);

    Room selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);

    RoomInfoVo list(String id);//根据房间id查询房间详情

    List<PCommentsVo> commList(Integer commId);//查询评论
}