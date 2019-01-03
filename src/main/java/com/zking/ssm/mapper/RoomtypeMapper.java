package com.zking.ssm.mapper;

import com.zking.ssm.model.Roomtype;

public interface RoomtypeMapper {
    int deleteByPrimaryKey(String id);

    int insert(Roomtype record);

    int insertSelective(Roomtype record);

    Roomtype selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Roomtype record);

    int updateByPrimaryKey(Roomtype record);
}