package com.zking.ssm.mapper;

import com.zking.ssm.model.Roomimage;

public interface RoomimageMapper {
    int deleteByPrimaryKey(String id);

    int insert(Roomimage record);

    int insertSelective(Roomimage record);

    Roomimage selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Roomimage record);

    int updateByPrimaryKey(Roomimage record);
}